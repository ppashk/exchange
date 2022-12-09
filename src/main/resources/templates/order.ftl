<#import "parts/common.ftl" as c>
<#import "parts/order.ftl" as o>

<@c.page>
    <#if isOrderInit>
        <@o.order/>
    </#if>
    <h5>Orders:</h5>
    <div class="card-columns">
        <#if orders??>
            <#list orders as order>
                <div class="card my-3">
                    <div class="m-2">
                        <span>${order.currency}</span>
                        <i>${order.amount}</i>
                    </div>
                    <div class="card-footer text-muted">
                        ${order.userAddress}
                    </div>
                </div>
            <#else>
                No message
            </#list>
        </#if>
    </div>
</@c.page>
