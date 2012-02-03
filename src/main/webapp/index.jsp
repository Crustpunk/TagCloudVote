<!--%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <!--[if lt IE 9]><script type="text/javascript" src="excanvas.js"></script><![endif]-->
        <script src="tagcanvas.js" type="text/javascript"></script>
        <script type="text/javascript">
            //<![CDATA[
            window.onload = function() {
                TagCanvas.interval = 20;
                TagCanvas.textFont = 'Impact,Arial Black,sans-serif';
                TagCanvas.textColour = '#00f';
                TagCanvas.textHeight = 25;
                TagCanvas.outlineColour = '#f96';
                TagCanvas.outlineThickness = 5;
                TagCanvas.maxSpeed = 0.04;
                TagCanvas.minBrightness = 0.1;
                TagCanvas.depth = 0.92;
                TagCanvas.pulsateTo = 0.2;
                TagCanvas.pulsateTime = 0.75;
                TagCanvas.initial = [0.1,-0.1];
                TagCanvas.decel = 0.98;
                TagCanvas.reverse = true;
                TagCanvas.hideTags = false;
                TagCanvas.shadow = '#ccf';
                TagCanvas.shadowBlur = 3;
                TagCanvas.weight = true;
                TagCanvas.weightFrom = 'data-weight';
                try {
                    TagCanvas.Start('myCanvas','weightTags',{weightMode:'both'});
                } catch(e) {
                    alert('Exception while trying to start dynamic Canvas')
                }
                var i, g, gc = document.getElementById('gradient').getContext('2d');
                g = gc.createLinearGradient(0, 0, 0, gc.canvas.height);
                for(i in TagCanvas.weightGradient)
                    g.addColorStop(i, TagCanvas.weightGradient[i]);
                gc.fillStyle = g;
                gc.fillRect(0,0,gc.canvas.width,gc.canvas.height);
            };
            var g1 = {
                0:   'red',
                0.5: 'orange',
                1:   'rgba(0,0,0,0.1)'
            };
            //]]>
        </script>


        <style type="text/css">
            <!--
            /**
             * GeSHi (C) 2004 - 2007 Nigel McNie, 2007 - 2008 Benny Baumann
             * (http://qbnz.com/highlighter/ and http://geshi.org/)
            */
            .javascript  {font-family:monospace;}
            .javascript .imp {font-weight: bold; color: red;}
            .javascript .kw1 {color: #000066; font-weight: bold;}
            .javascript .kw2 {color: #003366; font-weight: bold;}
            .javascript .kw3 {color: #000066;}
            .javascript .co1 {color: #006600; font-style: italic;}
            .javascript .co2 {color: #009966; font-style: italic;}
            .javascript .coMULTI {color: #006600; font-style: italic;}
            .javascript .es0 {color: #000099; font-weight: bold;}
            .javascript .br0 {color: #009900;}
            .javascript .sy0 {color: #339933;}
            .javascript .st0 {color: #3366CC;}
            .javascript .nu0 {color: #CC0000;}
            .javascript .me1 {color: #660066;}
            .javascript span.xtra { display:block; }

            p.weighty {
                width: 310px;
                padding: 1em 20px;
                float: left;
                background-color: #fff;
                border: 4px solid #aaa;
                border-radius: 20px;
                -moz-border-radius: 20px;
            }
            ul.weighted {
                float: left;
                display: block;
                width: 280px;
                overflow: auto;
                padding: 20px;
                margin: 0 10px 20px 0;
                background-color: #fff;
                border: 4px solid #aaa;
                border-radius: 20px;
                -moz-border-radius: 20px;
            }
            ul.weighted li {
                display: inline;
            }
            ul.weighted li a {
                margin: 2px;
            }
            canvas#gradient {
                float: right;
                border:1px solid #000;
                margin: 2px 20px
            }
            -->
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Umfragen</h1>
        <!-- todo ... data-weight berechnen sowie + und - symbole für up und down vote -->
        <!-- Alle Umfragen die es gibt anzeigen. Pro TagCloud einen Canvaas rendern -->
        <!-- Alle Javascripte und CSS auslagern -->
        <!-- neue Form fürs eintragen per xmlhttprequest und REST POST -->
        <!-- http://stackoverflow.com/questions/1255948/post-data-in-json-format-with-javascript -->
        
    <canvas width="600" height="600" id="myCanvas">
        <ul class="weighted" style="font-size: 50%" id="weightTags">
            <li><a href="#" data-weight="14" style="font-size: 2.83ex">1000</a></li>
            <li><a href="#" data-weight="18" style="font-size: 3.61ex">background</a></li>
            <li><a href="#" data-weight="40" style="font-size: 9.64ex">canvas</a></li>
            <li><a href="#" data-weight="22" style="font-size: 4.47ex">chart</a></li>
            <li><a href="#" data-weight="18" style="font-size: 3.46ex">charts</a></li>
            <li><a href="#" data-weight="60" style="font-size: 12.32ex">cloud</a></li>
            <li><a href="#" data-weight="18" style="font-size: 3.74ex">clouds</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.16ex">example</a></li>
            <li><a href="#" data-weight="18" style="font-size: 3.74ex">goat</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.16ex">goat1000</a></li>
            <li><a href="#" data-weight="30" style="font-size: 8.36ex">graph</a></li>
            <li><a href="#" data-weight="21" style="font-size: 4.36ex">graphs</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.32ex">html</a></li>
            <li><a href="#" data-weight="50" style="font-size: 10.68ex">html5</a></li>
            <li><a href="new.html" data-weight="70" style="font-size: 10.68ex">NEW</a></li>
            <li><a href="#" data-weight="23" style="font-size: 4.69ex">image</a></li>
            <li><a href="#" data-weight="24" style="font-size: 4.8ex">javascript</a></li>
            <li><a href="#" data-weight="26" style="font-size: 5.47ex">jpeg</a></li>
            <li><a href="#" data-weight="13" style="font-size: 2.65ex">jpegsaver</a></li>
            <li><a href="#" data-weight="32" style="font-size: 8.77ex">jquery</a></li>
            <li><a href="#" data-weight="13" style="font-size: 2.65ex">lib</a></li>
            <li><a href="#" data-weight="27" style="font-size: 5.92ex">library</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.32ex">link</a></li>
            <li><a href="#" data-weight="65" style="font-size: 13.23ex">php</a></li>
            <li><a href="#" data-weight="14" style="font-size: 2.83ex">plugin</a></li>
            <li><a href="#" data-weight="22" style="font-size: 4.58ex">saver</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.32ex">screensaver</a></li>
            <li><a href="#" data-weight="13" style="font-size: 2.65ex">script</a></li>
            <li><a href="#" data-weight="65" style="font-size: 13ex">svg</a></li>
            <li><a href="#" data-weight="21" style="font-size: 4.47ex">svggraph</a></li>
            <li><a href="#" data-weight="62" style="font-size: 12.44ex">tag</a></li>
            <li><a href="#" data-weight="13" style="font-size: 2.65ex">tagcanvas</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.46ex">tagcloud</a></li>
            <li><a href="#" data-weight="13" style="font-size: 2.65ex">text</a></li>
            <li><a href="#" data-weight="17" style="font-size: 3.16ex">word</a></li>
        </ul>
    </canvas>
</body>
</html>
