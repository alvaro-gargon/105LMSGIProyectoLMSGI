<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="../../../../unidad5/lib/libreriahtml.xsl"/>
    <xsl:output method="html" indent="yes"/>

    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="pedido/@fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>

    <!-- Plantilla que dado un pedido lo escribe en una tabla -->
    <xsl:template match="pedido">
        <html>
            <head>
                <xsl:call-template name="meta">
                    <xsl:with-param name="titulo" select="Pedidos_Alvaro_Garcia"/>
                </xsl:call-template>
                <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
            </head>
            <body>
                <header>
                    <div>
                        <h1>Pedido IP:<xsl:value-of select="@idPedido"/></h1>
                        <h2>Fecha:<xsl:apply-templates select="@fecha"/></h2>
                        <h3><label for="fabricanteSelect">Fabricante:</label></h3>
                        <option value="Todos">Todos</option>
                        <select id="fabricanteSelect" name="opciones">
                        <xsl:for-each select="tractor/@codigoFabricante">
                            <option value="{.}"><xsl:value-of select="."/></option>
                        </xsl:for-each>
                        </select>
                    </div>
                </header>
                <main>
                    <div class="caja_principal">
                        <div class="encabezado">
                            <img src="images/{tractor/@codigoFabricante}.png" alt="fabricante"/>
                            <h3>Fabricante: <xsl:value-of select="tractor/@codigoFabricante"/>   
                            <xsl:value-of select="document('../fabricantes.xml')
                            /fabricantes/fabricante[@codigo=current()/tractor/@codigoFabricante]/@nombre"/></h3>
                        </div>
                        <table>
                            <thead>
                                <th></th>
                                <th>Referencia</th>
                                <th>Descripcion</th>
                                <th>Fecha Entrega</th>
                                <th>Peso</th>
                                <th>Numero de Serie</th>
                                <th>Km Maximos</th>
                                <th>Cantidad</th>
                            </thead>
                            <tbody>
                                <xsl:for-each select="tractor/componente">
                                    <tr>
                                        <td><img src="images/{@referencia}.png" alt=""/></td>
                                        <td><xsl:value-of select="@referencia"/></td>
                                        <td><xsl:value-of select="document('../componentes.xml')
                                        /componentes/componente[@codigo=current()/@referencia]/@nombre"/></td>
                                        <td><xsl:value-of select="fechaEntrega/@mes"/>-<xsl:value-of select="fechaEntrega/@anio"/></td>
                                        <td><xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></td>
                                        <td><xsl:value-of select="numeroSerie"/></td>
                                        <td class="num"><xsl:value-of select="kmMaximos"/></td>
                                        <td class="num"><xsl:value-of select="cantidad"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>
                </main>
            </body>
        </html>
        
    </xsl:template>

    </xsl:stylesheet>
