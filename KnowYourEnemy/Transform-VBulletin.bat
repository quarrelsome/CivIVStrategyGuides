..\Saxon\transform.exe -s:source.xml -xsl:PreProcess.xsl -o:processedsource.xml
..\Saxon\transform.exe -s:processedsource.xml -xsl:KnowYourEnemy-VBulletin.xsl -o:output-VBulletin.txt
pause