for f in *; do     # a loop through current directory

	if [[ "$f" == *.h ]] || [[ "$f" == *.hpp ]] || [[ "$f" == *.c ]] || [[ "$f" == *.cpp ]] || [[ "$f" == *.cc ]]
	then

	cat $f;            # if specified file types are found, then they are opened	
                           # and presented in the terminal window
	fi	

done

		  # ending the loop
