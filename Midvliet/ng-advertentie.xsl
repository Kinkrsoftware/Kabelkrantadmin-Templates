<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output omit-xml-declaration="yes" media-type="image/svg+xml" doctype-public="-//W3C//DTD SVG 20001102//EN" doctype-system="http://www.w3.org/TR/2000/CR-SVG-20001102/DTD/svg-20001102.dtd" standalone="no" indent="no" method="xml"/>
<xsl:template match="/">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0" x="0" y="0" width="900pt" height="675pt" id="svg602" xml:space="preserve">
   <rect style="font-size:12;fill:#000000;fill-rule:evenodd;stroke-width:1;fill-opacity:1;" id="rect703" width="1124.99988" height="843.75" x="0" y="0" />
   <xsl:if test="/article/photo != ''">
      <xsl:variable name="photo" select="/article/photo" />
      <image xlink:href="{$photo}" x="37.5" y="45" width="1049.99976" height="787.500305" style="font-size:12;" id="image680" preserveAspectRatio="none"  />
   </xsl:if>
   <xsl:if test="/article/safebox = '1'">
      <rect id="safebox" height="695" width="940" x="100" y="88.75" style="fill: none; stroke: #000000; stroke-width: 2px;" />
   </xsl:if>	   
</svg>
</xsl:template>
</xsl:stylesheet>
