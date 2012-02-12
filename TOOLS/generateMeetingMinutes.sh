#
 # generateMeetingMinutes.sh
 #* Copyright (C) 2011-2012 Cory Koch.
 #* 
 #* This file is part of StudentGovernmentTools.
 #* 
 #* StudentGovernmentTools is free software: you can redistribute it and/or modify it
 #* under the terms of the GNU General Public License as published by the
 #* Free Software Foundation, either version 3 of the License, or
 #* (at your option) any later version.
 #* 
 #* StudentGovernmentTools is distributed in the hope that it will be useful, but
 #* WITHOUT ANY WARRANTY; without even the implied warranty of
 #* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 #* See the GNU General Public License for more details.
 #* 
 #* You should have received a copy of the GNU General Public License along
 #* with this program.  If not, see <http://www.gnu.org/licenses/>.
 #*/


# Script to auto generate HTML for meeting minutes.
#TODO make paths pass as args from cmd line
pathTEMP=/home/terah/StudentGovernment/TEMPFILES/
#pathPDF=/home/terah/StudentGovernment/TEMPFILES/meetingminPDF
pathTXT=/home/terah/StudentGovernment/TEMPFILES/meetingMinTXT/

cd $pathTEMP
ls $pathTXT > meetingMinLink

cat meetingMinLink | while read line; do
   

# grep -e "[0-9]\+[0-9]\+/\+[0-9]\+/\+[0-9]\+[0-9]\+" *
#sed -n -r -f sedscr *  
# /(January|February|March|April|May|June|July|April|September|October|November|December)\s[0-9]{2}[a-z]{2}+,\s{1}[0-9]{4}$/p

#if echo $name | grep -Eq '[ab]{2,3}'


   if echo $line | grep -e "enat*" ||echo $line | grep -e "Sen*"
   then  
         date=$(sed -n -r '/(January|February|March|April|May|June|July|April|September|October|November|December)\s[0-9]{2}[a-z]{2}+,\s{1}[0-9]{4}$/p' $pathTXT$line)
	 echo "Generating code for Senate" $line " and " $date
         echo " <tr>
         <td><a href=\"$line\">$date</a></td>              
         </tr>
         " >> SenateMeetingTEMP.html
 
 elif echo $line | grep -e "cab*"   #TODO change expression
  then 
        echo "Generating code for Cabinet" $line " and " $date
        echo " <tr>
         <td><a href=\"$line\">$date</a></td>              
         </tr>
         " >> CabinetMeetingTEMP.html
  
  elif  echo $line | grep "eer*" || echo $line | grep "Stee*"
  then
        date=$(grep -e "[0-9]\+[0-9]\+/[0-9]\+/[0-9]\+[0-9]\+" $pathTXT$line) 
        echo "Generating code for Steering" $line " and " $date
        echo " <tr>
        <td><a href=\"$line\">$date</a></td>              
        </tr>
        " >> SteeringMeetingTEMP.html
 
  else
       echo "There has been an error!" $line " and " $date
   fi
   done

echo "Done listing changes...."
ls $pathTEMP

#TODO change all .txt extensions to .pdf
   

