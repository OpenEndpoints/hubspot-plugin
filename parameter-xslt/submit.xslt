<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:offerready="https://offerready.com" xmlns:functx="http://www.functx.com" exclude-result-prefixes="#all">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- Acknowledgement: xslt functions with namespace functx copied from http://www.xsltfunctions.com -->
	<xsl:variable name="input" select="parameter-transformation-input"/>
	<xsl:variable name="action">
		<xsl:choose>
			<xsl:when test="exists($input/input-from-request/json/action)">
				<xsl:value-of select="$input/input-from-request/json/action[1]"/>
			</xsl:when>		
			<xsl:when test="exists($input/input-from-request/parameter[@name eq 'action'])">
				<xsl:value-of select="$input/input-from-request/parameter[@name eq 'action']/@value"/>
			</xsl:when>

			<xsl:otherwise/>
		</xsl:choose>
	
	</xsl:variable>

	<xsl:template match="/">
		<parameter-transformation-output>
			<parameter name="action">
				<xsl:attribute name="value" select="$action"/>
			</parameter>
			

			<parameter name="company">
				<xsl:attribute name="value" select="$input/input-from-request/json/properties/name"/>
			</parameter>
			<parameter name="firstname">
				<xsl:attribute name="value" select="$input/input-from-request/json/properties/firstname"/>
			</parameter>
			<parameter name="lastname">
				<xsl:attribute name="value" select="$input/input-from-request/json/properties/lastname"/>
			</parameter>												
			<parameter name="email">
				<xsl:attribute name="value" select="$input/input-from-request/json/properties/email"/>
			</parameter>	
			
									
		</parameter-transformation-output>
	</xsl:template>

</xsl:stylesheet>
