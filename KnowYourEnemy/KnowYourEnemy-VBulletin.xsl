<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  
  <xsl:output method="text" indent="yes" encoding="UTF-8"/>
 
  <xsl:template match="/Civ4LeaderHeadInfos/LeaderHeadInfos">
	<xsl:apply-templates select="LeaderHeadInfo"/>
  </xsl:template>
 
  <xsl:template match="LeaderHeadInfo">
	<xsl:param name="LeaderName" select="Type"/>
	
    [SIZE="3"][B]><xsl:value-of select="substring-after($LeaderName, 'LEADER_')"/>[/B][/SIZE]
	[SIZE="3"][B] Attitude Thresholds[/B][/SIZE]
		Will no longer open borders [COLOR="blue"]<xsl:value-of select="OpenBordersRefuseAttitudeThreshold"/>[/COLOR]
		Will no longer trade techs [COLOR="blue"]<xsl:value-of select="TechRefuseAttitudeThreshold"/>[/COLOR]
		Will no longer trade extra happy resources [COLOR="blue"]<xsl:value-of select="HappinessBonusRefuseAttitudeThreshold"/>[/COLOR]
		Will no longer trade extra health resources [COLOR="blue"]<xsl:value-of select="HealthBonusRefuseAttitudeThreshold"/>[/COLOR]
		Will no longer trade extra strategic resources [COLOR="blue"]<xsl:value-of select="StrategicBonusRefuseAttitudeThreshold"/>[/COLOR]
		Will no longer trade map [COLOR="blue"]<xsl:value-of select="MapRefuseAttitudeThreshold"/>[/COLOR]
		Will no longer plot war against human player [COLOR="blue"]<xsl:value-of select="DeclareWarThemRefuseAttitudeThreshold"/>[/COLOR]
  </xsl:template>
 
</xsl:stylesheet>