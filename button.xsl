<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:my="http://murb.nl/demo"
  xmlns:html="http://www.w3.org/1999/xhtml"
  >

  <xsl:template match="my:button">
    <html:style>
      .button {
        background: #000;
        color: #fff;
        border: none;
        font-family: Helvetica, sans-serif;
        line-height: 3em;
        padding: 0 1em;
      }
      .button-wrapper {
        display: inline-block;
        padding: 3px;
        border: 3px solid #000;
      }
    </html:style>

    <html:div class="button-wrapper">
      <html:button class="button">
        <xsl:apply-templates select="@*"/>
        <xsl:apply-templates />
      </html:button>
    </html:div>
  </xsl:template>

</xsl:stylesheet>
