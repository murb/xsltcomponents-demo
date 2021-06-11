<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:my="http://murb.nl/demo"
  xmlns:html="http://www.w3.org/1999/xhtml"
  >

  <xsl:template match="my:card">
    <html:style>
      /* card */

      .card {
        border: 3px solid #000;
      }
      .card .body {
        padding: 1em;
      }
      .card header {
        padding: 1em;
        background: #000; color: #fff;
      }
      .card footer {
        padding: 1em;
        border-top: 3px solid #000;
        <!-- color: #fff; -->
      }
      .card header h2 {
        font-weight: 100;
        margin: 0
      }
    </html:style>

    <html:div class="card">
      <html:header>
        <xsl:apply-templates select="./html:header/text()|./html:header/*"/>
      </html:header>
      <html:div class="body">
        <xsl:apply-templates select="./my:body/text()|./my:body/*"/>
      </html:div>
      <html:footer>
        testa
        <xsl:apply-templates select="./html:footer/text()|./html:footer/*"/>
      </html:footer>
    </html:div>
  </xsl:template>

  <xsl:template match="my:card/html:header/my:h">
    <html:h2>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </html:h2>
  </xsl:template>

</xsl:stylesheet>
