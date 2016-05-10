ldp-docbook-stylesheets - DocBook XSL, DSSSL and CSS stylesheets
================================================================

The Linux Documentation Project (LDP, or sometimes TLDP), accepts source
documents in a wide variety of formats and then transforms them, using these
stylesheets to PDF, HTML and text formats.

These stylesheets represent minor customizations over the various DocBook
stylesheets distributed from the main
`DocBook project <http://docbook.sourceforge.net/>`_.

Project anatomy
---------------

Directory tree::

  ldp-docbook-stylesheets/
  ├── css
  ├── dsssl
  ├── xsl
  │   ├── doc
  │   ├── fo
  │   └── html
  └── xsl-ns
      ├── fo
      └── html

(While the individual stylesheets are available here to be used directly,
they may end up in different packages in your distribution.)

  * The `css` directory contains just one file, `tldp-style.css`.
  * The `dsssl` directory contains Greg Ferguson's venerable `ldp.dsl` file,
    for processing all of the DocBook SGML versions.
  * The `xsl` directory contains different customization layers for FO and
    HTML outputs for use with DocBook XML 4.x.  David Horton, the author of
    the first LDP Docbook XSL stylesheet customization layer included 
  * The `xsl-ns` directory contains different customization layers for FO and
    HTML outputs for use with DocBook XML 5.x.

Customizations to XSL
---------------------
XSL stands for eXtensible Stylesheet Language and is commonly used for
processing and transforming XML.  FO stands for Formatting Objects.  FO is an
XML dialect which captures document formatting and is most often used by a PDF
rendering engine such as `Apache FOP <https://xmlgraphics.apache.org/fop/>`_

  * All TLDP outputs from the xsl and xsl-ns customization layers prefer
    UTF-8 output, See 
    `this discussion of output encoding <http://www.sagehill.net/docbookxsl/OutputEncoding.html>`_.
  * For stability of HTML filenames when generating chunked outputs, the
    `use.id.as.filename <http://docbook.sourceforge.net/release/xsl/1.76.1/doc/html/use.id.as.filename.html>`_ 
    parameter is turned on.
  * For chunked outputs, the DocBook elements <legalnotice/> and <revhistory/>
    are created as separate files.  (See 
    `generate.legalnotice.link <http://docbook.sourceforge.net/release/xsl/current/doc/html/generate.legalnotice.link.html>`_ and
    `generate.revhistory.link <http://docbook.sourceforge.net/release/xsl/current/doc/html/generate.revhistory.link.html>`_)
  * For FO outputs, intended for use with Apache FOP, the 
    `fop1.extensions <http://docbook.sourceforge.net/release/xsl/current/doc/fo/fop1.extensions.html>`_
    are enabled.  See the file `tldp-print.xsl` for more detail.

Customizations to DSSSL
-----------------------
DSSSL stands for Document Style and Semantics Specification Language.

  * The reasoning behind the parameter setting in the `ldp.dsl` stylesheet
    resides with the original author, Greg Ferguson.
  * Added the definition of a stylesheet parameter to the driver, so that a
    link to `tldp-style.css` would be included in the HTML outputs.

Customizations to CSS
---------------------
Cascading Stylesheets (CSS) are read by browsers and provide a wide array of
control for controlling the display of HTML.  The intent behind providing a
CSS file is to offer some consistency for the overall look of the project, and
address a few minor matters.  Users may prefer to override this minimal look.

  * Use shaded regions for all <pre> environments; good for many DocBook
    block elements.
  * Use blue text for all links.
  * When the mouse is hovering over a link, underline the text.
  * Indent slightly all blockquote elements.


