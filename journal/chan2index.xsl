<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0' xmlns:dc="http://purl.org/dc/elements/1.1/">

  <xsl:output method='html'/>

  <xsl:template match='/'>

    <xsl:variable name='thelast' select='/channel/@last'/>
    <xsl:variable name='ultimate' select='$thelast'/>
    <xsl:variable name='penultimate' select='$ultimate - 1'/>
    <xsl:variable name='antepenultimate' select='$ultimate - 2'/>

    <html>
      <head>
        <title><xsl:value-of select='/journal/header/title'/></title>
        <link rel='stylesheet' type='text/css' href='/stpeter.css'/>
        <link rel='alternate' type='application/atom+xml' href='http://stpeter.im/atom.xml'/>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <meta name='viewport' content='width=device-width'/>
        <meta name='DC.Creator' content='Peter Saint-Andre'/>
        <meta name='DC.Rights' content='http://creativecommons.org/publicdomain/zero/1.0/'/>
        <!-- dynamic metadata elements -->
        <meta>
          <xsl:attribute name='name'><xsl:text>DC.Title</xsl:text></xsl:attribute>
          <xsl:attribute name='content'><xsl:value-of select='/journal/header/title'/></xsl:attribute>
        </meta>
        <meta>
          <xsl:attribute name='name'><xsl:text>DC.Date</xsl:text></xsl:attribute>
          <xsl:attribute name='content'><xsl:value-of select='/journal/header/date'/></xsl:attribute>
        </meta>
      </head>
      <body>
        <h1>Peter Saint-Andre: Journal</h1>
        <hr/>
        <xsl:if test='/channel/journal[position()=1]'>
          <h2>
            <a>
              <xsl:attribute name='href'><xsl:value-of select='$ultimate'/><xsl:text>.html</xsl:text></xsl:attribute>
              <xsl:value-of select='/channel/journal[position()=1]/header/title'/>
            </a>
          </h2>
          <h3><xsl:value-of select='/channel/journal[position()=1]/header/date'/></h3>
          <xsl:apply-templates select='/channel/journal[position()=1]/entry'/>
        </xsl:if>
        <hr/>
        <xsl:if test='/channel/journal[position()=2]'>
          <h2>
            <a>
              <xsl:attribute name='href'><xsl:value-of select='$penultimate'/><xsl:text>.html</xsl:text></xsl:attribute>
              <xsl:value-of select='/channel/journal[position()=2]/header/title'/>
            </a>
          </h2>
          <h3><xsl:value-of select='/channel/journal[position()=2]/header/date'/></h3>
          <xsl:apply-templates select='/channel/journal[position()=2]/entry'/>
        </xsl:if>
        <hr/>
        <xsl:if test='/channel/journal[position()=3]'>
          <h2>
            <a>
              <xsl:attribute name='href'><xsl:value-of select='$antepenultimate'/><xsl:text>.html</xsl:text></xsl:attribute>
              <xsl:value-of select='/channel/journal[position()=3]/header/title'/>
            </a>
          </h2>
          <h3><xsl:value-of select='/channel/journal[position()=3]/header/date'/></h3>
          <xsl:apply-templates select='/channel/journal[position()=3]/entry'/>
        </xsl:if>
        <hr/>
        <p>For older entries, check the <a href='archive.html'>Archive</a>.</p>
        <hr/>
        <p><a href='/'>Peter Saint-Andre</a> &gt; Journal</p>
      </body>
    </html>

  </xsl:template>

  <xsl:template match='entry'>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match='p'>
    <p><xsl:apply-templates/></p>
  </xsl:template>

  <xsl:template match='blockquote'>
    <blockquote><xsl:apply-templates/></blockquote>
  </xsl:template>

  <xsl:template match='ul'>
    <ul>
    <xsl:apply-templates/>
    </ul>
  </xsl:template>

  <xsl:template match='ol'>
    <ol>
    <xsl:apply-templates/>
    </ol>
  </xsl:template>

  <xsl:template match='li'>
    <li>
    <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match='pre'>
    <pre>
    <xsl:apply-templates/>
    </pre>
  </xsl:template>

  <xsl:template match='em'>
    <em>
    <xsl:apply-templates/>
    </em>
  </xsl:template>

  <xsl:template match='strong'>
    <strong>
    <xsl:apply-templates/>
    </strong>
  </xsl:template>

  <xsl:template match='br'>
    <br />
  </xsl:template>

  <xsl:template match='cite'>
    <cite><xsl:apply-templates/></cite>
  </xsl:template>

  <xsl:template match='a'>
    <a><xsl:attribute name='href'><xsl:value-of select='@href'/></xsl:attribute>
    <xsl:apply-templates/>
    </a>
  </xsl:template>

  <xsl:template match='img'>
    <img>
      <xsl:attribute name='src'><xsl:value-of select='@src'/></xsl:attribute>
      <xsl:apply-templates/>
    </img>
  </xsl:template>

</xsl:stylesheet>
