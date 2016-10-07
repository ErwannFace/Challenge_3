<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

			<head>
				<link href="css/style.css" rel="stylesheet" type="text/css"/>
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

				<div class="container">

					<section class="whoami">
						<!-- contact -->
						<article>
							<h3>Contact</h3>
							<div class="address">
								<p><xsl:value-of select="page/contact/adresse/rue"/></p>
								<p><xsl:value-of select="page/contact/adresse/codepostal"/>
								<xsl:value-of select="page/contact/adresse/ville"/></p>
								<p><xsl:value-of select="page/contact/adresse/pays"/></p>
							</div>
							<a href="mailto:{page/contact/email}"><xsl:value-of select="page/contact/email"/></a>
							<p><xsl:value-of select="page/contact/telephone"/></p>
						</article>
						<!-- présentation -->
						<article>
							<h3>Présentation</h3>
							<xsl:for-each select="page/presentation">
								<p><xsl:value-of select="paragraphe"/></p>
							</xsl:for-each>
						</article>
						<!-- liens -->
						<article class="network">
							<h3>Réseau</h3>
							<xsl:for-each select="page/reseau">
								<a href="{lien}"><img src="{image}" class="screenonly" /><p><xsl:value-of select="description"/><span class="printonly"> - <xsl:value-of select="lien"/></span></p></a>
							</xsl:for-each>
						</article>
					</section>

					<section class="work">
						<!-- expériences -->
						<h2>Expériences</h2>
						<xsl:for-each select="page/experience">
							<article>
								<h3><xsl:value-of select="titre"/></h3>
								<a href="{lien}"><xsl:value-of select="structure"/></a>
								<p><xsl:value-of select="date"/></p>
								<xsl:for-each select="paragraphe">
									<p><xsl:value-of select="."/></p>
								</xsl:for-each>
								<p><xsl:value-of select="lieu"/></p>
							</article>
						</xsl:for-each>
						<!-- formations -->
						<h2>Formations</h2>
						<xsl:for-each select="page/formation">
							<article>
								<h3><xsl:value-of select="titre"/></h3>
								<p><xsl:value-of select="structure"/></p>
								<p><xsl:value-of select="date"/></p>
								<xsl:for-each select="paragraphe">
									<p><xsl:value-of select="."/></p>
								</xsl:for-each>
							</article>
						</xsl:for-each>
					</section>

					<section class="skills">
						<!-- compétences -->
						<h2>Compétences</h2>
						<xsl:for-each select="page/competence">
							<article>
								<h3><xsl:value-of select="titre"/></h3>
								<ul>
									<xsl:for-each select="paragraphe">
										<li><xsl:value-of select="."/></li>
									</xsl:for-each>
								</ul>
							</article>
						</xsl:for-each>
						<!-- loisirs -->
						<h2>Loisirs</h2>
						<xsl:for-each select="page/loisir">
							<article>
								<h3><xsl:value-of select="titre"/></h3>
								<ul>
									<xsl:for-each select="paragraphe">
										<li><xsl:value-of select="."/></li>
									</xsl:for-each>
								</ul>
							</article>
						</xsl:for-each>
					</section>

				</div>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
