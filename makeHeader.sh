# I am printing the header format below through the use of echo and the
# parentheses. Furthermore, I used the command below to print the date in the
# MM/DD/YYYY format as specified in the document


echo "
/*
Author: $1
Date: $(date +%m/%d/%Y)
Description: $2
*/   ";

# The lines start after the quotation marks so that when printed, it will be 
# on the left-hand side of the window
