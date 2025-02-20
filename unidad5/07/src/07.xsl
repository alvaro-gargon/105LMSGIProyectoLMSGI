<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/*" mode="#all">
       <!-- <xls:element name='img'>
       <xsl:attribute name="src" select="{concat('images/',valor,'.gif')}"
        -->
       <!-- Usar <img src"concat('images/',valor,'.gif')" para las imagenes -->
    </xsl:template>

    

</xsl:stylesheet>