#!/bin/sh
title=$(grep -E [0-9]-  ablutionreolution4002.txt)
filenm="testing"
readON=$(grep "Read"  ablutionreolution4002.txt)
passed=$(grep "Passed" ablutionreolution4002.txt)
summary=$(echo $(grep -A 3 "resolution" ablutionreolution4002.txt) | sed -n '1,/^[A-Z]/p')
author=$(grep "Author"  ablutionreolution4002.txt)
sponsor=$( grep "Sponsors" ablutionreolution4002.txt)



link="Legislation"
#filenm="Hello World!"
#summary="This is a program to make my life easier"
#author="Cory Koch"
#title="Hello World!"
#readON="12/16/2011"
#passed="12/16/2011"

echo  "<tr>
<td valign=\"top\"><a href=\"/$link/$filenm\">$title</a><br>
   </td>
      <td valign=\"top\">$readON <br />
                         $passed</br>
   </td>
   <td valign=\"top\">$summary
   </td>		   
        <td valign=\"top\">$author<br>
	                   $sponsor
</td>
</tr>" >> /home/terah/Downloads/SGdec15/Legislation.html

