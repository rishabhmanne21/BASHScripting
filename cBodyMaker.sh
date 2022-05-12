# if the inputted value is a -c, then a
# -c, body template will be printed with
# echo

if [ "$1" = "-c" ]
then

echo "
#include <stdio.h>                   
#include <stdlib.h>                 
                                    
int main(int argc, char** argv)
{
        //TODO: Code goes here
        return 0;
}
    ";

# closing the quotes

# if the input is a -cpp, then the respective
# body template is printed with echo

elif [ "$1" = "-cpp" ] 
then

echo "
#include<iostream>               
#include <stdlib.h>          
using std::cout; 
using std::cin; 
using std::endl; 
 
int main(int argc, char** argv) 
{ 
        //TODO: Main code 
        return 0; 
} 
     ";

# if nothing is recognized, then an error message is prompted

else

echo "usage: ./cBodyMaker.sh [-c|-cpp]";

fi


