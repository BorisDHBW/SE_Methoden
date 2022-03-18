<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#5555DD">
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="platform/game">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="publisher"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>