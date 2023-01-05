import hashlib,sys
from merkly.mtree import MerkleTree # https://github.com/olivmath/merkly

# Take the leaves input (Should be in format ['a', 'b', 'c', 'd'])
inputString = sys.argv[1]
#leavesString = inputString[1:len(inputString)-1]
#leaves = leavesString.split(",")

# Create the Merkle Tree
#mtree = MerkleTree(['a', 'b', 'c', 'd'])
mtree = MerkleTree(inputString)

# show original input
assert mtree.raw_leafs == ['a', 'b', 'c', 'd']

# show leafs 
assert mtree.leafs == []

# Get the root of the tree
assert mtree.root == ""

# Get the proof of a leaf
assert mtree.proof("b") == []