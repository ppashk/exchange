<#macro order>
    <form action="/order" method="post" enctype="multipart/form-data">
        <div class="mb-1">From</div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Currency</label>
            <div class="col-sm-6">
                <select name="currencyFrom" class="form-control ${(currencyFromError??)?string('is-invalid', '')}">
                    <#list currencies as currency>
                        <option value="${currency}">${currency}</option>
                    </#list>
                </select>
                <#if currencyFromError??>
                    <div class="invalid-feedback">
                        ${currencyFromError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Network</label>
            <div class="col-sm-6">
                <select name="networkFrom" class="form-control ${(networkFromError??)?string('is-invalid', '')}">
                    <#list networks as network>
                        <option value="${network}">${network}</option>
                    </#list>
                </select>
                <#if networkFromError??>
                    <div class="invalid-feedback">
                        ${networkFromError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-6">
                <input type="text" name="addressFrom"
                       class="form-control ${(addressFromError??)?string('is-invalid', '')}"/>
                <#if addressFromError??>
                    <div class="invalid-feedback">
                        ${addressFromError}
                    </div>
                </#if>
            </div>
        </div>
    </form>
</#macro>
