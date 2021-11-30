<#import "parts/common.ftlh" as c>

<@c.page>
<div class="container my-3">
<h3>${userChannel.username}</h3>
<#if !isCurrentUser>
    <#if isSubscriber>
        <a class="btn btn-outline-danger" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
    <#else>
        <a class="btn btn-outline-success" href="/user/subscribe/${userChannel.id}">Subscribe</a>
    </#if>
</#if>
    <div class="row mt-3">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscriptions</div>
                    <h4 class="card-text">
                        <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                    </h4>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscribers</div>
                    <h4 class="card-text">
                        <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                    </h4>
                </div>
            </div>
        </div>
    </div>
<#if isCurrentUser>
    <#include "parts/messageEdit.ftlh" />
</#if>

<#include "parts/messageList.ftlh" />
</div>
</@c.page>
