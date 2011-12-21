#!/bin/sh
Path=/home/terah/StudentGovernment/TEMPFILES
link="Legislation"
Path2=/home/terah/StudentGovernment/TEMPFILES/textFiles/
#ls /home/terah/StudentGovernment/SGdec15 > /home/terah/StudentGovernment/TEMP/fileNames.txt 
ls /home/terah/StudentGovernment/TEMPFILES/textFiles > /home/terah/StudentGovernment/TEMPFILES/textFiles.txt

#FOR TESTING PURPOSES
echo "
<html>
<head>
        <title>Legislation 2010</title>
	
	<script type="text/javascript" src="/home/terah/StudentGovernment/sorttable.js"></script>
	<script type="text/javascript">
	<!--
	SrtTBL();
	//--></script>
	<style type ="text/css">
	/* Sortable tables */
	table.sortable thead {
	        background-color:#eee;
		    color:#666666;
		        font-weight: bold;
			    cursor: default;
			        
	}
	
	
	td{
	    height:50px;
	    vertical-align:top;
	}
	
	</style>
	
	
	</head>
	<body>
	<table  class=\"sortable\" id=\"customers\" border=\"0\" cellpadding=\"2\" cellspacing=\"4\">
	<thead>
	<tr>
	<td style=\"vertical-align: top\">Resolutions and Amendments <br>
	</td>
	<td style=\"vertical-align: top\">Dates of Legislation<br>
	</td>
	<td style=\"vertical-align: top;width: 547px\">Snypopsis<br>
	</td>
	<td style=\"vertical-align: top;width: 180px\"><span style=\"font-weight: bold\"></span>Sponsors</td>
	</tr>
	</thead>
	<tboby>
	
	">>$Path/Legislation.html 








#cat $Path/fileNames.txt | while read fileNM; do   
cat $Path/textFiles.txt | while read textFL; do
   
   filenm=$textFL
   title=$(sed -n '/[0-9][0-9][0-9][0-9]-[A-Z]-[0-9][0-9][0-9][0-9][0-9]/p' $Path2$textFL)
   readON=$(sed -n '/Read/p' $Path2$textFL)
   passed=$(sed -n '/Passed/p' $Path2$textFL)||$(sed -n '/Emergency/p' $Path2$textFL)   
   author=$(sed -n '/Author/p' $Path2$textFL)
   sponsor=$(sed -n '/Sponsor/p' $Path2$textFL)
  # summary=$(echo $(grep -A 5 "resolution" $Path2$textFL) | sed -n '1,/^[A-Z]/p')
   summary=$(grep -A 3 "An act" $Path2$textFL|| grep -A 3 "Event" $Path2$textFL|| grep -A 3 "A procedural motion" $Path2$textFL|| grep -A 3 "A Bill " $Path2$textFL) 
   echo "generating site code for "$fileNM " and " $textFL


echo  "<tr>
<td style=\"vertical-align: top;width: 184px\"id=\"resAmends\"><a href=\"/$link/$filenm\">$title</a><br>
   </td>
      <td style=\"vertical-align: top;width: 123px\"id=\"datesOfLeg\">$readON <br />
                         $passed</br>
   </td>
   <td style=\"vertical-align: top;width: 547px\"id=\"snypopsis\">$summary
   </td>		   
        <td style=\"vertical-align: top;width: 180px\"id=\"sponsors\">$author<br>
	                   $sponsor
</td>
</tr>" >> $Path/Legislation.html
done


echo "</tboby>
      </table>
      </body>
      </html>" >> $Path/Legislation.html

