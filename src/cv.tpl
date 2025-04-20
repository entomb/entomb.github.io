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
 
        <!-- load Ink's CSS -->
        <link rel="stylesheet" type="text/css" href="https://cdn.ink.sapo.pt/3.1.10/css/ink-flex.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.ink.sapo.pt/3.1.20/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="src/cv.css">

        <!-- load Ink's CSS for IE8 -->
        <!--[if lt IE 9 ]>
            <link rel="stylesheet" href="https://cdn.ink.sapo.pt/3.1.10/css/ink-ie.min.css" type="text/css" media="screen" title="no title" charset="utf-8">
        <![endif]-->
 
        <script type="text/javascript" src="https://cdn.ink.sapo.pt/3.1.10/js/modernizr.js"></script>
        <script type="text/javascript">
            Modernizr.load({
              test: Modernizr.flexbox,
              nope : 'https://cdn.ink.sapo.pt/3.1.10/css/ink-legacy.min.css'
            });
        </script>

    </head>

    <body>
 
    <!-- Why are you reading my code? if you are this interested you should contact me now! -->
        <div class="ink-grid">
            <div class="column-group gutters">
                 <%=content%> 
            </div>            
        </div> 
    </body>
</html>