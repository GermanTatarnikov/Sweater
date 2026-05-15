<#import "parts/common.ftl" as c>
<@c.page>
    <h5>${username}</h5>
    ${message!}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form=label">Пароль:</label>
            <div class="col-sm-6">
                <label>
                    <input type="password" name="password" class="form-control" placeholder="Пароль"/>
                </label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form=label">Почта:</label>
            <div class="col-sm-6">
                <label>
                    <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
                </label>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Сохранить</button>
    </form>
</@c.page>
