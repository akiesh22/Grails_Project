<!DOCTYPE html>
<html lang="en">
<head>
    <g:javascript library="jquery"/>
    <title>Sanjal</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png">
    <!--Loading bootstrap css-->
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/jquery-ui-1.10.4.custom.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/font-awesome.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/bootstrap.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/animate.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/all.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/main.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/style-responsive.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/zabuto_calendar.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/pace.css"/>">
    <link type="text/css" rel="stylesheet" href="<g:createLinkTo dir="profile" file="styles/jquery.news-ticker.css"/>">
    %{--from dashgum--}%
    <!-- Bootstrap core CSS -->
    <link href="<g:createLinkTo dir="myTemplate" file="css/bootstrap.css"/>" rel="stylesheet">
    <!--external css-->
    <link href="<g:createLinkTo dir="myTemplate" file="font-awesome/css/font-awesome.css"/>" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css"
          href="<g:createLinkTo dir="myTemplate" file="js/gritter/css/jquery.gritter.css"/>">
    <link href="<g:createLinkTo dir="myTemplate" file="css/style1.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<g:createLinkTo dir="myTemplate" file="css/style1.css"/>" rel="stylesheet">
    <link href="<g:createLinkTo dir="myTemplate" file="css/style-responsive.css"/>" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    %{--end dashgum--}%
<r:layoutResources/>
</head>
<body>
    <div>
        <g:layoutBody/>
    </div>
    <script src="script/jquery-1.10.2.min.js"></script>
    <script src="script/jquery-migrate-1.2.1.min.js"></script>
    <script src="script/jquery-ui.js"></script>
    <script src="script/bootstrap.min.js"></script>
    <script src="script/bootstrap-hover-dropdown.js"></script>
    <script src="script/html5shiv.js"></script>
    <script src="script/respond.min.js"></script>
    <script src="script/jquery.metisMenu.js"></script>
    <script src="script/jquery.slimscroll.js"></script>
    <script src="script/jquery.cookie.js"></script>
    <script src="script/icheck.min.js"></script>
    <script src="script/custom.min.js"></script>
    <script src="script/jquery.news-ticker.js"></script>
    <script src="script/jquery.menu.js"></script>
    <script src="script/pace.min.js"></script>
    <script src="script/holder.js"></script>
    <script src="script/responsive-tabs.js"></script>
    <script src="script/jquery.flot.js"></script>
    <script src="script/jquery.flot.categories.js"></script>
    <script src="script/jquery.flot.pie.js"></script>
    <script src="script/jquery.flot.tooltip.js"></script>
    <script src="script/jquery.flot.resize.js"></script>
    <script src="script/jquery.flot.fillbetween.js"></script>
    <script src="script/jquery.flot.stack.js"></script>
    <script src="script/jquery.flot.spline.js"></script>
    <script src="script/zabuto_calendar.min.js"></script>

    <script src="script/index.js"></script>
    <!--LOADING SCRIPTS FOR CHARTS-->
    <script src="script/highcharts.js"></script>
    <script src="script/data.js"></script>
    <script src="script/drilldown.js"></script>
    <script src="script/exporting.js"></script>
    <script src="script/highcharts-more.js"></script>
    <script src="script/charts-highchart-pie.js"></script>
    <script src="script/charts-highchart-more.js"></script>
    <!--CORE JAVASCRIPT-->
    <script src="script/main.js"></script>
    <script>        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-145464-12', 'auto');
        ga('send', 'pageview');


</script>
<script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                        .attr('src', e.target.result)
                        .width(150)
                        .height(150);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>

<r:layoutResources/>
</body>
</html>
