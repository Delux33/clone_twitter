<#include "security.ftlh">
<#import "pager.ftlh" as p>

<@p.pager url page />
<div class="card-columns" id="message-list">
    <#list page.content as message>
        <div class="card my-3" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col align-self-center"
                       href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <#if message.author.id == currentUserId>
                        <a class="col btn btn-light" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                        <form method="post" action="/user-messages">
                            <input type="hidden" name="messageId" value="${message.id}"/>
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-outline-danger">X</button>
                        </form>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        <h3>No messages</h3>
    </#list>
</div>
<@p.pager url page />