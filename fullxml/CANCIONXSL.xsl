<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="cancion2.css" />
			</head>
			<body>
				<h1>
					<xsl:value-of select="ballet/titulo"/>
				</h1>
				<h2>
					<xsl:value-of select="ballet/compositor"/>
				</h2>
				<h2>
					<xsl:value-of select="ballet/autor"/>
				</h2>
				
				<h3>
					<xsl:value-of select="ballet/genero"/>
				</h3>
				
          <xsl:for-each select="ballet/historia/acto"> 
					<div class="acto">
							     <xsl:for-each select="escena">
							     	<span>
						          <p class="escena">
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




