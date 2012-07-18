<!-- This document preprocesses the values so they can be used instantly by the KnowYourEnemy.xsl without further processing -->
<!-- This keeps the processing and the formatting separate which is a good thing! :) -->

<xsl:stylesheet version="2.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema"
 xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:my="my:my"
 xmlns:civf="http://www.civfanatics.com">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>
 <xsl:strip-space elements="*"/>

 <!-- Numbers attitudes to enable us to convert the "refuses at" elements into "accepts at" -->
 <my:attitudes>
   <a val="0">FURIOUS</a>
   <a val="1">ANNOYED</a>
   <a val="2">CAUTIOUS</a>
   <a val="3">PLEASED</a>
   <a val="4">FRIENDLY</a>
   <a val="5">NEVER</a>
   <a val="6">NONE</a>
   <a val="7">ALWAYS</a>
 </my:attitudes>
 
 <!-- Converts PeaceWeight into readable and understandable values -->
  <my:faction>
   <a val="Bad (0)">0</a>
   <a val="Bad (1)">1</a>
   <a val="Bad (2)">2</a>
   <a val="Bad (3)">3</a>
   <a val="Neutral (4)">4</a>
   <a val="Neutral (5)">5</a>
   <a val="Neutral (6)">6</a>
   <a val="Good (7)">7</a>
   <a val="Good (8)">8</a>
   <a val="Good (9)">9</a>
   <a val="Good (10)">10</a>
 </my:faction>

 <!-- Selects our collections so we can use them in code -->
 <xsl:variable name="vAttitudes" select="document('')/*/my:attitudes/*"/>
 <xsl:variable name="vFactions" select="document('')/*/my:faction/*"/>

 <!-- Default "copy" method which copies any element into the output so we dont lose it -->
 <xsl:template match="node()|@*"><xsl:copy><xsl:apply-templates select="node()|@*"/></xsl:copy> </xsl:template>

 <!-- All of the following converts values into more usable forms -->
  <xsl:template match="LeaderHeadInfo/Type">
  <xsl:element  name="Type">
   <xsl:value-of select="civf:book-capitalise(substring-after(current(), 'LEADER_'))"/>
  </xsl:element>
 </xsl:template>
 
 <xsl:template match="LeaderHeadInfo/DemandTributeAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="DemandTributeAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/NoGiveHelpAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="NoGiveHelpAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal])"/>
  </xsl:element>
 </xsl:template>
 
 <xsl:template match="LeaderHeadInfo/TechRefuseAttitudeThreshold">
  <xsl:element  name="TechRefuseAttitudeThreshold">
   <xsl:value-of select="civf:raise-attitude(current())"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/StrategicBonusRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="StrategicBonusRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/HappinessBonusRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="HappinessBonusRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/HealthBonusRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="HealthBonusRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/MapRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="MapRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/DeclareWarRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="DeclareWarRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
    <xsl:template match="LeaderHeadInfo/DeclareWarThemRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="DeclareWarThemRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/StopTradingRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="StopTradingRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/StopTradingThemRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="StopTradingThemRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/AdoptCivicRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="AdoptCivicRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/ConvertReligionRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="ConvertReligionRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/OpenBordersRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="OpenBordersRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/DefensivePactRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="DefensivePactRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
    <xsl:template match="LeaderHeadInfo/PermanentAllianceRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="PermanentAllianceRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/VassalRefuseAttitudeThreshold">
  <xsl:variable name="vVal" select= "$vAttitudes[. = substring-after(current(), '_')]/@val"/>
  <xsl:element  name="VassalRefuseAttitudeThreshold">
   <xsl:value-of select="civf:book-capitalise($vAttitudes[@val = $vVal+1])"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/iBasePeaceWeight">
  <xsl:variable name="vVal" select= "$vFactions[. = current()]/@val"/>
  <xsl:element  name="iBasePeaceWeight">
   <xsl:value-of select="civf:book-capitalise($vVal)"/>
  </xsl:element>
 </xsl:template>
 
  <xsl:template match="LeaderHeadInfo/iWonderConstructRand">
   <xsl:element  name="iWonderConstructRand">
   <xsl:value-of select="round(. div 5)"/>
  </xsl:element>
 </xsl:template>
 
 <xsl:template match="LeaderHeadInfo/iBuildUnitProb">
   <xsl:element  name="iBuildUnitProb">
   <xsl:value-of select="round(. div 4)"/>
  </xsl:element>
 </xsl:template>
 
    <xsl:template match="LeaderHeadInfo/iRazeCityProb">
   <xsl:element  name="iRazeCityProb">
   <xsl:value-of select="round(. div 7.5)"/>
  </xsl:element>
 </xsl:template>
 
   <xsl:template match="LeaderHeadInfo/iEspionageWeight">
   <xsl:element  name="iEspionageWeight">
   <xsl:value-of select="round(. div 15)"/>
  </xsl:element>
 </xsl:template>
 
 <!-- Book captialises values so they look better in the final form -->
 <xsl:function name="civf:book-capitalise" 
 xmlns:civf="http://www.civfanatics.com"
 as="xs:string?">
  <xsl:param name="arg" as="xs:string?"/> 
  <xsl:sequence select=" 
   concat(upper-case(substring($arg,1,1)),
             lower-case(substring($arg,2)))
 "/>
 </xsl:function>
 
 
  <xsl:function name="civf:raise-attitude" 
 xmlns:civf="http://www.civfanatics.com"
 as="xs:string?">
  <xsl:param name="arg" as="xs:string?"/> 
   <xsl:choose>
        <xsl:when test="contains($arg, '_')">
			<xsl:variable name="vVal" select= "$vAttitudes[. = substring-after($arg, '_')]/@val"/>
            <xsl:sequence select="civf:book-capitalise($vAttitudes[@val = $vVal+1]) "/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name="vVal" select= "$vAttitudes[. = $arg]/@val"/>
            <xsl:sequence select="civf:book-capitalise($vAttitudes[@val = $vVal+1]) "/>
        </xsl:otherwise>
    </xsl:choose>
 </xsl:function>

</xsl:stylesheet>