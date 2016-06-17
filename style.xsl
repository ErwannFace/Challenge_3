<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
		<title>CV</title>
  			<link rel="stylesheet" href="style1.css"/>
	</head>
<body id="page">

	<section>
		<article>
			<h1>IT'S ME !</h1>
			<div class="case">
				<h2 id="prenom"><xsl:value-of select="page/section/article/identite/prenom"/></h2>
				<h2 id="nom"><xsl:value-of select="page/section/article/identite/nom"/></h2>
				<h2 id="naissance"><xsl:value-of select="page/section/article/identite/naissance"/></h2>
				<h2 id="site"><xsl:value-of select="page/section/article/identite/site"/></h2>
			</div>
		</article>

		<article>
			<h1>COMPÉTENCES</h1>
			<div class="case">
				<xsl:for-each select="page/section/article/competence/random">
				<p id="competences"><xsl:value-of select="titre"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article>
			<h1>EXPÉRIENCES</h1>
			<div class="case">
				<xsl:for-each select="page/section/article/experience">
				<p id="intitule"><xsl:value-of select="intitule"/></p>
				<p id="datedebut"><xsl:value-of select="datedebut"/></p>
				<p id="datefin"><xsl:value-of select="datefin"/></p>
				<p id="lieux"><xsl:value-of select="lieux"/></p>
				<p id="descriptif"><xsl:value-of select="descriptif"/></p>
				</xsl:for-each>
			</div>
		</article>
	</section>

	<section>
		<article>
			<h1>FORMATIONS</h1>
			<div class="case">
				<xsl:for-each select="page/section/article/formation">
				<p id="formation"><xsl:value-of select="intitule"/></p>
				<p id="date"><xsl:value-of select="date"/></p>
				<p id="ecole"><xsl:value-of select="ecole"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article>
			<h1>TECHNOS</h1>
			<div class="case">
				<xsl:for-each select="page/section/article/custom/autre">
				<p id="autre"><xsl:value-of select="titre"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article>
			<h1>CONTACT</h1>
			<div class="case">
				<div id="adresse">
					<p><xsl:value-of select="page/section/article/contact/adresse/numero"/></p>
					<p><xsl:value-of select="page/section/article/contact/adresse/rue"/></p>
					<p><xsl:value-of select="page/section/article/contact/adresse/cp"/></p>
					<p><xsl:value-of select="page/section/article/contact/adresse/ville"/></p>
				</div>
				<p id="tel"><xsl:value-of select="page/section/article/contact/tel"/></p>
				<p id="mail"><xsl:value-of select="page/section/article/contact/mail"/></p>
			</div>
		</article>
	</section>

</body>
</html>
</xsl:template>
</xsl:stylesheet> 