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
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   version="1.0"
   x="0"
   y="0"
   width="1500"
   height="843.75"
   id="svg602"
   xml:space="preserve"
   sodipodi:version="0.32"
   inkscape:version="0.48.1 r9760"
   sodipodi:docname="169.svg"
   inkscape:export-filename="/tmp/169.png"
   inkscape:export-xdpi="115.2"
   inkscape:export-ydpi="115.2"><metadata
   id="metadata21"><rdf:RDF><cc:Work
       rdf:about=""><dc:format>image/svg+xml</dc:format><dc:type
         rdf:resource="http://purl.org/dc/dcmitype/StillImage" /><dc:title></dc:title></cc:Work></rdf:RDF></metadata><defs
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
   inkscape:cx="623.30285"
   inkscape:cy="514.49694"
   inkscape:window-x="478"
   inkscape:window-y="25"
   inkscape:current-layer="svg602"
   showgrid="false"
   inkscape:window-maximized="0" />
  <path
   d="m 67.5,-163.6575 0,0 0,1062.4993 287.5,0 C 479.0157,739.3936 350.9645,-110.5079 67.5,-163.6575 z"
   style="fill:#ffffff;fill-rule:evenodd;stroke-width:1.08969295"
   id="path775"
   inkscape:connector-curvature="0" /><path
   d="m 67.5,898.8418 0,-1062.4993 c 312.5,25 475,1424.9995 0,1062.4993 z"
   style="fill:#ff7300;fill-rule:evenodd"
   id="path620"
   inkscape:connector-curvature="0" />
  <xsl:if test="/article/category/img/src != ''">
    <xsl:variable name="src" select="/article/category/img/src" />
    <xsl:variable name="x" select="/article/category/img/x" />
    <xsl:variable name="y" select="/article/category/img/y" />
    <xsl:variable name="width" select="/article/category/img/width" />
    <xsl:variable name="height" select="/article/category/img/height" />
    <image xlink:href="{$src}" x="{$x}" y="{$y}" width="{$width}" height="{$height}" id="image1231" preserveAspectRatio="none" />
  </xsl:if>
  <path
   d="m 67.5,-163.6575 1433,-4.7514 0,1067.2507 -1175.5,0 C 449.0157,739.3936 350.9645,-110.5079 67.5,-163.6575 z"
   style="fill:#063b71;fill-opacity:1;fill-rule:evenodd;stroke-width:1.08969295"
   id="path621" inkscape:connector-curvature="0"
   sodipodi:nodetypes="ccccc" />


  <xsl:variable name="center" select="1227" />
  <xsl:variable name="rwidth" select="(string-length(/article/category/title) - 1) * 25" />
  <xsl:variable name="middenxl" select="$center - ($rwidth div 2)" />
  <xsl:variable name="middenxr" select="$center + ($rwidth div 2)" />
  <xsl:variable name="linksx" select="$middenxl - 25" />
  <xsl:variable name="rechtsx" select="$middenxr + 25" />

  <path d="M 390.9625,780.2394 {$linksx},780.2394 {$linksx},759.9894 C {$linksx},747.4894 {$linksx},734.9894 {$middenxl},734.9894 L {$middenxr},735.0627 C {$rechtsx},735.0627 {$rechtsx},747.5627 {$rechtsx},760.0627 L {$rechtsx},780.3127 1500.776,780.2394 1500.776,897.4888 351.275,897.4888 C 370.3375,872.9888 383.4625,832.1147 390.9625,780.2394 z " style="fill:#ff7300;fill-rule:evenodd;" id="path773" />

  <text x="{$center}" y="773.75" style="font-size:38.000000px;font-weight:bold;text-anchor:middle;fill:#ffffff;font-family:Syntax" id="category" xml:space="preserve"><xsl:value-of select="/article/category/title" /></text>

  <text x="339" y="136.75" style="font-size:45.000000px;font-weight:bold;fill:#ee8c1d;font-family:Syntax" id="title" xml:space="preserve"><xsl:value-of select="/article/title" /></text>

  <ellipse
   cx="333.21542"
   cy="906.8504"
   rx="91.981476"
   ry="124.01581"
   transform="matrix(1.292072,0,0,1.01488,-197.3336,-191.1417)"
   style="fill:#063b71;fill-rule:evenodd;stroke:#ffffff;stroke-width:17.88400078"
   id="path614"
   sodipodi:cx="333.21542"
   sodipodi:cy="906.8504"
   sodipodi:rx="91.981476"
   sodipodi:ry="124.01581" />
  
  
  <g
   transform="matrix(0.207246,-0.07543091,0.07543091,0.207246,82.40055,673.1253)"
   id="g730">
    <path
   d="m 248.0315,258.6614 0,177.1654 c 0,67.3228 106.2992,67.3228 106.2992,0 l 0,-177.1654 c 0,-67.3228 -106.2992,-67.3228 -106.2992,0 z"
   style="fill:#ee8c1d;fill-rule:evenodd;stroke-width:1"
   id="path731"
   inkscape:connector-curvature="0" />
    <path
   d="m 283.4646,527.9528 0,24.8031 -41.3862,12.9279 -0.4203,15.5501 118.9378,1.2609 0,-16.3907 -41.6983,-13.3482 0,-24.8031 c 24.8032,0 74.4095,-31.8898 74.4095,-88.5827 l 0,-56.6929 3.5433,-3.5434 0,-60.2362 -24.8032,0 0,120.4725 c 0,88.5827 -141.7323,92.126 -141.7322,0 l 0,-120.4725 -24.8032,0 0,60.2362 3.5433,3.5434 0,56.6929 c 0,56.6929 49.6063,88.5827 74.4095,88.5827 z"
   style="fill:#ee8c1d;fill-rule:evenodd;stroke-width:1"
   id="path732"
   inkscape:connector-curvature="0" />
  </g>
  <text
   x="146.43263"
   y="733.66766"
   style="font-size:29.24099922px;font-weight:normal;fill:#ffffff;font-family:Impact"
   id="text-logo-midvliet">Midvliet</text>

  <text
   x="238.22092"
   y="746.3208"
   style="font-size:73.10250092px;font-weight:normal;fill:#a1bcd1;font-family:Rage Italic"
   id="text-logo-t">T</text>

  <text
   x="263.59576"
   y="746.62262"
   style="font-size:73.10250092px;font-weight:normal;fill:#a1bcd1;font-family:Rage Italic"
   id="text-logo-v">V</text>

  

  <path
   style="fill:#000000;fill-opacity:0;stroke:none"
   d="m 325.1875,183.75 c 61.08402,198.56822 91.16951,448.23209 70.34375,595.625 l 684.08375,2.40385 -0.1148,-45.79387 294.2378,0.32486 0,-552.55984 z"
   id="rect4253"
   sodipodi:nodetypes="ccccccc"
   inkscape:connector-curvature="0" />
  
  <flowRoot style="font-size:37.000000;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:start;line-height:113%;writing-mode:lr;text-anchor:start;fill:#ffffff;fill-opacity:1.0000000;stroke:none;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000;font-family:Syntax" id="flowRoot7074" transform="translate(30,0)"><flowRegion id="flowRegion7076"><use x="0" y="0" xlink:href="#rect4253" id="use7078" /></flowRegion><xsl:apply-templates select="/article/para" /></flowRoot>

   <xsl:if test="/article/safebox = '1'">
     <rect width="1298.1731" height="695" x="100" y="88.75" style="fill:none;stroke:#000000;" id="safebox" />
   </xsl:if>
<path
   d="m 305.75,898.8125 49.25,0 C 465.6875,756.5 375.5625,64.3125 153.4375,-120.6875 338.625,52.6875 436.9375,698.5 305.75,898.8125 z"
   style="fill:#ffffff;fill-rule:evenodd;stroke-width:1.08969295"
   id="path1245" inkscape:connector-curvature="0" />

  </svg>
</xsl:template>
</xsl:stylesheet>
