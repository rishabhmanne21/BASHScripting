file_exists=false       # a boolean var to see if an output file arg is there


if [ "$4" = "-o" ] && [ "$5" == "" ] # if only -o is printed an error will be printed to console and script will end, otherwise it will continue
then

echo "usage: ./cCodeMaker.sh [-c|-cpp] [name] [description] -o [out file]";

else

if [ "$5" != "" ] && [ "$1" = "-c" ]
then                                       # if there is a request for output file, it is created and message is written
                                           # into the file(-c)
echo "Created file $5" > $5;
file_exists=true

elif [ "$5" != "" ] && [ "$1" = "-cpp" ]   # if	there is a request for output file, it is created and message is written into the file(-cpp)
then

echo "Created file $5" > $5;
file_exists=true
fi

if [ "$2" = "" ] || [ "$3" = "" ]
then
                                                                              # if name and description are missing, an error is printed
echo "usage: ./cCodeMaker.sh [-c|-cpp] [name] [description] -o [out file]";     

else

if [ $file_exists = true ]
then
(./makeHeader.sh "$2" "$3") >> $5;      # if user requests for output file, we check for a true boolean var then make method call and append to the file
else                                    # otherwise, it is simply written to console
(./makeHeader.sh "$2" "$3");
fi

fi

if [ "$1" = "" ] 
then                      # if file type is not specified then an error will print 

echo "usage: ./cCodeMaker.sh [-c|-cpp] [name] [description] -o [out file]";

else
                                   # otherwise make a call to the BodyMaker script and write into file if the arg is present or into console if there is no arg
if [ $file_exists = true ]
then
(./cBodyMaker.sh $1) >> $5;
else
(./cBodyMaker.sh $1);
fi

fi

fi

if [ $file_exists = true ]         # printing the contents of the output file if it exists
then
cat $5;
fi
