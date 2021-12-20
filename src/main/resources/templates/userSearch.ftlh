<#import "parts/common.ftlh" as c>

<@c.page>
    <#if user??>
        <div class="col-sm-3 mx-auto">
            <h3>
                <a class="nav-link" href="/user-messages/${user.id}">${user.username}</a>
            </h3>
        </div>
    <#else>
        <div class="col-sm-3 mx-auto">
            <h3>User not found</h3>
        </div>
    </#if>
</@c.page>