<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">

    <xsl:template name="meta">
        <xsl:param name="titulo"/>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="description" content="Horarios de DAW1"/>
        <meta name="author" content="Alvaro Garcia"/>
        <meta name="Keywords" content="html, css, xslt, xml"/>
        <meta name="generator" content="Horarios de DAW1"/>
        <meta name="refresh" content="1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="robots" content="noindex,follow"/>
        <title><xsl:value-of select="{$titulo}"/></title>
    </xsl:template>

    

</xsl:stylesheet>
