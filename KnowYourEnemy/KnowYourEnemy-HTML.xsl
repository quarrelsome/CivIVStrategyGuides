<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
 
  <xsl:template match="/Civ4LeaderHeadInfos/LeaderHeadInfos">
    <html>
		<head> <title>TODO</title> </head>
		<body>
			<h1>Leaders</h1>
			<xsl:apply-templates select="LeaderHeadInfo"/>
		</body>
    </html>
  </xsl:template>
 
  <xsl:template match="LeaderHeadInfo">	
    <h2><xsl:value-of select="Type"/></h2>
	
	<h3>Attitude Thresholds</h3>
	<table border="1">
		<tr><td>Will no longer open borders</td><td><xsl:value-of select="OpenBordersRefuseAttitudeThreshold"/></td></tr>
		<tr><td>Will no longer trade techs</td><td><xsl:value-of select="TechRefuseAttitudeThreshold"/></td></tr>
		<tr><td>Will no longer trade extra happy resources</td><td><xsl:value-of select="HappinessBonusRefuseAttitudeThreshold"/></td></tr>
		<tr><td>Will no longer trade extra health resources</td><td><xsl:value-of select="HealthBonusRefuseAttitudeThreshold"/></td></tr>
		<tr><td>Will no longer trade extra strategic resources</td><td><xsl:value-of select="StrategicBonusRefuseAttitudeThreshold"/></td></tr>
		<tr><td>Will no longer trade map</td><td><xsl:value-of select="MapRefuseAttitudeThreshold"/></td></tr>
		<tr><td>Will no longer plot war against human player</td><td><xsl:value-of select="DeclareWarThemRefuseAttitudeThreshold"/></td></tr>
	</table>
  </xsl:template>
 
</xsl:stylesheet>