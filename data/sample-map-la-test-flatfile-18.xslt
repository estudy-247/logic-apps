<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var" version="1.0" xmlns:ns0="http://BT.Test.FlatFile.Schema.UserDetails_FF">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/ns0:User" />
  </xsl:template>
  <xsl:template match="/ns0:User">
    <ns0:User>
      <xsl:for-each select="UserDetails">
        <UserDetails>
          <Name>
            <xsl:value-of select="Name/text()" />
          </Name>
          <Gender>
            <xsl:value-of select="Gender/text()" />
          </Gender>
          <Email>
            <xsl:value-of select="Email/text()" />
          </Email>
          <Address>
            <xsl:value-of select="Address/text()" />
          </Address>
          <Remarks>
            <xsl:value-of select="Remarks/text()" />
          </Remarks>
        </UserDetails>
      </xsl:for-each>
    </ns0:User>
  </xsl:template>
</xsl:stylesheet>