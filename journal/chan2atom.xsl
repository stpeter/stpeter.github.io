<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0' xmlns:dc="http://purl.org/dc/elements/1.1/">

  <xsl:output method='xml' indent='yes'/>

  <xsl:template match='/'>

    <xsl:variable name='thelast' select='/channel/@last'/>
    <xsl:variable name='ultimate' select='$thelast'/>
    <xsl:variable name='penultimate' select='$ultimate - 1'/>
    <xsl:variable name='antepenultimate' select='$ultimate - 2'/>

    <feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom">
      <title>one small voice</title>
      <link rel="alternate" type="text/html" href="http://stpeter.im/journal/"/>
      <author>
        <name>Peter Saint-Andre</name>
        <url>http://stpeter.im/</url>
      </author>
      <tagline>The journal of Peter Saint-Andre - technologist, writer, musician.</tagline>
      <id>http://stpeter.im/journal/</id>
      <copyright>http://creativecommons.org/publicdomain/zero/1.0/</copyright>
      <modified><xsl:value-of select='/channel/journal[position()=1]/header/date'/></modified>
      <xsl:if test='/channel/journal[position()=1]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=1]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>http://stpeter.im/journal/<xsl:value-of select='$ultimate'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$ultimate'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=1]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=1]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=1]/entry/p[position()=1]'/>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=2]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=2]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>http://stpeter.im/journal/<xsl:value-of select='$penultimate'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$penultimate'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=2]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=2]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=2]/entry/p[position()=1]'/>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=3]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=3]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>http://stpeter.im/journal/<xsl:value-of select='$antepenultimate'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$antepenultimate'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=3]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=3]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=3]/entry/p[position()=1]'/>
          </summary>
        </entry>
      </xsl:if>
    </feed>
  </xsl:template>

</xsl:stylesheet>
