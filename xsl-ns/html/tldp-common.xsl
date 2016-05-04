<?xml version="1.0"?>

<xsl:stylesheet 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:d="http://docbook.org/ns/docbook"
     exclude-result-prefixes="d"
     version="1.0">

<!-- Create a link to a CSS stylesheet named 'tldp-style.css' in all html
     output so that pages can be beautified.  Browsers not supporting
     CSS will simply ignore the link. -->
<xsl:param name="html.stylesheet.type">text/css</xsl:param>
<xsl:param name="html.stylesheet" select="'tldp-style.css'"></xsl:param>

<!-- Generate a label for each section (as well as chapters). -->
<xsl:param name="section.autolabel" select="1"/>

<!-- When generating labels, include parent's label, (e.g. 1.3, 1.4) -->
<xsl:param name="section.label.includes.component.label" select="1"/>

<!-- When generating internal document links for the xref element, use the
     title of the target as well as the generated number. --> 
<xsl:param name="xref.with.number.and.title" select="1"/> 

<!-- leave our calling card in each of the HTML outputs -->

<xsl:template name="d:user.head.content">
  <xsl:param name="node" select="."/>
  <meta name="generator" content="Experimental LDP.XSL $Revision$"/>
  <xsl:text>
  </xsl:text>
  <xsl:comment> This HTML was generated by a small XSLT customization layer
       intended for TLDP documents.  The main XSLT stylesheet drivers are 
       the docbook-stylesheets from Norman Walsh's DocBook XSL stylesheets.
       Visit http://www.tldp.org/ for more detail.</xsl:comment>
  <xsl:text>
  </xsl:text>

</xsl:template>

</xsl:stylesheet>