<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:my="http://murb.nl/demo"
  xmlns:html="http://www.w3.org/1999/xhtml"
  >

  <xsl:template match="*|@*">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>


</xsl:stylesheet>
