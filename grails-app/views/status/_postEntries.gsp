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

                    <div class="show1" style="padding-top: 10px;box-shadow: 0px 1px 1px #cdd5e0;    border: 1px solid #ddd;">
                        <p class="centered">${s?.tweet}</p>
                    </div>
                    </div>
                </g:form>
            </div>
        </g:if>
    </g:each>
