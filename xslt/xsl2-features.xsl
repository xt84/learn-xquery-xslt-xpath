<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:my="http://github.com/xt84"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- Function feature -->
    <xsl:function name="my:test-functions">
        <xsl:param name="data-value" as="xs:integer" />
        <xsl:value-of select="$data-value * 2" />
    </xsl:function>
    
    <xsl:template match="/">
        <numbers>
            <xsl:apply-templates />
        </numbers>
    </xsl:template>
    
    <!-- apply function to data -->
    <xsl:template match="data">
        <number>
            <xsl:attribute name="original" select="node()" />
            <xsl:value-of select="my:test-functions(node())" />
        </number>
    </xsl:template>
</xsl:stylesheet>
