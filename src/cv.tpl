<!DOCTYPE html>
<html lang="en"> 
    <head> 
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Jonathan Tavares</title>
        <meta name="description" content="">
        <meta name="author" content="ink, cookbook, recipes">
        <meta name="HandheldFriendly" content="True">
        <meta name="MobileOptimized" content="320">
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

        <!-- Place favicon.ico and apple-touch-icon(s) here  -->
        

        <!-- load Ink's CSS -->
        <link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/3.1.2/css/ink-flex.min.css">
        <link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/3.1.2/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="src/cv.css">

        <!-- load Ink's CSS for IE8 -->
        <!--[if lt IE 9 ]>
            <link rel="stylesheet" href="http://fastly.ink.sapo.pt/3.1.2/css/ink-ie.min.css" type="text/css" media="screen" title="no title" charset="utf-8">
        <![endif]-->

        <!-- test browser flexbox support and load legacy grid if unsupported -->
        <script type="text/javascript" src="http://fastly.ink.sapo.pt/3.1.2/js/modernizr.js"></script>
        <script type="text/javascript">
            Modernizr.load({
              test: Modernizr.flexbox,
              nope : 'http://fastly.ink.sapo.pt/3.1.2/css/ink-legacy.min.css'
            });
        </script>


        <style>
            .screen-size-helper {
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                width: 100%;
                line-height: 1.6em;
                font-size: 1em;
                padding: 0.5333333333333333em 0.8em;
                background: rgba(0, 0, 0, 0.7);
                z-index: 100;
            }
            .screen-size-helper .title,
            .screen-size-helper ul {
                color: white;
                text-shadow: 0 1px 0 #000000;
            }
            .screen-size-helper .title {
                font-size: inherit;
                line-height: inherit;
                float: left;
                text-transform: uppercase;
                font-weight: 500;
            }
            .screen-size-helper ul {
                float: right;
                margin: 0;
                padding: 0;
                line-height: inherit !important;
            }
            .screen-size-helper ul li {
                padding: 0;
                margin: 0;
                text-transform: uppercase;
                font-weight: bold;
                font-size: inherit !important;
            }
            .screen-size-helper ul li.tiny {
              color: #0f75da;
            }
            .screen-size-helper ul li.small {
              color: #4a9b17;
            }
            .screen-size-helper ul li.medium {
              color: #ff9c00;
            }
            .screen-size-helper ul li.large {
              color: #c91111;
            }
            .screen-size-helper ul li.xlarge {
              color: white;
            }
        </style>

    </head>

    <body>

         <!--[if lte IE 9 ]>
        <div class="ink-alert basic" role="alert">
            <button class="ink-dismiss">&times;</button>
            <p>
                <strong>You are using an outdated Internet Explorer version.</strong>
                Please <a href="http://browsehappy.com/">upgrade to a modern browser</a> to improve your web experience.
            </p>
        </div>
        <![endif]-->

        <div class="ink-grid">
            <div class="column-group gutters">
                 <%=content%> 
            </div>
        </div>

       

        <!-- Add your site or application content here -->

        <div class="screen-size-helper">
            <p class="title">Screen size:</p>
            <ul class="unstyled">
                <li class="hide-all show-tiny tiny">TINY</li>
                <li class="hide-all show-small small">SMALL</li>
                <li class="hide-all show-medium medium">MEDIUM</li>
                <li class="hide-all show-large large">LARGE</li>
                <li class="hide-all show-xlarge xlarge">XLARGE</li>
            </ul>
        </div>

    </body>
</html>