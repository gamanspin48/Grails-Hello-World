%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['List']"/>

        %{--Actions--}%
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="firstName" title="${g.message(code: "first.name")}"/>
                <g:sortableColumn property="lastName" title="${g.message(code: "last.name")}"/>
                <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
            </tr>
            </thead>
            <tbody>
                <g:each in="${memberList}" var="info">
                    <tr>
                        <td>${info?.firstName}</td>
                        <td>${info?.lastName}</td>
                        <td>${info?.email}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>

    </div>
</div>