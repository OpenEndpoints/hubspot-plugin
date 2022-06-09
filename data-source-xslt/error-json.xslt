<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="transaction-uuid" select="transformation-input/transaction-uuid cast as xs:string"/>
		<xsl:choose>
			<xsl:when test="$transaction-uuid ne ''">
				<xsl:text>error: </xsl:text>
				<xsl:value-of select="$transaction-uuid"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>error</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
