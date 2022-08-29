# Spaces at the begining
s/^ *//
# Just one =
s/ *= */ = /	
# Two equals
s/ *= *= */ == /			

# Binary math operators +-*/
s/ *+ */ + /
s/ *- */ - /
s/ *\* */ * /
s/ *\/ */ \/ /
