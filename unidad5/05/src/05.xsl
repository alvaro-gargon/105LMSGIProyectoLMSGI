<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/root" mode="#all">
        <xsl:copy>
        <xsl:for-each select="row">
            <xsl:copy>
                <!--  
                <Anyo><xsl:value-of select="@Anyo"/></Anyo>
                <Concepto><xsl:value-of select="@Concepto"/></Concepto>
                <Usuarios_registrados><xsl:value-of select="@Usuarios_registrados"/></Usuarios_registrados>
                -->
                <xsl:for-each select="@*">
                    <xsl:element name="{name()}"> 
                        <xsl:value-of select="."/> <!-- El punto es para el valor actual -->
                    </xsl:element>
                </xsl:for-each>
            </xsl:copy>
        </xsl:for-each>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    

</xsl:stylesheet>