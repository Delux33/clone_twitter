<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <#if user??>
        <h1 class="display-4">Dear ${name}!</h1>
        <hr class="my-1" align="left" width="465">
        <p class="lead">Thank you for joining us, you can start using this site</p>
    <#else>
        <h1 class="display-4">Hello, guest!</h1>
        <p class="lead">This is a simple site like twitter</p>
        <hr class="my-3" align="left" width="420">
        <p>You can post a message and don't forget to follow other users</p>
        <a class="btn btn-outline-secondary" href="/login" role="button">Login</a>
    </#if>
</@c.page>