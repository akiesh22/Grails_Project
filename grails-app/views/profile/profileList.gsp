<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2/10/2017
  Time: 7:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style>
    .image1 {
        position: absolute;
        visibility: visible;
        left: 530px;
        top: 69px;
        height: 142px;
        width: 195px;
        z-index: 200;

    }
    </style>
    <meta name="layout" content="profileTemplate"/>
    <title></title>

</head>

<body>
%{--<g:uploadForm controller="profile">--}%
%{--<g:textField name="fullName" placeholder="Full Name"></g:textField><br>--}%
%{--<g:textField name="address" placeholder="Address"></g:textField><br>--}%
%{--<g:textField name="dob" placeholder="D/M/Y"></g:textField><br>--}%
%{--<g:textField name="sex" placeholder="Gender"></g:textField><br>--}%
%{--<div class="image1">--}%
%{--<img id="blah" name="imag" src="#" alt="your image" >--}%
%{--<input type='file' name="picture" accept="image/*" onchange="readURL(this);">--}%
%{--</div>--}%
%{--<input type='file' name="picture" accept="image/*">--}%
%{--<g:actionSubmit value="SAVE" action="save_profile"></g:actionSubmit>--}%
%{--</g:uploadForm>--}%
<div>
    <!--BEGIN THEME SETTING-->

    <!--END THEME SETTING-->
    <!--BEGIN BACK TO TOP-->
    <a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
    <!--END BACK TO TOP-->
    <!--BEGIN TOPBAR-->
    <!--END TOPBAR-->
    <div id="wrapper">
        <!--BEGIN SIDEBAR MENU-->


        <!--BEGIN TITLE & BREADCRUMB PAGE-->
        <!--END TITLE & BREADCRUMB PAGE-->
        <!--BEGIN CONTENT-->
        <div class="page-content">
            <div id="tab-general">
                <div class="row mbl">
                    <div class="col-lg-12">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="row mtl">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="text-center mbl"><div class="image1">
                                                <g:if test="${user?.profile?.picture == null}">
                                                    <g:link controller="profile" action="index"><img id="blah"
                                                                                                     name="imag"
                                                                                                     src="<g:createLinkTo
                                                                                                             dir="images"
                                                                                                             file="skin/noimage.png"/>"
                                                                                                     height="150"
                                                                                                     width="150"
                                                    </g:link>
                                                </g:if>
                                                <g:else test="${user?.profile?.picture != null}">
                                                    <img  id="blah" name="imag" src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}" height="150" width="150"
                                                </g:else>
                                            %{--<img id="blah" name="imag" src="#" alt="your image" >--}%
                                            </div></div></div>
                                    </div>
                                    <table class="table table-striped table-hover">
                                        <tbody>
                                        <tr>
                                            <td>Name</td>
                                            <td><g:if test="${user?.profile?.fullName==null}">Anonymous</g:if>
                                            <g:else>${user?.profile?.fullName}</g:else></td>
                                        </tr>
                                        <tr>
                                            <td>Email</td>
                                            <td>${user?.userEmail}</td>
                                        </tr>
                                        <tr>
                                            <td>Address</td>
                                            <td>${user?.profile?.address}</td>
                                        </tr>
                                        <tr>
                                            <td>Status-Count</td>
                                            <td>${user?.status?.size()}</td>
                                        </tr>
                                        <tr>
                                            %{--<td>User Rating</td>--}%
                                            %{--<td><i class="fa fa-star text-yellow fa-fw"></i><i--}%
                                            %{--class="fa fa-star text-yellow fa-fw"></i><i--}%
                                            %{--class="fa fa-star text-yellow fa-fw"></i><i--}%
                                            %{--class="fa fa-star text-yellow fa-fw"></i><i--}%
                                            %{--class="fa fa-star text-yellow fa-fw"></i></td>--}%
                                            %{--</tr>--}%
                                            %{--<tr>--}%
                                            %{--<td>Member Since</td>--}%
                                            %{--<td>Jun 03, 2014</td>--}%
                                            %{--</tr>--}%
                                        </tbody>
                                    </table>

                                    <div class="common-modal modal fade" id="common-Modal1" tabindex="-1"
                                         role="dialog" aria-hidden="true">
                                        <div class="modal-content">
                                            <ul class="list-inline item-details">
                                                <li><a href="http://themifycloud.com">Admin templates</a></li>
                                                <li><a href="http://themescloud.org">Bootstrap themes</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-9">
                                    <ul class="nav nav-tabs">
                                        <g:if test="${toggle.equals("following")}">
                                            <li class="active"><a href="#tab-edit"
                                                                  data-toggle="tab">Following</a></li>
                                            <li><a href="#tab-messages" data-toggle="tab">Followers</a></li>
                                        </g:if>
                                        <g:if test="${toggle.equals("followers")}">
                                            <li><a href="#tab-edit"
                                                   data-toggle="tab">Following</a></li>
                                            <li class="active"><a href="#tab-messages" data-toggle="tab">Followers</a>
                                            </li>
                                        </g:if>
                                    </ul>

                                    <div id="generalTabContent" class="tab-content">
                                        <g:if test="${toggle.equals("following")}">
                                            <div id="tab-edit" class="tab-pane fade in active">
                                                <g:each in="${ListF}" var="fl">
                                                    <g:if test="${user?.following?.id.contains(fl?.id)}">
                                                        <div class="col-lg-4 col-md-4 col-sm-4 mb">
                                                            <div class="content-panel pn">
                                                                <div id="spotify" style="background:url(${createLink(controller: 'profile', action: 'display_picture', id: fl.id)}) no-repeat 60%;background-size: cover">
                                                                    <div class="col-xs-4 col-xs-offset-8">
                                                                        <g:form controller="profile" action="unFollowFromProfile">
                                                                            <g:hiddenField name="unfollow"
                                                                                           value="${fl?.id}"></g:hiddenField>
                                                                            <g:hiddenField name="toggle"
                                                                                           value="following"></g:hiddenField>
                                                                            <button class="btn btn-sm btn-clear-g">UN-FOLLOW</button>
                                                                        </g:form>
                                                                    </div>
                                                                    <div class="sp-title">
                                                                        <a href="${createLink(controller: 'profile', action: 'view_profile',params: [profileid:fl?.id])}"><h3>${fl?.profile?.fullName}</h3></a>
                                                                    </div>
                                                                    <div class="play">
                                                                        <i class="fa fa-play-circle"></i>
                                                                    </div>
                                                                </div>
                                                                <p class="followers"><i class="fa fa-user"></i>${fl?.followers?.size()} FOLLOWERS</p>
                                                            </div>
                                                        </div>
                                                    </g:if>
                                                </g:each>
                                            </div>

                                            <div id="tab-messages" class="tab-pane fade in">
                                                <g:each in="${ListF}" var="fl">
                                                    <g:if test="${user?.followers?.id.contains(fl?.id)}">
                                                        <div class="col-lg-4 col-md-4 col-sm-4 mb">
                                                            <div class="content-panel pn">
                                                                <div id="spotify" style="background:url(${createLink(controller: 'profile', action: 'display_picture', id: fl.id)}) no-repeat 60%;background-size: cover">
                                                                    <div class="col-xs-4 col-xs-offset-8">
                                                                        <g:if test="${user?.following?.id.contains(fl?.id)}"><g:form controller="profile" action="unFollowFromProfile">
                                                                            <g:hiddenField name="unfollow"
                                                                                           value="${fl?.id}"></g:hiddenField>
                                                                            <g:hiddenField name="toggle"
                                                                                           value="followers"></g:hiddenField>
                                                                            <button class="btn btn-sm btn-clear-g">UN-FOLLOW</button>
                                                                        </g:form>
                                                                        </g:if>
                                                                        <g:else>
                                                                            <g:form controller="profile" action="FollowFromProfile">
                                                                                <g:hiddenField name="follow"
                                                                                               value="${fl?.id}"></g:hiddenField>
                                                                                <g:hiddenField name="toggle"
                                                                                               value="followers"></g:hiddenField>
                                                                                <button class="btn btn-sm btn-clear-g">FOLLOW</button>
                                                                            </g:form>
                                                                        </g:else>
                                                                    </div>
                                                                    <div class="sp-title">
                                                                        <a href="${createLink(controller: 'profile', action: 'view_profile',params: [profileid:fl?.id])}"><h3>${fl?.profile?.fullName}</h3></a>
                                                                    </div>
                                                                    <div class="play">
                                                                        <i class="fa fa-play-circle"></i>
                                                                    </div>
                                                                </div>
                                                                <p class="followers"><i class="fa fa-user"></i>${fl?.followers?.size()} FOLLOWERS</p>
                                                            </div>
                                                        </div>
                                                    </g:if>
                                                </g:each>
                                            </div>
                                        </g:if>
                                        <g:if test="${toggle.equals("followers")}">
                                            <div id="tab-edit" class="tab-pane fade in">
                                                <g:each in="${ListF}" var="fl">
                                                    <g:if test="${user?.following?.id.contains(fl?.id)}">
                                                        <div class="col-lg-4 col-md-4 col-sm-4 mb">
                                                            <div class="content-panel pn">
                                                                <div id="spotify" style="background:url(${createLink(controller: 'profile', action: 'display_picture', id: fl.id)}) no-repeat 60%;background-size: cover">
                                                                    <div class="col-xs-4 col-xs-offset-8">
                                                                        <g:form controller="profile" action="unFollowFromProfile">
                                                                            <g:hiddenField name="unfollow"
                                                                                           value="${fl?.id}"></g:hiddenField>
                                                                            <g:hiddenField name="toggle"
                                                                                           value="following"></g:hiddenField>
                                                                        <button class="btn btn-sm btn-clear-g">UN-FOLLOW</button>
                                                                        </g:form>
                                                                    </div>
                                                                    <div class="sp-title">
                                                                        <a href="${createLink(controller: 'profile', action: 'view_profile',params: [profileid:fl?.id])}"><h3>${fl?.profile?.fullName}</h3></a>
                                                                    </div>
                                                                    <div class="play">
                                                                        <i class="fa fa-play-circle"></i>
                                                                    </div>
                                                                </div>
                                                                <p class="followers"><i class="fa fa-user"></i>${fl?.followers?.size()} FOLLOWERS</p>
                                                            </div>
                                                        </div>
                                                    </g:if>
                                                </g:each>
                                            </div>

                                            <div id="tab-messages" class="tab-pane fade in active">
                                                <g:each in="${ListF}" var="fl">
                                                    <g:if test="${user?.followers?.id.contains(fl?.id)}">
                                                        <div class="col-lg-4 col-md-4 col-sm-4 mb">
                                                            <div class="content-panel pn">
                                                                <div id="spotify" style="background:url(${createLink(controller: 'profile', action: 'display_picture', id: fl.id)}) no-repeat 60%;background-size: cover">
                                                                    <div class="col-xs-4 col-xs-offset-8">
                                                                        <g:if test="${user?.following?.id.contains(fl?.id)}"><g:form controller="profile" action="unFollowFromProfile">
                                                                            <g:hiddenField name="unfollow"
                                                                                           value="${fl?.id}"></g:hiddenField>
                                                                            <g:hiddenField name="toggle"
                                                                                           value="followers"></g:hiddenField>
                                                                            <button class="btn btn-sm btn-clear-g">UN-FOLLOW</button>
                                                                        </g:form>
                                                                        </g:if>
                                                                        <g:else>
                                                                            <g:form controller="profile" action="FollowFromProfile">
                                                                                <g:hiddenField name="follow"
                                                                                               value="${fl?.id}"></g:hiddenField>
                                                                                <g:hiddenField name="toggle"
                                                                                               value="followers"></g:hiddenField>
                                                                                <button class="btn btn-sm btn-clear-g">FOLLOW</button>
                                                                            </g:form>
                                                                        </g:else>
                                                                    </div>
                                                                    <div class="sp-title">
                                                                        <a href="${createLink(controller: 'profile', action: 'view_profile',params: [profileid:fl?.id])}"><h3>${fl?.profile?.fullName}</h3></a>
                                                                    </div>
                                                                    <div class="play">
                                                                        <i class="fa fa-play-circle"></i>
                                                                    </div>
                                                                </div>
                                                                <p class="followers"><i class="fa fa-user"></i>${fl?.followers?.size()} FOLLOWERS</p>
                                                            </div>
                                                        </div>
                                                    </g:if>
                                                </g:each>
                                            </div>
                                        </g:if>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!--END CONTENT-->
    <!--BEGIN FOOTER-->
    <div id="footer">
        <div class="copyright">
            2017 Sanjal</div>
    </div>
    <!--END FOOTER-->
</div>
<!--END PAGE WRAPPER-->
</div>

</body>
</html>