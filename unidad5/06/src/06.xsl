<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:template match="/network" >
        <xsl:variable name="newline" select="'&#10;'"/>
        <xsl:variable name="newtab" select="'    '"/>
        <xsl:value-of select="concat(name(current()),':')"/>
        <xsl:for-each select="ethernets">
            <xsl:value-of select="concat($newline,$newtab,name(current()),':')"/>
            
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>