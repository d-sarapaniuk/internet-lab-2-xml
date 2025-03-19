<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Customs Declarations</title>
            <link rel="stylesheet" type="text/css" href="customs.css"/>
        </head>
        <body>
            <table border="1" cellpadding="5" cellspacing="0">
                <tbody>
                    <xsl:for-each select="CustomsDeclarations/Entry">
                        <tr>
                            <td>
                                <xsl:value-of select="Citizen/LastName"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="Citizen/FirstName"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="Citizen/Patronymic"/>
                            </td>
                            <td><xsl:value-of select="Citizen/NativeCountry"/></td>
                            <td><xsl:value-of select="VisitCountry"/></td>
                            <td><xsl:value-of select="AmountOfMoney"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
