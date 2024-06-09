<?xml version='1.0' encoding='UTF-8'?>

<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'>
<xsl:output method='html'/>

  <xsl:template match='/'>
    <html>
      <head>
        <title>One Small Voice: <xsl:value-of select='/journal/header/title'/></title>
        <link rel='stylesheet' type='text/css' href='/stpeter.css'/>
        <link rel='alternate' type='application/atom+xml' href='https://stpeter.im/atom.xml'/>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <meta name='viewport' content='width=device-width'/>
        <meta name='DC.Creator' content='Peter Saint-Andre'/>
        <meta name='DC.Rights' content='https://creativecommons.org/publicdomain/zero/1.0/'/>
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
        <h2><xsl:value-of select='/journal/header/title' /></h2>
        <h3>by <a href='/'>Peter Saint-Andre</a></h3>
        <h3><xsl:value-of select='/journal/header/date' /></h3>
        <xsl:apply-templates select='/journal/entry'/>
        <hr/>
        <p><a href='/'>Peter Saint-Andre</a> &gt; <a href='/journal/'>Journal</a></p>
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

  <xsl:template match='u'>
    <u>
      <xsl:apply-templates/>
    </u>
  </xsl:template>

  <xsl:template match='cite'>
    <cite>
      <xsl:apply-templates/>
    </cite>
  </xsl:template>

  <xsl:template match='br'>
    <br />
  </xsl:template>

</xsl:stylesheet>
