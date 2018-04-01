<g:each in="${status}" var="s">
        <g:if test="${user?.id.equals(s?.user?.id)}">
            <g:form>
                <g:hiddenField name="delId"
                               value="${s?.id}"></g:hiddenField>
                <div class="list-group"><a class="list-group-item" style="
height: 52px;
"><span
                        class="badge" style="float: left;height: 28px"><g:formatDate date="${s?.dateCreated}"
                                                                                                                                 type="date"
                                                                                                                                 style="LONG"/><br>
                at&nbsp;<g:formatDate
                    date="${s?.dateCreated}" type="time"></g:formatDate></span>
                <span
                        class="fa fa-star text-yellow mrm mlm"></span><span
                    style="min-width: 120px; display: inline-block;"
                    class="name">${s.tweet}</span><span
                    class="pull-right mrl"><i
                        class="fa fa-trash-o"></i> <g:submitToRemote
                        class="btn btn-success btn-sm mlm mrm"
                        style="margin-bottom: 5px" value="Delete"
                        url="[controller: 'status', action: 'deleteStatus']"
                        update="pro-status"></g:submitToRemote></span></span>
                                                </a>

            </g:form>
            </div>
        </g:if>
    </g:each>
