<!DOCTYPE html>
<html style="
height: 100%;
">
<head>

    <g:javascript library="jquery"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Sanjal</title>

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
    <r:layoutResources/>
</head>

<body style="
height: 100%;
">

<section id="container">
    <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
    <g:render template="/user/headerAll"></g:render>
        %{--<!--logo start-->--}%
        %{--<a href="<g:createLinkTo controller="user" action="index"/>" class="logo"><b>Sanjal</b></a>--}%
        %{--<!--logo end-->--}%
        %{--<div class="nav notify-row" id="top_menu">--}%
            %{--<!--  notification start -->--}%
            %{--<ul class="nav top-menu">--}%
                %{--<!-- settings start -->--}%
                %{--<li class="dropdown">--}%
%{--<g:link controller="profile" action="followersList_profile" data-toggle="dropdown" class="dropdown-toggle">--}%
                        %{--<i class="fa fa-hand-o-left" aria-hidden="true"></i>--}%
                        %{--<span class="badge bg-theme" style="color:#b7130e"><g:pageProperty--}%
                                %{--name="page.followers"/></span>--}%
                        %{--<span>followers</span>--}%
                    %{--</g:link>--}%
                %{--</li>--}%
                %{--<!-- settings end -->--}%
                %{--<!-- inbox dropdown start-->--}%
                %{--<li id="header_inbox_bar" class="dropdown">--}%
                    %{--<g:link controller="profile" action="followingList_profile" data-toggle="dropdown" class="dropdown-toggle">--}%
                        %{--<i class="fa fa-hand-o-right" aria-hidden="true"></i>--}%
                        %{--<span class="badge bg-theme" style="color:#b7130e"><g:pageProperty--}%
                                %{--name="page.following"/></span>--}%
                        %{--<span>following</span>--}%
                    %{--</g:link>--}%
                %{--</li>--}%
                %{--<!-- inbox dropdown end -->--}%
            %{--</ul>--}%
            %{--<!--  notification end -->--}%
        %{--</div>--}%

        %{--<div class="dropdown">--}%
            %{--<button class="dropbtn"><g:if test="${user?.profile?.picture == null}">--}%
                %{--<g:link controller="profile" action="index"><img--}%
                        %{--src="<g:createLinkTo dir="images" file="skin/noimage.png"/>" height="30"--}%
                        %{--width="30">&nbsp;&nbsp;&nbsp;Anonymous</g:link>--}%
            %{--</g:if>--}%
                %{--<g:else>--}%
                    %{--<g:link controller="profile" action="index"><img--}%
                            %{--src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}"--}%
                            %{--height="30"--}%
                            %{--width="30"></g:link></g:else>&nbsp;&nbsp;&nbsp;${user?.profile?.fullName}&nbsp;&nbsp;<i--}%
                    %{--class="fa fa-angle-down" aria-hidden="true"></i></button>--}%

            %{--<div class="dropdown-content">--}%
                %{--<a><g:link controller="profile" action="edit_profile"> <i class="fa fa-user"></i>Edit Profile</g:link></a>--}%
                %{--<a href="<g:createLinkTo controller="user" action="logout"/>"><i class="fa fa-key"></i>Log Out</a>--}%
            %{--</div>--}%
        %{--</div>--}%
    </header>
    <!--header end-->

    <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <div class="img-change">
                    <g:if test="${user?.profile?.picture == null}">
                        <g:link controller="profile" action="profile_message"><img
                                src="<g:createLinkTo dir="images" file="skin/noimage.png"/>" height="89" width="137">
                        </g:link>
                    </g:if>
                    <g:else>
                        <g:link controller="profile" action="profile_message"><img
                                src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}"
                                height="89" width="137"></g:link>
                    %{--<img src="${createLink(controller:'profile',action:'display_picture',id:user.id)}">--}%
                    </g:else>
                </div>
                %{--<p class="centered"><a href="profile.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>--}%
                <h5 class="centered"><g:pageProperty name="page.fullName"/></h5>

                <li class="mtj">
                    <a><g:link class="activej" controller="profile" action="profile_message">
                        <i class="fa fa-list-ol" aria-hidden="true"></i>
                        <span>Your Thoughts</span>
                    </g:link>
                    </a>
                </li>
                <g:if test="${user?.profile?.id==null||user?.profile?.fullName==null||user?.profile?.address==null||user?.profile?.dob==null||user?.profile?.sex==null}">
                    <li class="mtj">
                        <a><g:link class="activej" controller="profile" action="edit_profile">
                            <i class="fa fa-list-ol" aria-hidden="true"></i>
                            <span>Complete Your Profile</span>
                        </g:link>
                        </a>
                    </li>
                </g:if>

            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">

            <div class="row">
                <div class="col-lg-9 main-chart">

                    <g:layoutBody/>
                </div><!-- /col-lg-9 END SECTION MIDDLE -->


            <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

                <div class="col-lg-3 ds" style="width: 25%">
                <!--COMPLETED ACTIONS DONUTS CHART-->
                <h3>People You May Know</h3>
                <div id="people">
                        <g:each in="${peopleYou}" var="peopleYo">
                           <g:if test="${user.id!=peopleYo.id&&!user?.following?.id.contains(peopleYo.id)}">
                            <div class="desc">
                                <div class="thumb">
                                    <g:if test="${peopleYo?.profile?.picture}">
                                        <g:link controller="profile"
                                                action="index"><img width="68px" height="68px" align="" src="${createLink(controller: 'profile', action: 'display_picture', id:peopleYo.id)}">
                                        </g:link>
                                    </g:if>
                                </div>
                                <g:form>
                                    <a href="#">${peopleYo?.profile?.fullName}</a><br> <div class="details"><p><muted><g:hiddenField name="follow"
                                                                                                                               value="${peopleYo?.id}"></g:hiddenField>
                                <g:submitToRemote value="Follow"
                                                  url="[controller: 'user', action: 'followUser']" update="people"></g:submitToRemote>
                                </muted></p></div>
                                </g:form>
                            </div>
                           </g:if>
                        </g:each>
                    </div>
                    <h3>Some Random Users</h3>
                <div id="people1">
                    <g:each in="${userList}" var="ul">
                        <div class="desc">
                        <div class="thumb">
                            <g:if test="${ul?.profile?.picture}">

                                <g:link><img width="68px" height="68px" align="" src="${createLink(controller: 'profile', action: 'display_picture', id: ul.id)}"
                                </g:link>
                                </div>
                                <g:form controller="profile" action="view_profile" >
                                    <g:hiddenField name="profileid" value="${ul?.id}"/>
                                <g:submitButton name="button" value="${ul?.profile?.fullName}" class="btn btn-default btn-xs"></g:submitButton><br>
                                </g:form>
                                <g:form>
                                    <g:if test="${user.following.id.contains(ul.id)}">
                                       <div class="details"><p><muted><g:actionSubmit value="Followed"
                                                                             disabled="Followed"></g:actionSubmit></muted></p></div>
                                    </g:if>
                                    <g:else>
                                         <div class="details"><p><muted><g:hiddenField name="follow"
                                                                            value="${ul?.id}"></g:hiddenField>
                                        <g:submitToRemote value="Follow"
                                                          url="[controller: 'user', action: 'followUser']" update="people1"></g:submitToRemote>
                                        </muted></p></div>
                                    </g:else>
                                </g:form>
                                <g:form>

                                    <div class="details"><p><muted><g:hiddenField name="unfollow"
                                                                        value="${ul?.id}"></g:hiddenField>
                                    <g:submitToRemote value="Un-Follow"
                                                      url="[controller: 'user', action: 'unFollowUser']" update="people1"></g:submitToRemote>
                                    </muted></p></div></g:form>
                            </g:if>
                        </div>
                    </g:each>

                <!-- USERS ONLINE SECTION -->
                </div><!-- /col-lg-3 -->
            </div>
            </div>
            <! --/row -->
        </section>
    </section>
    %{--<footer class="site-footer">--}%
        %{--<div class="text-center">--}%
            %{--2017-Sanjal--}%
            %{--<a href="index.html#" class="go-top">--}%
                %{--<i class="fa fa-angle-up"></i>--}%
            %{--</a>--}%
        %{--</div>--}%
    %{--</footer>--}%
</section>
<!--main content end-->
<!--footer start-->

<!--footer end-->

<!-- js placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery-1.8.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="assets/js/jquery.scrollTo.min.js"></script>
<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="assets/js/jquery.sparkline.js"></script>


<!--common script for all pages-->
<script src="assets/js/common-scripts.js"></script>

<script type="text/javascript" src="/myTemplate/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="/myTemplate/js/gritter-conf.js"></script>

<!--script for this page-->
<script src="assets/js/sparkline-chart.js"></script>
<script src="assets/js/zabuto_calendar.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Welcome to Sanjal!',
            // (string | mandatory) the text inside the notification
            text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
            // (string | optional) the image to display on the left
            image: 'assets/img/ui-sam.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
    });
</script>

<script type="application/javascript">
    $(document).ready(function () {
        $("#date-popover").popover({html: true, trigger: "manual"});
        $("#date-popover").hide();
        $("#date-popover").click(function (e) {
            $(this).hide();
        });

        $("#my-calendar").zabuto_calendar({
            action: function () {
                return myDateFunction(this.id, false);
            },
            action_nav: function () {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [
                {type: "text", label: "Special event", badge: "00"},
                {type: "block", label: "Regular event",}
            ]
        });
    });


    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>
<r:layoutResources/>
</body>
</html>
