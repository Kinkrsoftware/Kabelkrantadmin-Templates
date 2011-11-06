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
  

  	 <g id="Kerstmuts" transform="matrix(6.911222e-2,-2.121235e-2,2.345461e-2,7.701635e-2,88.10619,667.3482)" inkscape:label="#g5105"><path sodipodi:nodetypes="ccczcczzzz" id="path1403"
       d="M 640.00000,533.79075 C 643.27381,560.81456 621.66667,574.02885 602.85715,582.36219 C 515.23810,597.60028 428.33333,597.12409 340.00000,593.79075 C 340.00000,593.79075 232.32142,588.07646 219.28571,575.21932 C 205.88799,562.00514 287.85714,488.07647 287.85714,488.07647 C 312.38095,465.93361 338.33333,443.07647 367.85714,428.07647 C 394.04762,413.31457 408.51190,402.95742 446.42857,396.64790 C 484.34524,390.33838 540.14123,395.43001 555.00000,405.21932 C 570.17858,415.21932 579.76019,419.56446 592.85714,442.36218 C 605.77322,464.84505 636.72619,506.76694 640.00000,533.79075 z "
       style="fill:#ff0000;fill-opacity:1.0000000;fill-rule:evenodd;stroke:#000000;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000" /><path
       sodipodi:nodetypes="czzzzz"
       id="path3591"
       d="M 567.85714,412.36218 C 594.06669,423.40291 430.90365,508.09381 413.57143,475.21932 C 396.65453,443.13257 318.57143,470.93361 311.07143,471.64790 C 303.60521,472.35897 346.42858,440.39790 361.42857,433.07647 C 377.28974,425.33471 410.71428,400.57647 459.28571,396.64790 C 507.85714,392.71932 541.34397,401.19355 567.85714,412.36218 z "
       style="fill:#c70000;fill-opacity:1.0000000;fill-rule:evenodd;stroke:#000000;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000" /><path
       sodipodi:nodetypes="czzzzzzzz"
       id="path4319"
       d="M 149.28571,604.50504 C 132.34393,603.61336 114.10715,608.07646 98.571429,626.64789 C 83.035716,645.21932 82.857143,666.64789 87.857143,679.50504 C 92.857143,692.36219 104.10714,716.46933 115.00000,723.79075 C 126.38967,731.44610 140.53572,734.50504 163.57143,728.07647 C 186.60715,721.64790 198.82184,714.23054 205.71429,697.36218 C 212.50001,680.75504 213.96192,668.27707 210.00000,648.79075 C 206.06889,629.45597 196.26014,621.17189 182.85714,615.21933 C 169.73239,609.39035 166.25000,605.39790 149.28571,604.50504 z "
       style="fill:#ffffff;fill-opacity:1.0000000;fill-rule:evenodd;stroke:#000000;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000" /><path
       sodipodi:nodetypes="czzzzzzzzzzzzzzzz"
       id="path1405"
       d="M 642.85714,533.32157 C 644.11526,530.02147 650.71429,534.75014 650.71429,536.89300 C 650.71429,538.32157 646.07143,540.28585 648.57143,553.32157 C 651.07143,566.35728 650.71429,569.92871 657.85715,586.17872 C 665.15730,602.78659 665.53572,609.39300 658.57143,626.17871 C 651.60714,642.96443 635.17519,655.12246 632.85714,656.17872 C 629.96334,657.49734 539.28572,681.53586 480.71429,684.03586 C 422.85715,686.53586 371.96429,681.89300 307.14286,674.75014 C 242.32143,667.60728 233.70552,658.67532 221.42857,655.46443 C 209.82142,652.42872 208.92857,643.50015 207.14285,633.32158 C 205.23545,622.44936 203.28717,596.95075 205.71429,583.32157 C 208.03572,570.28585 214.10715,574.21443 221.42857,573.32157 C 229.40715,572.34857 244.46428,583.85728 297.85714,588.32157 C 351.25000,592.78585 372.85714,591.89300 435.00000,591.17871 C 497.14286,590.46443 501.60714,590.10729 546.42857,585.46443 C 591.25000,580.82157 589.46428,585.64300 612.85714,571.89300 C 636.25000,558.14300 641.35853,537.25252 642.85714,533.32157 z "
       style="fill:#ffffff;fill-opacity:1.0000000;fill-rule:evenodd;stroke:#000000;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000" /><path
       sodipodi:nodetypes="czzzzzzzzzzzz"
       id="path2134"
       d="M 571.07143,416.29076 C 573.44019,422.55105 536.10964,404.29305 525.00000,401.64790 C 513.74999,398.96933 477.49999,386.46932 417.85714,406.64790 C 357.99401,426.90100 310.60822,466.99635 272.14286,507.36218 C 219.05405,563.07397 187.87336,602.25764 185.00000,613.79076 C 182.29387,624.65263 150.35750,611.31341 148.57143,602.36218 C 146.80737,593.52129 155.35714,533.79076 155.00000,502.36218 C 154.68996,475.07813 172.01035,449.08265 179.28571,431.64790 C 186.19978,415.07896 215.53571,385.75504 249.28571,362.36218 C 283.03571,338.96932 287.51745,337.11612 312.85714,333.07647 C 337.50000,329.14790 364.10714,335.21933 402.14286,349.50504 C 440.17858,363.79075 456.42857,386.82647 511.42857,393.79076 C 566.52207,400.76689 568.57143,409.68361 571.07143,416.29076 z "
       style="fill:#ff0000;fill-opacity:1.0000000;fill-rule:evenodd;stroke:#000000;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000" /></g>

	<path style="fill:#000000;fill-opacity:0.0000000;stroke:none" d="M 331.18750,199.37500 C 392.27152,397.94322 416.35701,631.98209 395.53125,779.37500 L 755.09572,779.37500 L 754.98100,733.58113 L 1049.2188,733.90599 L 1049.2188,199.37500 L 331.18750,199.37500 z " id="rect4253" sodipodi:nodetypes="ccccccc" />
  
  <flowRoot style="font-size:36.000000;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:start;line-height:113%;writing-mode:lr;text-anchor:start;fill:#ffffff;fill-opacity:1.0000000;stroke:none;stroke-width:1.0000000px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1.0000000;font-family:Syntax" id="flowRoot7074"><flowRegion id="flowRegion7076"><use x="0" y="0" xlink:href="#rect4253" id="use7078" /></flowRegion><xsl:apply-templates select="/article/para" /></flowRoot>
  <xsl:if test="/article/safebox = '1'">
     <rect width="940" height="695" x="100" y="88.75" style="fill:none;stroke:#000000;" id="safebox" />
   </xsl:if>
  </svg>
</xsl:template>
</xsl:stylesheet>

