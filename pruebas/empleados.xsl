<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/empleados" mode="#all">
        <html>
            <head>
                <title>Lista de empleados</title>
            </head>
                <body>
                    <h1>Lista de Empleados</h1>
                    <xsl:for-each select="empleado">
                    <xsl:sort select="salario" data-type="number" order="descending"/>
                        <p> <strong>Nombre:</strong><xsl:value-of select="nombre"/>
                            <strong>Salario:</strong><xsl:value-of select="salario"/>
                        </p>
                    </xsl:for-each>
                </body>
        </html>
    </xsl:template>
</xsl:stylesheet>