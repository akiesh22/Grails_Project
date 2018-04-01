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
                                                                                                     width="150">
                                                    </g:link>
                                                </g:if>
                                                <g:else test="${user?.profile?.picture == null}">
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
                                            <td>Age</td>
                                            <td>${user?.profile?.dob}</td>
                                        </tr>
                                        <tr>
                                            <td>Gender</td>
                                            <td>${user?.profile?.sex}</td>
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
                                            <li class="active"><a href="#tab-messages" data-toggle="tab">Thoughts</a>
                                            </li>
                                    </ul>

                                    <div id="generalTabContent" class="tab-content">
                                            <div id="tab-messages" class="tab-pane fade in active">
                                                <div class="row mbl">
                                                    <div class="col-lg-6"><span
                                                            style="margin-left: 15px"></span><span><i
                                                            class="fa fa-comments" aria-hidden="true"></i>&nbsp;
                                                    ${user?.profile?.fullName}'s Thoughts</span></div>

                                                    <div class="col-lg-6">
                                                        <div class="input-group"><input type="text"
                                                                                        class="form-control"/><span
                                                                class="input-group-btn"><button type="button"
                                                                                                class="btn btn-white">Search</button>
                                                        </span></div>
                                                    </div>
                                                </div>

                                                <div id="pro-status1">
<g:if test="${status==null}">
    <h3>No Status</h3>
</g:if>
                                                    <g:each in="${status}" var="s">
                                                        <g:if test="${user?.id.equals(s?.user?.id)}">
                                                            <g:form>
                                                                <g:hiddenField name="delId"
                                                                               value="${s?.id}"></g:hiddenField>
                                                                <div class="list-group"><a class="list-group-item" style="
                    height: 52px;
                "><span
                                                                        class="badge" style="float: left;height: 28px"><g:formatDate
                                                                    date="${s?.dateCreated}"
                                                                    type="date"
                                                                    style="LONG"/><br>
                                                                at&nbsp;<g:formatDate
                                                                    date="${s?.dateCreated}"
                                                                    type="time"></g:formatDate></span>
                                                                <span
                                                                        class="fa fa-star text-yellow mrm mlm"></span><span
                                                                    style="min-width: 120px; display: inline-block;"
                                                                    class="name">${s.tweet}</span>
                                                </a>

                                                            </g:form>
                                                            </div>
                                                        </g:if>
                                                    </g:each>

                                                </div>
                                            </div>

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