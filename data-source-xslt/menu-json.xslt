<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="#all">
	<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:variable name="offerready-link-to-private-form" select="transformation-input/parameters/parameter[@name eq 'offerready-link-to-private-form']/@value"/>
	<xsl:template match="/">
		<html>
			<!--<xsl:call-template name="head"/>-->
			<body>
				<div>
				<p>Neue Anfrage von Deutschclub Website:</p>

<table>
	<tbody>
<xsl:for-each select="transformation-input/parameters/parameter[@value ne '']">
	<xsl:if test="not(fn:starts-with(@name,'offerready'))">
			<tr>
				<td><xsl:value-of select="@name"/></td>
				<td><xsl:value-of select="@value"/></td>
			</tr>
	</xsl:if>
</xsl:for-each>
	</tbody>
</table>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="head">
		<head>
		</head>
	</xsl:template>
</xsl:stylesheet>
