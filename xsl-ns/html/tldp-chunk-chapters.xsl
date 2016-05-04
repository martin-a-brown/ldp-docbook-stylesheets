<?xml version="1.0"?>

<xsl:stylesheet 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:d="http://docbook.org/ns/docbook"
     exclude-result-prefixes="d"
     version="1.0">

<!-- For one single output page, use tldp-one-page.xsl.
     For one HTML page per chapter, use tldp-chunk-chapters.xsl.
     For one HTML page for each section, use tldp-chunk-sections.xsl.
  -->

<xsl:import href="http://docbook.sourceforge.net/release/xsl-ns/current/html/chunk.xsl"/>
<xsl:import href="tldp-chunk-common.xsl"/>


<!-- Generate separate HTML pages for each preface, chapter or appendix.
     Use this for a lower number of larger HTML output file chunks.
  -->
<xsl:param name="chunk.section.depth" select="0"></xsl:param>

</xsl:stylesheet>
