<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2/10/2017
  Time: 7:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="myTemplate"/>

    <title></title>
</head>

<body>
<content tag="fullName">
    ${user?.profile?.fullName}
</content>
<content tag="following">
    ${user?.following?.size()}
</content>
<content tag="followers">
    ${user?.followers?.size()}
</content>

%{--<g:link controller="profile" action="index">edit Profile</g:link>--}%
%{--<div id="message"></div>--}%
%{--<g:remoteLink controller="user" action="update" id="1" update="[success: 'message']">update--}%
%{--</g:remoteLink>--}%
<div class="showback" style="padding: 6px 15px 15px 15px;">
    <g:form>
        <g:textArea class="text123" id="postContent" style="border-radius: 3px;font-size: larger"
                    placeholder="Update Your Status" name="tweet" rows="3" cols="50"/><br>
        <g:submitToRemote value="post" url="[controller: 'status', action: 'updateStatus']"
                          update="showpost"></g:submitToRemote>
    </g:form>
</div>
%{--<g:submitToRemote value="User List" url="[controller: 'user', action: 'listUser']" update="check"></g:submitToRemote>--}%
%{--<g:hello name="${user?.profile?.fullName}"/>--}%
%{--<div id="follow">${messag}</div>--}%

<div id="showpost">
    <g:each in="${status}" var="s">
        <g:if test="${user?.following?.id?.contains(s?.user?.id) || user?.id.equals(s?.user?.id)}">
            <div class="showback" style="padding: 6px 15px 15px 15px;">
            <div class="show5">
                <g:form>
                    <div class="dropdown">
                        <i class="fa fa-angle-down" aria-hidden="true"></i>

                        <div class="dropdown-content">
                            <g:hiddenField name="userId" value="${s?.user?.id}"></g:hiddenField>
                            <g:hiddenField name="delId" value="${s?.id}"></g:hiddenField>
                            <g:if test="${user?.id.equals(s?.user?.id)}">
                                <g:submitToRemote value="Delete" url="[controller: 'status', action: 'deleteStatus']"
                                                  update="showpost"></g:submitToRemote>
                            </g:if>
                        </div>
                    </div>

                    <div class="show4" style="float: left">
                        <g:if test="${s?.user?.profile?.picture}">
                            <g:link controller="profile" action="index"><img
                                    src="${createLink(controller: 'profile', action: 'display_picture', id: s?.user?.id)}"
                                    height="45"
                                    width="45"/>
                            </g:link>
                        </g:if>
                    </div>

                    <div class="show3"
                         style="font-weight: bolder;font-size:18px;float: left;padding-left: 5px;height:18px;width:auto;color: #214278">${s?.user?.profile?.fullName}
                    </div><br/>

                    <div class="show2" style="float: left;padding-left: 5px;padding-top: 10px">
                        <i class="fa fa-clock-o"></i>&nbsp;&nbsp;In&nbsp;<g:formatDate date="${s?.dateCreated}"
                                                                                       type="date"
                                                                                       style="LONG"></g:formatDate>&nbsp;at&nbsp;<g:formatDate
                            date="${s?.dateCreated}" type="time"></g:formatDate>
                    </div>
                    <br/>
                    <br>

                    <div class="show1"
                         style="padding-top: 10px;box-shadow: 0px 1px 1px #cdd5e0;    border: 1px solid #ddd;">
                        <p class="centered">${s?.tweet}</p>
                    </div>
                    </div>
                </g:form>
            </div>
        </g:if>
    </g:each>
</div>
%{--<div id="listuser"><g:each in="${userList}" var="ul">--}%
%{--<g:if test="${ul?.profile?.picture}">--}%
%{--<g:link controller="profile"--}%
%{--action="index"><img  class="img-circle" width="35px" height="35px" align="" src="${createLink(controller: 'profile', action: 'display_picture', id: ul.id)}"--}%
%{--</g:link><br>--}%
%{--<g:form>--}%
%{--${ul?.id}--}%
%{--<g:if test="${user.following.id.contains(ul.id)}">--}%
%{--<g:actionSubmit value="Followed" disabled="Followed"></g:actionSubmit>--}%
%{--</g:if>--}%
%{--<g:else>--}%
%{--<g:hiddenField name="follow" value="${ul?.id}"></g:hiddenField>--}%
%{--<g:submitToRemote value="Follow" url="[controller: 'user', action: 'followUser']" update="check"></g:submitToRemote>--}%
%{--</g:else>--}%
%{--</g:form>--}%
%{--<g:form>--}%
%{--<g:hiddenField name="unfollow" value="${ul?.id}"></g:hiddenField>--}%
%{--<g:submitToRemote value="Un-Follow" url="[controller: 'user', action: 'unFollowUser']" update="check"></g:submitToRemote>--}%
%{--</g:form>--}%
%{--</g:if>--}%
%{--</g:each></div>--}%
%{--<br>--}%
%{--<g:welcomeBack test="${user?.profile?.fullName}">--}%
%{--</g:welcomeBack>--}%
</body>
</html>