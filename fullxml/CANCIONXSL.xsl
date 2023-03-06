<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="cancion2.css" />
			</head>
			<body>
				<h1>
					<xsl:value-of select="cancion/titulo"/>
				</h1>
				<h2>
					<xsl:value-of select="cancion/autor"/>
				</h2>
				<h3>
					<xsl:value-of select="cancion/genero"/>
				</h3>
				
          <xsl:for-each select="cancion/letras/estrofa"> 
					<div class="estrofa">
							     <xsl:for-each select="verso">
							     	<span>
						          <p class="verso">
     						          <xsl:value-of select="."/>
						          </p>
						          </span>
						      </xsl:for-each>  
					</div>
					
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>




