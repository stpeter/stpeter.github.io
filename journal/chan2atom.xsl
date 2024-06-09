<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0' xmlns:dc="http://purl.org/dc/elements/1.1/">

  <xsl:output method='xml' indent='yes'/>

  <xsl:template match='/'>

    <xsl:variable name='last' select='/channel/@last'/>
    <xsl:variable name='min1' select='$last - 1'/>
    <xsl:variable name='min2' select='$last - 2'/>
    <xsl:variable name='min3' select='$last - 3'/>
    <xsl:variable name='min4' select='$last - 4'/>
    <xsl:variable name='min5' select='$last - 5'/>

    <feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom">
      <title>One Small Voice</title>
      <link rel="alternate" type="text/html" href="https://stpeter.im/journal/"/>
      <author>
        <name>Peter Saint-Andre</name>
        <url>https://stpeter.im/</url>
      </author>
      <tagline>The journal of Peter Saint-Andre - technologist, musician, philosopher.</tagline>
      <id>https://stpeter.im/journal/</id>
      <copyright>https://creativecommons.org/publicdomain/zero/1.0/</copyright>
      <modified><xsl:value-of select='/channel/journal[position()=1]/header/date'/></modified>
      <xsl:if test='/channel/journal[position()=1]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=1]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>https://stpeter.im/journal/<xsl:value-of select='$last'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$last'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=1]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=1]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=1]/entry/p[position()=1]'/>
            <xsl:text>...</xsl:text>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=2]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=2]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>https://stpeter.im/journal/<xsl:value-of select='$min1'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$min1'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=2]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=2]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=2]/entry/p[position()=1]'/>
            <xsl:text>...</xsl:text>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=3]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=3]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>https://stpeter.im/journal/<xsl:value-of select='$min2'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$min2'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=3]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=3]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=3]/entry/p[position()=1]'/>
            <xsl:text>...</xsl:text>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=4]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=4]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>https://stpeter.im/journal/<xsl:value-of select='$min3'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$min3'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=4]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=4]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=4]/entry/p[position()=1]'/>
            <xsl:text>...</xsl:text>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=5]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=5]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>https://stpeter.im/journal/<xsl:value-of select='$min4'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$min4'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=5]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=5]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=5]/entry/p[position()=1]'/>
            <xsl:text>...</xsl:text>
          </summary>
        </entry>
      </xsl:if>
      <xsl:if test='/channel/journal[position()=6]'>
        <entry>
          <title><xsl:value-of select='/channel/journal[position()=6]/header/title'/></title>
          <link>
            <xsl:attribute name='type'>text/html</xsl:attribute>
            <xsl:attribute name='rel'>alternate</xsl:attribute>
            <xsl:attribute name='href'>https://stpeter.im/journal/<xsl:value-of select='$min5'/>.html</xsl:attribute>
          </link>
          <id>tag:stpeter.im,<xsl:value-of select='$min5'/></id>
          <issued><xsl:value-of select='/channel/journal[position()=6]/header/date'/></issued>
          <modified><xsl:value-of select='/channel/journal[position()=6]/header/date'/></modified>
          <summary>
            <xsl:value-of select='/channel/journal[position()=6]/entry/p[position()=1]'/>
            <xsl:text>...</xsl:text>
          </summary>
        </entry>
      </xsl:if>
    </feed>
  </xsl:template>

</xsl:stylesheet>
