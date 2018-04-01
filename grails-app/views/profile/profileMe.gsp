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
                                        <g:if test="${toggle.equals("edit")}">
                                            <li class="active"><a href="#tab-edit"
                                                                  data-toggle="tab">Edit Profile</a></li>
                                            <li><a href="#tab-messages" data-toggle="tab">Thoughts</a></li>
                                        </g:if>
                                        <g:if test="${toggle.equals("thoughts")}">
                                            <li><a href="#tab-edit"
                                                   data-toggle="tab">Edit Profile</a></li>
                                            <li class="active"><a href="#tab-messages" data-toggle="tab">Thoughts</a>
                                            </li>
                                        </g:if>
                                    </ul>

                                    <div id="generalTabContent" class="tab-content">
                                        <g:if test="${toggle.equals("edit")}">
                                            <div id="tab-edit" class="tab-pane fade in active">
                                                <g:uploadForm controller="profile" action="save_profile"
                                                              class="form-horizontal"><h3>Account Setting</h3>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Email</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9"><g:field type="email"
                                                                                               name="userEmail"
                                                                                               placeholder="email@yourmail.com"
                                                                                               class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Current-Password</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-4"><g:passwordField name="password" id="password" onchange='check_pass()' disabled="disabled"
                                                                                                       placeholder="Current-password"
                                                                                                       class="form-control"/>
                                                                    <g:hiddenField name="confirm_password" id="confirm_password" value="${user?.password}" onload='check_pass()'></g:hiddenField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">New Password</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-4"><g:passwordField name="password" id="new_password" disabled="disabled"
                                                                                                       placeholder="New-password"
                                                                                                       class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr/>

                                                    <h3>Profile Setting</h3>

                                                    <div class="form-group">
                                                        <div class="text-center mbl"><div class="image1">
                                                            <div class="text-center mbl"><div
                                                                    class="btn btn-green"><g:field type="file"
                                                                                                   accept="image/*"
                                                                                                   name="picture"
                                                                                                   style="width: 50%;
                                                height: 6%;
                                                opacity: 0;
                                                overflow: hidden;
                                                position: absolute;
                                                cursor:pointer;
                                                z-index: auto;
                                                " onchange="readURL(this);"></g:field>
                                                                <i class="fa fa-upload"></i>&nbsp;
                                                                Change Image</div></div></div>
                                                        </div></div>


                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">First Name</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9"><g:textField name="fullName"
                                                                                                   placeholder="Full Name"
                                                                                                   class="form-control"></g:textField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Address</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9"><input  <g:textField
                                                                        name="address" placeholder="Address"
                                                                        class="form-control"></g:textField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Gender</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9">
                                                                    <div class="radio"><label
                                                                            class="radio-inline"><g:radio value="male"
                                                                                                          name="sex"
                                                                                                          checked="checked"/>&nbsp;
                                                                        Male</label></div>

                                                                    <div class="radio"><label
                                                                            class="radio-inline"><g:radio value="female"
                                                                                                          name="sex"
                                                                                                          checked="checked"/>&nbsp;
                                                                        Female</label></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Birthday</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-4"><g:textField name="dob"
                                                                                                   placeholder="D/M/Y"
                                                                                                   class="form-control"></g:textField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr/>
                                                    <hr/>
                                                    <button type="submit"
                                                            class="btn btn-green btn-block">Finish</button>
                                                </g:uploadForm>
                                            </div>

                                            <div id="tab-messages" class="tab-pane fade in">
                                                <div class="row mbl">
                                                    <div class="col-lg-6"><span
                                                            style="margin-left: 15px"></span><span><i
                                                            class="fa fa-comments" aria-hidden="true"></i>&nbsp;
                                                    Your Thoughts</span></div>

                                                    <div class="col-lg-6">
                                                        <div class="input-group"><input type="text"
                                                                                        class="form-control"/><span
                                                                class="input-group-btn"><button type="button"
                                                                                                class="btn btn-white">Search</button>
                                                        </span></div>
                                                    </div>
                                                </div>

                                                <div id="pro-status">

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
                                                                    class="name">${s.tweet}</span><span
                                                                    class="pull-right mrl"><i
                                                                        class="fa fa-trash-o"></i> <g:submitToRemote
                                                                        class="btn btn-success btn-sm mlm mrm"
                                                                        style="margin-bottom: 5px" value="Delete"
                                                                        url="[controller: 'status', action: 'deleteProfileStatus']"
                                                                        update="pro-status"></g:submitToRemote></span></span>
                                                </a>

                                                            </g:form>
                                                            </div>
                                                        </g:if>
                                                    </g:each>

                                                </div>
                                            </div>
                                        </g:if>
                                        <g:if test="${toggle.equals("thoughts")}">
                                            <div id="tab-edit" class="tab-pane fade in">
                                                <g:uploadForm controller="profile" action="save_profile"
                                                              class="form-horizontal"><h3>Account Setting</h3>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Email</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9"><g:field type="email"
                                                                                               name="userEmail"
                                                                                               placeholder="email@yourmail.com"
                                                                                               class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Current-Password</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-4"><g:passwordField name="password"
                                                                                                       placeholder="Current-password"
                                                                                                       class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">New Password</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-4"><g:passwordField name="password"
                                                                                                       placeholder="New-password"
                                                                                                       class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr/>

                                                    <h3>Profile Setting</h3>

                                                    <div class="form-group">
                                                        <div class="text-center mbl"><div class="image1">
                                                            <div class="text-center mbl"><div
                                                                    class="btn btn-green"><g:field type="file"
                                                                                                   accept="image/*"
                                                                                                   name="picture"
                                                                                                   style="width: 50%;
                                                height: 6%;
                                                opacity: 0;
                                                overflow: hidden;
                                                position: absolute;
                                                cursor:pointer;
                                                z-index: auto;
                                                " onchange="readURL(this);"></g:field>
                                                                <i class="fa fa-upload"></i>&nbsp;
                                                                Change Image</div></div></div>
                                                        </div></div>


                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">First Name</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9"><g:textField name="fullName"
                                                                                                   placeholder="Full Name"
                                                                                                   class="form-control"></g:textField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Address</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9"><input  <g:textField
                                                                        name="address" placeholder="Address"
                                                                        class="form-control"></g:textField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Gender</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-9">
                                                                    <div class="radio"><label
                                                                            class="radio-inline"><g:radio value="male"
                                                                                                          name="sex"
                                                                                                          checked="checked"/>&nbsp;
                                                                        Male</label></div>

                                                                    <div class="radio"><label
                                                                            class="radio-inline"><g:radio value="female"
                                                                                                          name="sex"
                                                                                                          checked="checked"/>&nbsp;
                                                                        Female</label></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group"><label
                                                            class="col-sm-3 control-label">Birthday</label>

                                                        <div class="col-sm-9 controls">
                                                            <div class="row">
                                                                <div class="col-xs-4"><g:textField name="dob"
                                                                                                   placeholder="D/M/Y"
                                                                                                   class="form-control"></g:textField>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr/>
                                                    <hr/>
                                                    <button type="submit"
                                                            class="btn btn-green btn-block">Finish</button>
                                                </g:uploadForm>
                                            </div>

                                            <div id="tab-messages" class="tab-pane fade in active">
                                                <div class="row mbl">
                                                    <div class="col-lg-6"><span
                                                            style="margin-left: 15px"></span><span><i
                                                            class="fa fa-comments" aria-hidden="true"></i>&nbsp;
                                                    Your Thoughts</span></div>

                                                    <div class="col-lg-6">
                                                        <div class="input-group"><input type="text"
                                                                                        class="form-control"/><span
                                                                class="input-group-btn"><button type="button"
                                                                                                class="btn btn-white">Search</button>
                                                        </span></div>
                                                    </div>
                                                </div>

                                                <div id="pro-status1">

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
                                                                    class="name">${s.tweet}</span><span
                                                                    class="pull-right mrl"><i
                                                                        class="fa fa-trash-o"></i> <g:submitToRemote
                                                                        class="btn btn-success btn-sm mlm mrm"
                                                                        style="margin-bottom: 5px" value="Delete"
                                                                        url="[controller: 'status', action: 'deleteProfileStatus']"
                                                                        update="pro-status1"></g:submitToRemote></span></span>
                                                </a>

                                                            </g:form>
                                                            </div>
                                                        </g:if>
                                                    </g:each>

                                                </div>
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
<script>
    function check_pass(){
        if (document.getElementById('password').value==document.getElementById('confirm_password').value){
            document.getElementById('new_password').disabled = false;
        }
        else {
            document.getElementById('new_password').disabled = true;
        }
    }
</script>
</body>
</html>