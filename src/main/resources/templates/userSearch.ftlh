<#import "parts/common.ftlh" as c>

<@c.page>
    <ul class="list-group">
        <li class="list-group-item">
            <a href="/user-messages/${user.id}">${user.getUsername()}</a>
        </li>
    </ul>
</@c.page>