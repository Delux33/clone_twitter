<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-group">
        <label class="col-form-label">
            <h3>List of users</h3>
        </label>
        <label class="form-control col-sm-3">Name</label>
        <label class="form-control col-sm-3">Role</label>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td><a class="nav-link" href="/user-messages/${user.id}">${user.username}</a></td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a class="nav-link" href="/user/${user.id}">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
    </div>
</@c.page>