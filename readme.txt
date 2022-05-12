Rishabh Manne
CSE 240 Selgrad
Assignment 1

Script 1: For this script, I basically used the 'echo' keyword to print out to the terminal, a welcome message for the user.
          I take in the command line argument with the '$1', which I then place in my echo statement, therefore, it will print whatever
          name is given. This code simply prints a hello statement back to the terminal with the specified user name.

Script 2: For this script, I made use of the 'echo' keyword once again and I printed a header template enclosed in double quotes. This time there was an additional
          input, which was the description. For that I used '$2', which implies that it is the second command line argument. I then placed the two placeholder variables
          in the template and then closed the quotation marks and ended it with a semicolon. This code should print a header for a person with a description.

Script 3: For this script, I made use of the conditional statements that bash scripting has to offer. If the input was a -c, then I printed a body template for a
          potential .c file through the 'echo' command. I did this same functionality again for if there was  a -cpp input and printed its respective template. If there
          was no input then I printed an usage error. This code should print either a .c or .cpp body to the terminal.

Script 4: For this script, I had to keep in mind the many potential error cases that could result in terms of the command line inputs. I had to consider the fact that
          if the -c or -cpp file is not given as the first input. In this case, an usage error should be printed. Furthermore, if either the name and/or description is
          not given, then an usage error is printed. Finally for the last input, if a -o is given but not an actual output file, then an usage error should be given and
          the code should terminate. Firstly, I verified if there was an output file in the first place and if that is true, then I set a boolean variable to true,
          created a file and printed a creation message. For every subsequent task(header and body) I verified if the boolean var was true, and if it was then I would
          write the header and body into the file, otherwise, I would write it onto the terminal. This code should print info into the terminal or a separate file
          depending on the inputs.

Script 5: For this script, I had to loop through the current directory with the use of *c, and if the current file that is being examined is ending in either on of the 
          endings that was specified in the document, then I would open that file with the use of the "cat" command. Until the entire directory is examined, then I would
          end the loop with the 'done' keyword. If I were to call this method, then all the files in the current directory will be opened in the terminal.  
