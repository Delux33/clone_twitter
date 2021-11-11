<#import "parts/common.ftlh" as c>

<@c.page>
<h6>${username}</h6>
${message?ifExists}
<form method="post">
    <div class="form-group row">
        <label class="col-form-label">Password:</label>
        <div class="col-sm-4">
            <input type="password" name="password" class="form-control" placeholder="Password" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label">Email:</label>
        <div class="col-sm-4">
            <input type="email" name="email" class="form-control" placeholder="example@example.com" value="${email!''}" />
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit">Save</button>
</form>
</@c.page>