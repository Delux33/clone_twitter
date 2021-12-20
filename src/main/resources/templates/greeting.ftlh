<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <#if user??>
        <h1 class="display-4">Dear ${name}!</h1>
        <hr class="my-1" align="left" width="465">
        <p class="lead">Thank you for being with us, you can start using the site </p>
    <#else>
        <h1 class="display-4">Hello, guest!</h1>
        <p class="lead">This is a simple site like the twitter and stepik</p>
        <hr class="my-3" align="left" width="420">
        <p>You can post to write about your courses</p>
        <a class="btn btn-outline-secondary" href="/login" role="button">Login</a>
    </#if>
</@c.page>