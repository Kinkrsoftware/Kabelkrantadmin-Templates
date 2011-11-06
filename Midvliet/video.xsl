<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exsl="http://exslt.org/common" extension-element-prefixes="exsl">
<xsl:output omit-xml-declaration="yes" media-type="image/svg+xml" doctype-public="-//W3C//DTD SVG 20010904//EN" doctype-system="http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd" standalone="no" indent="no" method="xml"/>

<xsl:template name="break" match="/article/para">
 <xsl:param name="text" select="."/>
 <xsl:choose>
   <xsl:when test="contains($text, '&#xA;')">
     <flowPara xmlns="http://www.w3.org/2000/svg"><xsl:value-of select="substring-before($text, '&#xA;')"/></flowPara>
     <xsl:call-template name="break">
       <xsl:with-param name="text" select="substring-after($text,'&#xA;')"/>
     </xsl:call-template>
   </xsl:when>
   <xsl:otherwise>
     <flowPara xmlns="http://www.w3.org/2000/svg"><xsl:value-of select="$text"/></flowPara>
   </xsl:otherwise>
 </xsl:choose>
</xsl:template>

<xsl:template match="/">
<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://web.resource.org/cc/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   xmlns:sodipodi="http://inkscape.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   version="1.0"
   x="0"
   y="0"
   width="1125"
   height="843.75"
   id="svg602"
   xml:space="preserve"
   sodipodi:version="0.32"
   inkscape:version="0.42.2"
   sodipodi:docname="59c26752d96d6114178c20031f261347.svg"
   sodipodi:docbase="/home/skinkie"><metadata
   id="metadata21"><rdf:RDF><cc:Work
       rdf:about=""><dc:format>image/svg+xml</dc:format><dc:type
         rdf:resource="http://purl.org/dc/dcmitype/StillImage" /></cc:Work></rdf:RDF></metadata><defs
   id="defs19" /><sodipodi:namedview
   inkscape:window-height="959"
   inkscape:window-width="1268"
   inkscape:pageshadow="2"
   inkscape:pageopacity="0.0"
   borderopacity="1.0"
   bordercolor="#666666"
   pagecolor="#ffffff"
   id="base"
   inkscape:zoom="0.58831284"
   inkscape:cx="952.24836"
   inkscape:cy="599.80485"
   inkscape:window-x="0"
   inkscape:window-y="40"
   inkscape:current-layer="svg602" />
   <path d="M 37.5 -163.6575 L 1162.5 -168.4089 L 1162.5 898.8418 L 325 898.8418 C 449.0157 739.3936 320.9645 -110.5079 37.5 -163.6575 z " style="fill:#063b71;fill-rule:evenodd;stroke-width:1.089693;fill-opacity:1.0000000" id="path621" />
  <path d="M 37.5 -163.6575 L 37.5 -163.6575 L 37.5 898.8418 L 325 898.8418 C 449.0157 739.3936 320.9645 -110.5079 37.5 -163.6575 z " style="fill:#ffffff;fill-rule:evenodd;stroke-width:1.089693;" id="path775" />
  <text x="309" y="136.75" style="font-size:42.000000px;font-weight:bold;fill:#ee8c1d;font-family:Syntax" id="title" xml:space="preserve">Videotemplate</text>
  </svg>
</xsl:template>
</xsl:stylesheet>
