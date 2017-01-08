<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:functx="http://www.functx.com"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.0">

  <xsl:output method="text" />

  <xsl:template match="/version/mods">
    <xsl:text>| Mod | Version | Description |&#xa;</xsl:text>
    <xsl:text>|-----|:-------:|-------------|&#xa;</xsl:text>
    <xsl:apply-templates select="mod" />
  </xsl:template>

  <xsl:template match="mod">
    <xsl:text>| [</xsl:text>
    <xsl:value-of select="@name" />
    <xsl:text>](</xsl:text>
    <xsl:value-of select="@website" />
    <xsl:text>) | </xsl:text>
    <xsl:value-of select="@version" />
    <xsl:text> | </xsl:text>
    <xsl:value-of select="@description" />
    <xsl:text> |&#xa;</xsl:text>
</xsl:template>

</xsl:stylesheet>