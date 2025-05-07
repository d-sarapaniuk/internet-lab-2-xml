<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html>
    <head>
      <title>Customs Declarations</title>
      <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
      <h1>Customs Declarations</h1>
      <xsl:apply-templates select="CustomsDeclarations/Entry"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="Entry">
  <div class="entry">
    <div class="name">
      <xsl:value-of select="Citizen/FirstName"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="Citizen/Patronymic"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="Citizen/LastName"/>
    </div>
    
    <div class="details">
      <p>
        <strong>Native Country:</strong> <xsl:value-of select="Citizen/NativeCountry"/>
      </p>
      <p>
        <strong>Visiting:</strong> <xsl:value-of select="VisitCountry"/>
      </p>
      <p>
        <strong>Amount of Money:</strong> <xsl:value-of select="AmountOfMoney"/>
      </p>
      
      <xsl:if test="SpecialLuggage">
        <div class="special-luggage">
          <h3>Special Luggage Items:</h3>
          <ul>
            <xsl:for-each select="SpecialLuggage/Item">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </div>
      </xsl:if>
    </div>
  </div>
</xsl:template>
</xsl:stylesheet>