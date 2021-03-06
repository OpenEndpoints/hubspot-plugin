<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:offerready="https://offerready.com" xmlns:functx="http://www.functx.com" exclude-result-prefixes="#all">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- Acknowledgement: xslt functions with namespace functx copied from http://www.xsltfunctions.com -->
	<xsl:variable name="input" select="parameter-transformation-input"/>

	<xsl:template match="/">
		<parameter-transformation-output>
			<xsl:copy-of select="$input/input-from-request/parameter[@name ne 'shortlink']"/>
			<parameter name="shortlink">
				<xsl:attribute name="value" select="transformation-input/parameters/intermediate-value[@name eq 'hubspot-download']/@value"/>
			</parameter>
		</parameter-transformation-output>
	</xsl:template>

</xsl:stylesheet>
