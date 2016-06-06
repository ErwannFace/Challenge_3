<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<head>
			<link href="style-alt.css" rel="stylesheet" type="text/css"/>
		</head>
		<body>
			<section>
				<article>
					<xsl:for-each select="page/section/article/identite">
						<span class="capitalize"><xsl:value-of select="prenom"/></span>
						<span class="uppercase"><xsl:value-of select="nom"/></span><br/>
						<p>né le :</p><xsl:value-of select="naissance"/><br/>
						<p>site web :</p><xsl:value-of select="site"/>
					</xsl:for-each>
				</article>
				<article>
					<xsl:for-each select="page/section/article/contact">
						<p>adresse :</p><br/>
						<xsl:value-of select="adresse/numero"/>
						<xsl:value-of select="adresse/rue"/><br/>
						<xsl:value-of select="adresse/cp"/>
						<span class="capitalize"><xsl:value-of select="adresse/ville"/></span>
						<p class="boring"> - </p>
						<span class="uppercase"><xsl:value-of select="adresse/pays"/></span><br/>
						<p>-----</p><br/>
						<p>tel :</p><xsl:value-of select="tel"/><br/>
						<p>e-mail :</p><xsl:value-of select="mail"/>
					</xsl:for-each>
				</article>
			</section>
			<section>
				<article>
					<xsl:for-each select="page/section/article/formation">
						<h2><xsl:value-of select="intitule"/></h2>
						<p>date d’obtention :</p><xsl:value-of select="date"/><br/>
						<p>délivré par :</p><xsl:value-of select="ecole"/><br/>
						<span class="small"><xsl:value-of select="descriptif"/></span>
					</xsl:for-each>
				</article>
			</section>
			<section>
				<article>
					<xsl:for-each select="page/section/article/competence/random">
						<xsl:value-of select="."/>
						<br/><p>-----</p><br/>
					</xsl:for-each>
				</article>
				<xsl:for-each select="page/section/article/experience">
					<article>
						<h2><xsl:value-of select="intitule"/></h2>
						<p>de :</p><xsl:value-of select="datedebut"/>
						<p>à :</p><xsl:value-of select="datefin"/><br/>
						<xsl:value-of select="lieux"/><br/>
						<span class="small"><xsl:value-of select="descriptif"/></span>
					</article>
				</xsl:for-each>
			</section>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>