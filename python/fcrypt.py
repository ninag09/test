#!/usr/bin/python
import os
import sys
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.asymmetric import padding

# Encryption function
def encryption():
    try:
        fd = open(sys.argv[4], 'rb')
        readfile = fd.read()
        fd.close()
        # Generate hash of the file
        digest = hashes.Hash(hashes.SHA256(), backend=default_backend())
        digest.update(readfile)
        hashedMsg = digest.finalize()
        # Sign the hashed file with own private key
        with open(sys.argv[3], 'rb') as key_file:
            private_key = serialization.load_der_private_key(
                key_file.read(),
                password=None,
                backend=default_backend())
        signer = private_key.signer(
                padding.PSS(mgf=padding.MGF1(hashes.SHA256()),
                salt_length=padding.PSS.MAX_LENGTH),
                hashes.SHA256())
        signer.update(hashedMsg)
        signedMsg = signer.finalize()
        msg = readfile+'aabb'+signedMsg
        # Encrypt file with AES with GCM mode
        key = os.urandom(32)
        iv  = os.urandom(16)
        encryptor = Cipher(algorithms.AES(key), modes.GCM(iv), 
        backend=default_backend()).encryptor()
        ciphertext = encryptor.update(msg) + encryptor.finalize()
        # Encrypt the AES symmetric key with receiver's public key
        with open(sys.argv[2], 'rb') as key_file:
            public_key = serialization.load_der_public_key(
                key_file.read(),
                backend=default_backend())

        cipherkey = public_key.encrypt(key,
                        padding.OAEP(mgf=padding.MGF1(algorithm=hashes.SHA1()),
                        algorithm=hashes.SHA1(),label=None))
        # Write the encrypted data and symmetric key into ciphertext file
        cipherText = ciphertext + 'fcryptt' + encryptor.tag + 'fcryptt' + cipherkey + iv
        fd = open(sys.argv[5], 'w')
        fd.write(cipherText)
        fd.close()
    except Exception as e:
        print "Encryption Error"
        print e.message
        sys.exit(1)

# Decryption Function
def decryption():
    try:
        fd = open(sys.argv[4], 'rb')
        readfile = fd.read().split('fcryptt')
        fd.close()
        # Read the encrypted file
        tag = readfile[1]
        keyIV = readfile[2]
        msg = readfile[0]
        iv = keyIV[-16:]
        # Decrypt the symmetric key using own private key
        with open(sys.argv[2], 'rb') as key_file:
            private_key = serialization.load_der_private_key(
                key_file.read(),password=None,
                backend=default_backend())
        key = private_key.decrypt(keyIV[:-16],
                padding.OAEP(mgf=padding.MGF1(algorithm=hashes.SHA1()),
                algorithm=hashes.SHA1(),label=None))
        # Decrypt the encryted file 
        decryptor = Cipher(algorithms.AES(key), modes.GCM(iv,tag), 
        backend=default_backend()).decryptor()
        decodedmsg = decryptor.update(msg) + decryptor.finalize()
        decodedMsg = decodedmsg.split('aabb')
        signedHash = decodedMsg[1]
        # Generate hash for the decrypted message 
        digest = hashes.Hash(hashes.SHA256(), backend=default_backend())
        digest.update(decodedMsg[0])
        decodedMsgHash = digest.finalize()
        # Verify the integrity by comparing with received hash message
        with open(sys.argv[3], 'rb') as key_file:
            public_key = serialization.load_der_public_key(
                    key_file.read(),
                    backend=default_backend())
        verifier = public_key.verifier(signedHash,
                    padding.PSS(mgf=padding.MGF1(hashes.SHA256()),
                    salt_length=padding.PSS.MAX_LENGTH),hashes.SHA256())
        verifier.update(decodedMsgHash)
        verifier.verify()
        # Write the decrypted data to output file
        fd = open(sys.argv[5], 'w')
        fd.write(decodedMsg[0])
        fd.close()
    except Exception as e:
        print "Decryption Error or File has been modified"
        sys.exit(1)

# Main function
def main():
    if len(sys.argv) != 6:
        print "Invalid Arguments!! Usage is:"
        print "python fcrypt.py -e destination_public_key_filename sender_private_key_filename input_plaintext_file ciphertext_file"
        print "python fcrypt.py -d destination_private_key_filename sender_public_key_filename ciphertext_file output_plaintext_file"
        sys.exit(1)
    if sys.argv[1] == '-e':
        encryption()
    elif sys.argv[1] == '-d':
        decryption()
    else:
        print "Invalid Arguments"

if __name__ == "__main__":
    main()
