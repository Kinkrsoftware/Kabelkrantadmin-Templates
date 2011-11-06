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
   height="632.81"
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
   inkscape:window-height="713"
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
  <path d="M 37.5 -163.6575 L 37.5 -163.6575 L 37.5 898.8418 L 325 898.8418 C 449.0157 739.3936 320.9645 -110.5079 37.5 -163.6575 z " style="fill:#ffffff;fill-rule:evenodd;stroke-width:1.089693;" id="path775" />
  <path d="M 37.5 898.8418 L 37.5 -163.6575 C 350 -138.6575 512.5 1261.342 37.5 898.8418 z" style="fill:#ff7300;fill-rule:evenodd;" id="path620" />
  <xsl:if test="/article/category/img/src != ''">
    <xsl:variable name="src" select="/article/category/img/src" />
    <xsl:variable name="x" select="/article/category/img/x" />
    <xsl:variable name="y" select="/article/category/img/y" />
    <xsl:variable name="width" select="/article/category/img/width" />
    <xsl:variable name="height" select="/article/category/img/height" />
    <image xlink:href="{$src}" x="{$x}" y="{$y}" width="{$width}" height="{$height}" id="image1231" preserveAspectRatio="none" />
  </xsl:if>   
   
  <path d="M 37.5 -163.6575 L 1162.5 -168.4089 L 1162.5 898.8418 L 325 898.8418 C 449.0157 739.3936 320.9645 -110.5079 37.5 -163.6575 z " style="fill:#063b71;fill-rule:evenodd;stroke-width:1.089693;fill-opacity:1.0000000" id="path621" />
  <path d="M 332.9625 780.2394 L 755.7749 780.2394 L 755.7749 759.9894 C 755.7749 747.4894 755.7749 734.9894 780.7749 734.9894 L 929.5612 735.0627 C 954.5612 735.0627 954.5612 747.5627 954.5612 760.0627 L 954.5612 780.3127 L 1130.776 780.2394 L 1130.776 897.4888 L 293.275 897.4888 C 312.3375 872.9888 325.4625 832.1147 332.9625 780.2394 z " style="fill:#ff7300;fill-rule:evenodd;" id="path773" />
  <text x="854.77496" y="773.75" style="font-size:38.000000px;font-weight:bold;text-anchor:middle;fill:#ffffff;font-family:Syntax" id="category" xml:space="preserve"><xsl:value-of select="/article/category/title" /></text>

  <text x="309" y="136.75" style="font-size:42.000000px;font-weight:bold;fill:#ee8c1d;font-family:Syntax" id="title" xml:space="preserve"><xsl:value-of select="/article/title" /></text>

  <ellipse cx="333.215424" cy="906.850403" rx="91.9814758" ry="124.015808" transform="matrix(1.292072,0,0,1.01488,-227.3336,-191.1417)" style="fill:#063b71;fill-rule:evenodd;stroke:#ffffff;stroke-width:17.884;" id="path614" />
  
  <path d="M 275.75 898.8125 L 325 898.8125 C 435.6875 756.5 345.5625 64.3125 123.4375 -120.6875 C 308.625 52.6875 406.9375 698.5 275.75 898.8125 z " style="fill:#ffffff;fill-rule:evenodd;stroke-width:1.089693;" id="path1245" />
  <g transform="matrix(0.207246,-7.543091e-2,7.543091e-2,0.207246,52.40055,673.1253)" id="g730">
    <path d="M 248.0315 258.6614 L 248.0315 435.8268 C 248.0315 503.1496 354.3307 503.1496 354.3307 435.8268 L 354.3307 258.6614 C 354.3307 191.3386 248.0315 191.3386 248.0315 258.6614 z " style="fill:#ee8c1d;fill-rule:evenodd;stroke-width:1;" id="path731" />
    <path d="M 283.4646 527.9528 L 283.4646 552.7559 L 242.0784 565.6838 L 241.6581 581.2339 L 360.5959 582.4948 L 360.5959 566.1041 L 318.8976 552.7559 L 318.8976 527.9528 C 343.7008 527.9528 393.3071 496.063 393.3071 439.3701 L 393.3071 382.6772 L 396.8504 379.1338 L 396.8504 318.8976 L 372.0472 318.8976 L 372.0472 439.3701 C 372.0472 527.9528 230.3149 531.4961 230.315 439.3701 L 230.315 318.8976 L 205.5118 318.8976 L 205.5118 379.1338 L 209.0551 382.6772 L 209.0551 439.3701 C 209.0551 496.063 258.6614 527.9528 283.4646 527.9528 z "
   style="fill:#ee8c1d;fill-rule:evenodd;stroke-width:1;" id="path732" />
  </g>
  <text x="143.34581" y="903.25354" transform="scale(0.81225,0.81225)" style="font-size:36;font-weight:normal;fill:#ffffff;font-family:Impact;" id="text-logo-midvliet">Midvliet</text>
  <text x="256.350769" y="918.831421" transform="scale(0.81225,0.81225)" style="font-size:90;font-weight:normal;fill:#a1bcd1;font-family:Rage Italic;" id="text-logo-t">T</text>
  <text x="287.590942" y="919.203003" transform="scale(0.81225,0.81225)" style="font-size:90;font-weight:normal;fill:#a1bcd1;font-family:Rage Italic;" id="text-logo-v">V</text>
  

  <path style="fill:#000000;fill-opacity:0.0000000;stroke:none" d="M 331.18750,199.37500 C 392.27152,397.94322 416.35701,631.98209 395.53125,779.37500 L 755.09572,779.37500 L 754.98100,733.58113 L 1049.2188,733.90599 L 1049.2188,199.37500 L 331.18750,199.37500 z " id="rect4253" sodipodi:nodetypes="ccccccc" />
  
  <flowRoot style="font-size:36.000000;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:start;line-height:113%;writing-mode:lr;text-anchor:start;fill:#ffffff;fill-opacity:1.0000000;stroke:none;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000;font-family:Syntax" id="flowRoot7074"><flowRegion id="flowRegion7076"><use x="0" y="0" xlink:href="#rect4253" id="use7078" /></flowRegion><xsl:apply-templates select="/article/para" /></flowRoot>
  <xsl:if test="/article/safebox = '1'">
     <rect width="940" height="529" x="100" y="88.75" style="fill:none;stroke:#000000;" id="safebox" />
   </xsl:if>
  </svg>
</xsl:template>
</xsl:stylesheet>
