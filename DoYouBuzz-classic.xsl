<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

			<head>
				<!--<link href="DoYouBuzz-classic.css" rel="stylesheet" type="text/css"/>-->
			</head>

			<body>
				<!-- intitulé du CV -->
				<header>
					<h1>
						<xsl:value-of select="page/intitule/nom"/>
						<small>
							<xsl:value-of select="page/intitule/poste"/>
						</small>
					</h1>
				</header>

				<section>
					<!-- contact -->
					<article>
						<h2>Contact</h2>
						<div>
							<xsl:value-of select="page/contact/adresse/rue"/>
							<xsl:value-of select="page/contact/adresse/codepostal"/>
							<xsl:value-of select="page/contact/adresse/ville"/>
							<xsl:value-of select="page/contact/adresse/pays"/>
						</div>
						<xsl:value-of select="page/contact/email"/>
						<xsl:value-of select="page/contact/telephone"/>
					</article>
					<!-- présentation -->
					<article>
						<h2>Présentation</h2>
						<xsl:for-each select="page/presentation">
							<xsl:value-of select="paragraphe"/>
						</xsl:for-each>
					</article>
					<!-- liens -->
					<article>
						<h2>Liens</h2>
						<xsl:for-each select="page/liens/lien">
							<xsl:value-of select="."/>
						</xsl:for-each>
					</article>
				</section>

				<section>
					<!-- expériences -->
					<h2>Expériences</h2>
					<xsl:for-each select="page/experience">
						<article>
							<xsl:value-of select="titre"/>
							<xsl:value-of select="structure"/>
							<xsl:value-of select="date"/>
							<xsl:for-each select="paragraphe">
								<xsl:value-of select="."/>
							</xsl:for-each>
							<xsl:value-of select="lieu"/>
						</article>
					</xsl:for-each>
					<!-- formations -->
					<h2>Formations</h2>
					<xsl:for-each select="page/formation">
						<article>
							<xsl:value-of select="titre"/>
							<xsl:value-of select="structure"/>
							<xsl:value-of select="date"/>
							<xsl:for-each select="paragraphe">
								<xsl:value-of select="."/>
							</xsl:for-each>
						</article>
					</xsl:for-each>
				</section>

				<section>
					<!-- compétences -->
					<h2>Compétences</h2>
					<xsl:for-each select="page/competence">
						<article>
							<xsl:value-of select="titre"/>
							<xsl:for-each select="paragraphe">
								<xsl:value-of select="."/>
							</xsl:for-each>
						</article>
					</xsl:for-each>
					<!-- loisirs -->
					<h2>Loisirs</h2>
					<xsl:for-each select="page/loisir">
						<article>
							<xsl:value-of select="titre"/>
							<xsl:for-each select="paragraphe">
								<xsl:value-of select="."/>
							</xsl:for-each>
						</article>
					</xsl:for-each>
				</section>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>