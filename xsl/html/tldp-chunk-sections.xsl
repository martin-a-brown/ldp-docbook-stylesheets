<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- For one single output page, use tldp-one-page.xsl.
     For one HTML page per chapter, use tldp-chunk-chapters.xsl.
     For one HTML page for each section, use tldp-chunk-sections.xsl.
  -->

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/chunk.xsl"/>
<xsl:import href="tldp-chunk-common.xsl"/>


<!-- Generate separate HTML pages for each section in the source document.
     Use this for a higher number of smaller HTML output file chunks.  -->
<xsl:param name="chunk.section.depth" select="1"></xsl:param>

<!-- Generate each chapter ToC on its own page rather with the first chunked
     section. 
  -->
<xsl:param name="chunk.first.sections" select="1"></xsl:param>

</xsl:stylesheet>
