<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                xmlns:xs="http://www.w3.org">
    <xsl:template match="/listatickets">
    <html>
        <head>
            <titke>3 XSLT -Ticket Alvaro Garcia Gonzalez</titke>
            <meta charset="UTF-8"/>
        </head>
        <body>
            <header>
                <h1>Informacion de tickets</h1>
                <h2>Listado de tickets</h2>
            </header>    
                <main>
                <xsl:apply-templates select="ticket"/>
                </main>
                <footer>
                    <div>NUMERO DE TICKET:<xsl:value-of select="count(//ticket)"/></div>
                    <div>TOTAL DE TICKET:<xsl:value-of select="sum(//total)"/></div>
                </footer>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ticket">
        <h3>Tickets: <xsl:value-of select="numero"/></h3>
        <table>
        <caption></caption>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
            </tr>
        </thead>
        <tbody>
            <xsl:apply-templates select="producto"/>
        </tbody>
        <tfoot>
            <tr>
                <th>Total</th>
                <th>
                    <xsl:value-of select="total"/>
                </th>
            </tr>
        </tfoot>
        
        </table>
        
    </xsl:template>

    <!-- Mostrar los productos de cada tipo-->
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>