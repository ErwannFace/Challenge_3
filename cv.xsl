<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

			<head>
				<link href="style-alt.css" rel="stylesheet" type="text/css"/>
			</head>

			<body>

				<section>

					<!-- intitulé du CV -->
					<h1>
						Développeur Web/mobile
					</h1>

					<!-- identité -->
					<article>
						<div>
							<span class="capitalize"><xsl:value-of select="page/section/article/identite/prenom"/></span>
							<span class="uppercase"><xsl:value-of select="page/section/article/identite/nom"/></span>
						</div>
						<div>
							<p>né le :</p><xsl:value-of select="page/section/article/identite/naissance"/>
						</div>
						<div>
							<p>site web :</p><xsl:value-of select="page/section/article/identite/site"/>
						</div>
					</article>

					<!-- contact -->
					<article>
						<p>adresse :</p>
						<div>
							<xsl:value-of select="page/section/article/contact/adresse/numero"/>
							<xsl:value-of select="page/section/article/contact/adresse/rue"/>
						</div>
						<div>
							<xsl:value-of select="page/section/article/contact/adresse/cp"/>
							<span class="capitalize"><xsl:value-of select="page/section/article/contact/adresse/ville"/></span>
							<p style="color: black; font-size: 1em; font-weight: 400"> - </p>
							<span class="uppercase"><xsl:value-of select="page/section/article/contact/adresse/pays"/></span>
						</div>
						<p>-----</p>
						<div>
							<p>tel :</p><xsl:value-of select="page/section/article/contact/tel"/>
						</div>
						<div>
							<p>e-mail :</p><xsl:value-of select="page/section/article/contact/mail"/>
						</div>
					</article>

				</section>

				<section>

					<!-- formations -->
					<div>
						<xsl:for-each select="page/section/article/formation">
							<article>
								<h2><xsl:value-of select="intitule"/></h2>
								<p>date d’obtention :</p><xsl:value-of select="date"/><br/>
								<p>délivré par :</p><xsl:value-of select="ecole"/><br/>
								<span class="small"><xsl:value-of select="descriptif"/></span>
							</article>
						</xsl:for-each>
					</div>
					
				</section>

				<section>

					<!-- compétences -->
					<div>
						<article>
							<xsl:for-each select="page/section/article/competence/random">
								<xsl:value-of select="."/>
								<br/><p>~~~~~</p><br/>
							</xsl:for-each>
						</article>
					</div>

					<!-- expériences -->
					<div>
						<xsl:for-each select="page/section/article/experience">
							<article>
								<h2><xsl:value-of select="intitule"/></h2>
								<p>de :</p><xsl:value-of select="datedebut"/>
								<p>à :</p><xsl:value-of select="datefin"/><br/>
								<xsl:value-of select="lieux"/><br/>
								<span class="small"><xsl:value-of select="descriptif"/></span>
							</article>
						</xsl:for-each>
					</div>

				</section>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>