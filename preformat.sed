# Just one space
#s/ */ /
# Spaces at the begining
s/^ *//

# Just one =
s/ *= */ = /	
# Two equals overwrites the previous rule
s/ *= = */ == /			

# ,
s/, */, /g

# Binary math operators +-*/
s/ *+ */ + /g
s/ *- */ - /g
s/ *- *- */-- /
s/ *\* */ * /g
# Problem with paths and #! at the begining of script
#s/ *\/ */ \/ /g
#s/ *! *\/ */\//

# Negative number
s/ *- \([0-9]\) */ -\1 /g
