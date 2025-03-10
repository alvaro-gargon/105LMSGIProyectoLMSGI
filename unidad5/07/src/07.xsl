<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" expand-text="yes" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/prediccion" mode="#all">
        <!--  Autor.- Alvaro Garcia  -->
        <!--  Fecha.- Martes 25 de febrero de 2025  -->
        <!--  Descripción.-Predicciíon  -->
        <html>
            <head>
                <title>7 XSLT -  Alvaro Garcia </title>
                <meta charset="UTF-8"/>
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Predicción por municipios</h1>
                </header>
                <main>
                    <table>
                        <caption>
                            EL TIEMPO.
                            <xsl:value-of select="upper-case(municipio/nombre),' '"/>
                            (
                            <xsl:value-of select="upper-case(municipio/provincia)"/>
                            )
                        </caption>
                        <thead>
                            <tr>
                                <xsl:call-template name="encabezado"/>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="dia">
                                <tr>
                                    <!--  substring-after para recuperar solo el día  -->
                                    <td>
                                        <xsl:value-of select="substring(@fecha,9,2)"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="concat(prob_precipitacion,'%')"/>
                                    </td>
                                    <td>
                                        <img src="concat('images/',{estado_cielo},'.gif')" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                        <!--  Manera menos eficiente
                                        <xsl:choose>
                                            <xsl:when test="estado_cielo= 11">
                                                <img src="../target/images/11.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                            </xsl:when>
                                            <xsl:when test="estado_cielo= 12">
                                                <img src="../target/images/12.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                            </xsl:when>
                                            <xsl:when test="estado_cielo = 13">
                                                <img src="../target/images/13.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                            </xsl:when>
                                            <xsl:when test="estado_cielo = 14">
                                                <img src="../target/images/14.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                            </xsl:when>
                                            <xsl:when test="estado_cielo = 15">
                                                <img src="../target/images/15.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                            </xsl:when>
                                            <xsl:when test="estado_cielo = 16">
                                                <img src="../target/images/16.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                                            </xsl:when>
                                        </xsl:choose>
                                        -->
                                    </td>
                                    <td>
                                        <span class="temp_minima">
                                            <xsl:value-of select="temperatura/minima"/>
                                        </span>
                                        <xsl:text>/</xsl:text>
                                        <span class="temp_maxima">
                                            <xsl:value-of select="temperatura/maxima"/>
                                        </span>
                                    </td>
                                    <td>
                                        <img src="concat('images/',{viento/direccion},'.gif')" alt="{viento/direccion}" title="{viento/direccion}"/>
                                        <xsl:text>  </xsl:text><!--Es para poner un espacio -->
                                        <!--  
                                        <xsl:choose>
                                            <xsl:when test="viento/direccion= 'Nordeste'">
                                                <img src="../target/images/Nordeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion = 'Norte'">
                                                <img src="../target/images/Norte.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion = 'Oeste'">
                                                <img src="../target/images/Oeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion = 'Sudeste'">
                                                <img src="../target/images/Sudeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion ='Sudoeste'">
                                                <img src="../target/images/Sudoeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion ='Calma'">
                                                <img src="../target/images/Calma.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion ='Sur'">
                                                <img src="../target/images/Sur.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                            <xsl:when test="viento/direccion ='Este'">
                                                <img src="../target/images/Este.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                                            </xsl:when>
                                        </xsl:choose>
                                        -->
                                        <xsl:value-of select="viento/velocidad"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </main>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="encabezado">
        <th> Dia</th>
        <th>Prob. precip.</th>
        <th>Estado del cielo</th>
        <th>Temperatura (ºC)</th>
        <th>Viento (Km/h)</th>
    </xsl:template>
</xsl:stylesheet>