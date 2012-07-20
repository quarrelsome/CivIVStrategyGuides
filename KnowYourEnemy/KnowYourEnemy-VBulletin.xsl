<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="text" indent="yes" encoding="UTF-8"/>
 
  <xsl:template match="/Civ4LeaderHeadInfos/LeaderHeadInfos">
	<xsl:apply-templates select="LeaderHeadInfo"/>
  </xsl:template>
 
  <xsl:template match="LeaderHeadInfo">

	[CENTER]
    [SIZE="3"][B]<xsl:value-of select="Type"/>[/B][/SIZE]
	
    IMAGE TODO
    [SIZE="3"]TECHS - TODO[/SIZE]

    [B]TRAITS - TODO[/B]
	[B]UU / UB - TODO[/B]
	
	[B]Favorite Civic[/B] - <xsl:value-of select="FavoriteCivic"/>

	([B]WFYABTA[/B]) - After [COLOR="Blue"][B]<xsl:value-of select="iNoTechTradeThreshold"/>[/B][/COLOR] Techs
	Will trade tech to human when [B][COLOR="Blue"]<xsl:value-of select="iTechTradeKnownPercent"/>%[/COLOR][/B] of the AI also know the tech

	Builds Wonders [COLOR="Sienna"][B]<xsl:value-of select="iWonderConstructRand"/>/10[/B][/COLOR] 
	Spams Units [COLOR="sienna"][B]<xsl:value-of select="iBuildUnitProb"/>/10[/B][/COLOR] 
	Razes Cities [COLOR="sienna"][B]<xsl:value-of select="iRazeCityProb"/>/10[/B][/COLOR] 
	Espionage Spending [COLOR="sienna"][B]<xsl:value-of select="iEspionageWeight"/>/10[/B][/COLOR]

	Flavor [COLOR="Sienna"][B]TODO[/B][/COLOR]
	Faction (Peace Weight) [COLOR="sienna"][B]<xsl:value-of select="iBasePeaceWeight"/>[/B][/COLOR]
	Base Attitude towards Human Player [COLOR="sienna"][B]<xsl:value-of select="iBaseAttitude"/>[/B][/COLOR]
	
	[/CENTER]
	
	[SIZE="3"][B] Possible Diplo Bonuses[/B][/SIZE]
		Shared Civics: Up to [COLOR="blue"]+<xsl:value-of select="iFavoriteCivicAttitudeChangeLimit"/>[/COLOR]
		Shared Religion: Up to [COLOR="blue"]+<xsl:value-of select="iSameReligionAttitudeChangeLimit"/>[/COLOR] (additional +1 if <xsl:value-of select="Type"/> also owns the holy city)
		Shared War: Up to [COLOR="blue"]+<xsl:value-of select="iShareWarAttitudeChangeLimit"/>[/COLOR] (additional +1 while sharing the war)
		Tech trades required to receive +1 "shared your technological discoveries with us" - [COLOR="blue"]<xsl:value-of select="MemoryAttitudePercents/CivfMemoryTradedTechToUs"/>[/COLOR]
	
	[SIZE="3"][B] Attitude Thresholds[/B][/SIZE]
		Will open borders: [COLOR="blue"]<xsl:value-of select="OpenBordersRefuseAttitudeThreshold"/>[/COLOR]
		Will trade techs: [COLOR="blue"]<xsl:value-of select="TechRefuseAttitudeThreshold"/>[/COLOR]
		Will trade extra happy resources: [COLOR="blue"]<xsl:value-of select="HappinessBonusRefuseAttitudeThreshold"/>[/COLOR]
		Will trade extra health resources: [COLOR="blue"]<xsl:value-of select="HealthBonusRefuseAttitudeThreshold"/>[/COLOR]
		Will trade extra strategic resources: [COLOR="blue"]<xsl:value-of select="StrategicBonusRefuseAttitudeThreshold"/>[/COLOR]
		Will trade map: [COLOR="blue"]<xsl:value-of select="MapRefuseAttitudeThreshold"/>[/COLOR]
		Will refuse to attack or plot war against civ/player: [COLOR="blue"]<xsl:value-of select="DeclareWarThemRefuseAttitudeThreshold"/>[/COLOR]
		Can be bribed to war against AI: [COLOR="blue"]<xsl:value-of select="DeclareWarRefuseAttitudeThreshold"/>[/COLOR]
		Will sign trade embargo: [COLOR="blue"]<xsl:value-of select="StopTradingRefuseAttitudeThreshold"/>[/COLOR] unless he is [COLOR="blue"]<xsl:value-of select="StopTradingThemRefuseAttitudeThreshold"/>[/COLOR] or higher with target
		Will adopt religion: [COLOR="blue"]<xsl:value-of select="ConvertReligionRefuseAttitudeThreshold"/>[/COLOR]
		Will adopt civic: [COLOR="blue"]<xsl:value-of select="AdoptCivicRefuseAttitudeThreshold"/>[/COLOR]
		Will form defensive pact: [COLOR="blue"]<xsl:value-of select="DefensivePactRefuseAttitudeThreshold"/>[/COLOR]
		Will form permanent alliance: [COLOR="blue"]<xsl:value-of select="PermanentAllianceRefuseAttitudeThreshold"/>[/COLOR]
		May peacevassal: [COLOR="blue"]<xsl:value-of select="VassalRefuseAttitudeThreshold"/>[/COLOR]
		
		Favored unit type: <xsl:value-of select="UnitAIWeightModifiers/CivfFavouriteUnit"/>

		Favorite Tile Improvement: <xsl:value-of select="ImprovementWeightModifiers/CivfFavouriteImprovement"/>
  </xsl:template>
 
</xsl:stylesheet>