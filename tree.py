class tree:
    def __init__(self,data,left=None,right=None):
        self.data = data
        self.left = left
        self.right = right

    def insert(self, dat):
        if self.data > dat:
            if not self.left:
                self.left=tree(dat)
            else:
                self.left.insert(dat)
        else:
            if not self.right:
                self.right=tree(dat)
            else:
                self.right.insert(dat)

    def printTree(self):
        if self.left != None:
            self.left.printTree()
        print(self.data)
        if self.right != None:
            self.right.printTree()
    
    def find(self, p):
        if self.data == p:
            print ("Found",self.data)
            return 
        elif self.data > p:
            if not self.left:
                print ("Not found")
                return
            self.left.find(p)
        else :
            if not self.right:
                print ("Not found")
                return
            self.right.find(p)

b=tree(5)
b.insert(1)
b.insert(4)
b.insert(6)
b.printTree()
b.find(3)
