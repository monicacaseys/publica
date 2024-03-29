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
    <xsl:for-each select="cancion/letra/estrofa">
     <xsl:choose>
      <xsl:when test="tipo='estribillo'">
       <p>ESTRIBILLO</p>
       <div class="estribillo">
        <xsl:for-each select="verso">
       <p>
          <xsl:value-of select="."/>
       </p>
         </xsl:for-each>
        </div>
      </xsl:when>
      <xsl:otherwise>
       <p>(estrofa normal)</p>
       <div>
        <xsl:for-each select="verso">
       <p>
          <xsl:value-of select="."/>
       </p>
         </xsl:for-each>
        </div>
      </xsl:otherwise>
     </xsl:choose>
     <xsl:sort select="orden"/>
   <div>
      <xsl:for-each select="verso">
       <p>
          <xsl:value-of select="."/>
       </p>
         </xsl:for-each>
     </div>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>
