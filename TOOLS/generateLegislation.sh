#!/bin/sh
Path=/home/terah/StudentGovernment/TEMP
link="Legislation"
Path2=/home/terah/StudentGovernment/textFiles/
#ls /home/terah/StudentGovernment/SGdec15 > /home/terah/StudentGovernment/TEMP/fileNames.txt 
ls /home/terah/StudentGovernment/textFiles > /home/terah/StudentGovernment/TEMP/textFiles.txt

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
   title=$(grep -E [0-9]-  $Path2$textFL)
   readON=$(grep "Read" $Path2$textFL)
   passed=$(grep "Passed" $Path2$textFL)
   author=$(grep "Author"  $Path2$textFL)
   sponsor=$( grep "Sponsors" $Path2$textFL)
   summary=$(echo $(grep -A 3 "resolution" $Path2$textFL) | sed -n '1,/^[A-Z]/p')
   echo "generating site code for "$fileNM " and " $textFL


echo  "<tr>
<td style=\"vertical-align: top;width: 184px\"><a href=\"/$link/$filenm\">$title</a><br>
   </td>
      <td style=\"vertical-align: top;width: 123px\">$readON <br />
                         $passed</br>
   </td>
   <td style=\"vertical-align: top;width: 547px\">$summary
   </td>		   
        <td style=\"vertical-align: top;width: 180px\">$author<br>
	                   $sponsor
</td>
</tr>" >> $Path/Legislation.html
done


echo "</tboby>
      </table>
      </body>
      </html>" >> $Path/Legislation.html

