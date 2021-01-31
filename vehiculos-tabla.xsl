<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
			<link href="style-div.css" type="text/css" rel="stylesheet" />
			</head>
			<body>
				<xsl:for-each select="vehiculos/vehiculo">
					<div class="general">
					<div class="contenedor">
						<div class="cont-imagen">
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="foto"/>
								</xsl:attribute>
							</img>
						</div>
						<div class="cont-info">
							<p>Matrícula: <xsl:value-of select="matricula"/></p>
				        	<p>Puertas: <xsl:value-of select="puertas"/></p>
				        	<p>Color: <xsl:value-of select="color"/></p>
				        	<p>Precio: <xsl:value-of select="precio"/></p>
				    	</div>
				    	</div>
				    	<div class="cont-descripcion">
				    		<p><xsl:value-of select="comentario"/></p>
				    	</div>
				    </div>
				</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>