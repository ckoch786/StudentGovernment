
LastName="R"
FirstName="M"


wget -O - "http://www.utoledo.edu/eDirectory/StudentDirectoryResults.asp?searchType=stumain&hidPage=0&txtLastName=$LastName&txtFirstName=$FirstName&txtDept=&btnSubmit=Submit" >> /home/terah/Downloads/SGdec15/SearchResults.html

echo "\n\n\n\nw3m start-----------------------------------------------------------" >> /home/terah/Downloads/SGdec15/SearchResults

w3m "http://www.utoledo.edu/eDirectory/StudentDirectoryResults.asp?searchType=stumain&hidPage=0&txtLastName=$LastName&txtFirstName=$FirstName&txtDept=&btnSubmit=Submit" >> /home/terah/Downloads/SGdec15/SearchResults



