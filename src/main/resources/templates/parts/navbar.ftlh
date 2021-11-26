<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Delport</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/main">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user-messages/${currentUserId}">My messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile</a>
            </li>
            <form method="get" action="/main" class="form-inline ml-5">
                <input type="search" name="searchPeople" maxlength="20" class="searchbar" value="${searchPeople?ifExists}" placeholder="Search people" />
                <a href="/"><img src="https://images-na.ssl-images-amazon.com/images/I/41gYkruZM2L.png" width="15" height="15" alt="search icon" class="search-button"></a>
            </form>
        </#if>
    </div>
    </ul>
    <#if isAdmin>
        <a class="navbar-text mr-3" href="/user">User list</a>
    </#if>
    <#if user??>
        <div class="navbar-text">${name}</div>
        <a class="logout"><span><@l.logout /></span></a>
    <#else>
        <a class="login" href="/login"><span>Log In</span></a>
    </#if>
</div>
</nav>