<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/lfm/topalbums" mode="#all">
    <xsl:element name="topalbums">
        <xsl:attribute name="artista">
            <xsl:value-of select="@artist"/>
        </xsl:attribute>
        <xsl:for-each select="album">
            <xsl:sort select="playcount" data-type="number" order="descending"/>
                <xsl:copy>
            
                    <xsl:element name="name">
                        <xsl:value-of select="name"/>
                    </xsl:element>
                    <xsl:element name="playcount">
                        <xsl:value-of select="playcount"/>
                    </xsl:element>
                    <xsl:element name="url">
                        <xsl:value-of select="url"/>
                    </xsl:element>
                </xsl:copy>
        </xsl:for-each>
    </xsl:element>
        
    </xsl:template>

    

</xsl:stylesheet>