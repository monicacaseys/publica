<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">
  <html>
   <head></head>
   <body>
    <h1>Información de la Canción</h1>
    <h2>
            <xsl:value-of select="cancion/titulo"/>
    </h2>
    <xsl:for-each select="cancion/letras/estrofa">
     <xsl:for-each select="verso">
          <xsl:value-of select="."/>
         </xsl:for-each>
        </xsl:for-each>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>
