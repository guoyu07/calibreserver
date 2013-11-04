<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="de"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="de"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="de"> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!--> <html class="no-js" lang="de"> <!--<![endif]-->
<head>
  <meta charset="utf-8">

  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/i/378 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title></title>
  <meta name="description" content="">

  <!-- Mobile viewport optimized: h5bp.com/viewport -->
  <meta name="viewport" content="width=device-width">

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory: mathiasbynens.be/notes/touch-icons -->
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
  <link rel="stylesheet" href="/static/css/bootstrap-responsive.min.css">
  <link rel="stylesheet" href="/static/css/style.css">

  <!-- More ideas for your <head> here: h5bp.com/d/head-Tips -->

  <!--[if lt IE 9]>
      <script src="js/libs/html5.js"></script>
  <![endif]-->

  <!-- All JavaScript at the bottom, except this Modernizr build.
       Modernizr enables HTML5 elements & feature detects for optimal performance.
       Create your own custom Modernizr build: www.modernizr.com/download/
  <script src="/static/views/js/libs/modernizr-2.6.2.min.js"></script>-->
</head>
<body>
<header>
</header>
<div class="overlay"></div>
  <div id="main" role="main" class="index">
    <div class="container">
      %count = 0
      %for entry in content:
        %if count == 0:
          <div class="row">
        %end if
        %count += 1

        <div class="span3">
          <div class="book" id="{{entry.id}}">
            <div class="cover">
              %if entry.has_cover:
              <img src="/download/{{entry.path}}/cover.jpg" />
              %end if
            </div>
            <div class="title">
            {{entry.title}}
          </div>
          </div>

        </div>



        %if count == 4:
          </div>
          %count = 0
        %end if
      %end for

  </div>
  </div>
  <footer>

  </footer>


  <!-- JavaScript at the bottom for fast page loading -->

  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
  <script src="/static/js/libs/jquery-1.8.1.min.js"></script>

  <!-- scripts concatenated and minified via build script -->
  <script src="/static/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    mywidth = $('.book').width()
    $('.book').hover(function(){
      pos = $(this).position();
      //console.log(pos)
      pos["position"] = "absolute"
      pos["width"] = mywidth;
      pos["z-index"] = 100;
      $(this).css(pos)
      $(this).children('.title').css({"white-space":"normal","height":"auto"})
      //$('.overlay').fadeIn()
    }, function(){
      //back to normal
      $(this).attr("style","")
      //$('.overlay').hide()
      $(this).children('.title').css({"white-space":"no-wrap","height":20,"z-index":0})
    })

    $('.book').click(function(){
      window.location = "/details/" + $(this).attr("id")
    })
  </script>
  <!-- end scripts -->


</body>
</html>
