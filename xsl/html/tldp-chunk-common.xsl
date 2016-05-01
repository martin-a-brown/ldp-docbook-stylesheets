<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- For one single output page, use tldp-one-page.xsl.
     For one HTML page per chapter, use tldp-chapters.xsl.
     For one HTML page for each section, use tldp-sections.xsl.
  -->

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/chunk.xsl"/>
<xsl:import href="tldp-common.xsl"/>


<!-- When chunking, use this name ('index') for the root chunk.
     While this is the default, we are setting it explicitly. -->
<xsl:param name="root.filename" select="'index'"/>

<!-- When chunking AND for single-page output, create separate HTML files
     for legalnotice.html and for revhistory.html -->
<xsl:param name="generate.legalnotice.link" select="1"/>
<xsl:param name="generate.revhistory.link" select="1"/>

<!-- When chunking, name each file after the element id.
     Ignored in when producing single-page output. -->
<xsl:param name="use.id.as.filename" select="1"/>

<!-- When chunking, encode output as UTF-8 -->
<xsl:param name="chunker.output.encoding">UTF-8</xsl:param>

</xsl:stylesheet>
