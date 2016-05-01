<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- For one single output page, use tldp-one-page.xsl.
     For one HTML page per chapter, use tldp-chapters.xsl.
     For one HTML page for each section, use tldp-sections.xsl.
  -->

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl"/>
<xsl:import href="tldp-common.xsl"/>

<!-- This set of customizations is used to generate the entire XML
     document on a single HTML page. -->

<xsl:output method="html" encoding="UTF-8" indent="no"/>

</xsl:stylesheet>
