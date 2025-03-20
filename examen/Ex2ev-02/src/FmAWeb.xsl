<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:include href="../../../unidad5/lib/libreriahtml.xsl"/>
    <xsl:template match="/lfm/topalbums" mode="#all">
        <html>
            <head>
                <xsl:call-template name="meta">
                    <xsl:with-param name="titulo" select="'Sabina : Alvaro Garcia Gonzalez'"/>
                </xsl:call-template>
                <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>last.fm</h1>
                </header>
                <main>
                <h2><xsl:value-of select="@artist"/></h2>
                    <h3><xsl:text>Álbumes</xsl:text></h3>
                    <div id="caja_principal">
                        <xsl:for-each select="album">
                            <div class="caja_album">
                                <img src="{image[@size='large']/text()}" alt="{name/text()}"/>
                                <xsl:if test="not(image[@size='large']/text())">
                                    <img src="images/sin.png" alt="sin_imagen"/>
                                </xsl:if>
                                    <div class="texto">
                                        <p><a href="{url/text()}"><xsl:value-of select="name"/></a></p>
                                        <xsl:for-each select="artist">
                                            <p><xsl:value-of select="name"/></p>
                                        </xsl:for-each>
                                    </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>

    

</xsl:stylesheet>