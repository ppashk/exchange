<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Sweater</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/orders">Orders</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item dropdown">
                    <button class="nav-link dropbtn">Admin</button>
                    <div class="dropdown-content">
                        <a href="/user">Users</a>
                        <a href="/orders">Orders</a>
                    </div>
                </li>
            </#if>
        </ul>
        <#if user??>
            <div class="navbar-text mr-3">${name}</div>
        </#if>
        <#if user??>
            <@l.logout />
        <#else>
            <@l.loginbtn />
        </#if>
    </div>
</nav>
