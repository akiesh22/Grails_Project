 <!--COMPLETED ACTIONS DONUTS CHART-->

<!-- First Action -->
    <g:each in="${userList}" var="ul">
        <div class="desc">
        <div class="thumb">
            <g:if test="${ul?.profile?.picture}">
                <g:link controller="profile"
                        action="index"><img width="68px" height="68px" align="" src="${createLink(controller: 'profile', action: 'display_picture', id: ul.id)}"
                </g:link>
                </div>
                <g:form>
                    <g:if test="${user.following.id.contains(ul.id)}">
                        <a href="#">${ul?.profile?.fullName}</a><br><div class="details"><p><muted><g:actionSubmit value="Followed"
                                                                                                                   disabled="Followed"></g:actionSubmit></muted></p></div>
                    </g:if>
                    <g:else>
                        <a href="#">${ul?.profile?.fullName}</a><br> <div class="details"><p><muted><g:hiddenField name="follow"
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