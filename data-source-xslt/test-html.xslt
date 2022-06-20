<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="#all">
	<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">


	<xsl:for-each select="transformation-input/parameters/parameter">

	<xsl:value-of select="@name"/><xsl:text>: </xsl:text><xsl:value-of select="@value"/><br/>
	
	</xsl:for-each>


	</xsl:template>
</xsl:stylesheet>
