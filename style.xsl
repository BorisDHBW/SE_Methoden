<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h1>Shop</h1>

  <xsl:for-each select = "platform/category">
  <div  style="border:5px; border-style:solid; border-color:#FF0000; padding: 1em;">
    <h1><xsl:value-of select = "@name"/></h1>

    <xsl:for-each select = "game">
    <div style="border:3px; border-style:solid; border-color:#0000FF; padding: 1em; background-color:gray;">
    <h2><xsl:value-of select = "title"/></h2>

    <table border="1">
    <tr bgcolor="#3366ff">
      <th style="text-align:left">username</th>
      <th style="text-align:left">rating</th>
    </tr>
    <h3>reviews</h3>
    <xsl:for-each select="reviews/review">
    <tr>
      <td><xsl:value-of select="username"/></td>
      <td><xsl:value-of select="rating"/></td>

    </tr>
    </xsl:for-each>
  </table>
  </div>
  <p></p>

  </xsl:for-each>
  </div>
  <p></p>

  </xsl:for-each>

  
</body>
</html>
</xsl:template>
</xsl:stylesheet>

