<#import "parts/common.ftlh" as c>

<@c.page>
<h6>${username}</h6>
${message?ifExists}
<form method="post">
    <div class="form-group">
        <label class="col-form-label">Password</label>
        <input type="password" name="password" class="form-control col-sm-3" placeholder="Password" />
    </div>
    <div class="form-group">
        <label class="col-form-label">Email</label>
        <input type="email" name="email" class="form-control col-sm-3" placeholder="example@example.com" value="${email!''}" />
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-outline-success" type="submit">Save</button>
</form>
</@c.page>