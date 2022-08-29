# Just one space
s/ */ /
# Spaces at the begining
s/^ *//

# Just one =
s/ *= */ = /	
# Two equals overwrites the previous rule
s/ *= *= */ == /			

# Binary math operators +-*/
s/ *+ */ + /
s/ *- */ - /
s/ *\* */ * /
s/ *\/ */ \/ /
