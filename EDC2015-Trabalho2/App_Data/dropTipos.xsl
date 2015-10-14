<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="cursos">
    <cursos>
      <xsl:for-each select="curso">
        <xsl:sort select="grau"/>
        <curso>
          <xsl:attribute name="grau">
            <xsl:value-of select="grau"/>
          </xsl:attribute>
        </curso>
      </xsl:for-each>
    </cursos>
  </xsl:template>
</xsl:stylesheet>