<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output omit-xml-declaration="yes" media-type="image/svg+xml" doctype-public="-//W3C//DTD SVG 20001102//EN" doctype-system="http://www.w3.org/TR/2000/CR-SVG-20001102/DTD/svg-20001102.dtd" standalone="no" indent="no" method="xml"/>
<xsl:template match="/">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0" x="0" y="0" width="1125" height="675pt" id="svg602" xml:space="preserve">
   <rect style="font-size:12;fill:#063b71;fill-rule:evenodd;stroke-width:1;fill-opacity:1;" id="rect703" width="1124.99988" height="843.75" x="0" y="0" />
   <xsl:if test="/article/photo != ''">
      <xsl:variable name="photo" select="/article/photo" />
      <image xlink:href="{$photo}" transform="matrix(0,-1,1,0,0,0)" y="287.5" height="590" width="787.500305" x="-825" style="font-size:12;" id="image680" preserveAspectRatio="none" />
   </xsl:if>
   <xsl:if test="/article/title != ''">
     <g id="g641">
       <rect style="font-size:12;fill:#ee8c1d;fill-opacity:0.7216;fill-rule:evenodd;" id="rect609" width="1125" height="65.7499771" x="0" y="711.25" />
       <text style="font-size:45;font-style:italic;font-weight:normal;fill:#ffffff;stroke-width:1;font-family:Syntax;text-anchor:start;writing-mode:lr;" x="115" y="707.88548" id="text632" xml:space="preserve">
         <tspan x="100" y="757.885498" id="tspan701"><xsl:value-of select="/article/title" /></tspan>
       </text>
     </g>
   </xsl:if>
   <xsl:if test="/article/safebox = '1'">
     <rect id="safebox" height="695" width="940" x="100" y="88.75" style="fill: none; stroke: #000000; stroke-width: 2px;" />
   </xsl:if>	   
</svg>
</xsl:template>
</xsl:stylesheet>
