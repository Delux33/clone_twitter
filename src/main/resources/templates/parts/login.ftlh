<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label class="col-form-label">User Name</label>
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="form-control col-sm-3 ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="User name"/>
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
        <div class="form-group">
            <label class="col-form-label">Password</label>
            <input type="password" name="password"
                   class="form-control col-sm-3 ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Password"/>
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
        <#if isRegisterForm>
            <div class="form-group">
                <label class="col-form-label">Retype password</label>
                <input type="password" name="password2"
                       class="form-control col-sm-3 ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Retype password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <label class="col-form-label center-block">Email</label>
                <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                       class="form-control col-sm-3 ${(emailError??)?string('is-invalid', '')}"
                       placeholder="example@example.com"/>
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                <#else>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                        else</small>
                </#if>
            </div>
            <div class="form-group">
                <#if captchaError??>
                    <div class="alert alert-danger form-control col-sm-3" role="alert">
                        ${captchaError}
                    </div>
                </#if>
                <div class="g-recaptcha" data-sitekey="6LeFzjYdAAAAAK92S1kZT8Bp0INh0ET71RIbnA8W"></div>
            </div>
        </#if>
        <form class="form-inline">
            <div class="form-group">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button class="btn btn-outline-secondary" type="submit">
                    <#if isRegisterForm>
                        Create
                    <#else>
                        Sign In
                    </#if>
                </button>
                <#if !isRegisterForm>
                    <a class="add-user-button ml-4" href="/registration"></a>
                <#else>
                    <small class="text-muted">
                        <label class="col-form-label ml-1">Already a delportor?</label>
                        <a class="text" href="/login"><span><b>Log In</b></span></a>
                    </small>
                </#if>
            </div>
            </div>
        </form>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-outline-secondary" type="submit">Sign out of your delport</button>
    </form>
</#macro>