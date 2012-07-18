..\Saxon\transform.exe -s:source.xml -xsl:PreProcess.xsl -o:processedsource.xml
..\Saxon\transform.exe -s:processedsource.xml -xsl:KnowYourEnemy-HTML.xsl -o:output-HTML.htm
pause