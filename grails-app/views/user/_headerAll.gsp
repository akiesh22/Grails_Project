<!--logo start-->
<a href="<g:createLinkTo controller="user" action="index"/>" class="logo"><b>Sanjal</b></a>
<!--logo end-->
<div class="nav notify-row" id="top_menu">
    <!--  notification start -->
    <ul class="nav top-menu">
        <!-- settings start -->
        <li class="dropdown">
            <g:link controller="profile" action="followersList_profile" data-toggle="dropdown" class="dropdown-toggle">
                <i class="fa fa-hand-o-left" aria-hidden="true"></i>
                <span class="badge bg-theme" style="color:#b7130e"><g:pageProperty
                        name="page.followers"/></span>
                <span>followers</span>
            </g:link>
        </li>
        <!-- settings end -->
        <!-- inbox dropdown start-->
        <li id="header_inbox_bar" class="dropdown">
            <g:link controller="profile" action="followingList_profile" data-toggle="dropdown" class="dropdown-toggle">
                <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                <span class="badge bg-theme" style="color:#b7130e"><g:pageProperty
                        name="page.following"/></span>
                <span>following</span>
            </g:link>
        </li>
        <!-- inbox dropdown end -->
    </ul>
    <!--  notification end -->
</div>

<div class="dropdown">
    <button class="dropbtn"><g:if test="${user?.profile?.picture == null}">
        <g:link controller="profile" action="index"><img
                src="<g:createLinkTo dir="images" file="skin/noimage.png"/>" height="30"
                width="30">&nbsp;&nbsp;&nbsp;Anonymous</g:link>
    </g:if>
        <g:else>
            <g:link controller="profile" action="index"><img
                    src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}"
                    height="30"
                    width="30"></g:link></g:else>&nbsp;&nbsp;&nbsp;${user?.profile?.fullName}&nbsp;&nbsp;<i
            class="fa fa-angle-down" aria-hidden="true"></i></button>

    <div class="dropdown-content">
        <a><g:link controller="profile" action="edit_profile"> <i class="fa fa-user"></i>Edit Profile</g:link></a>
        <a href="<g:createLinkTo controller="user" action="logout"/>"><i class="fa fa-key"></i>Log Out</a>
    </div>
</div>