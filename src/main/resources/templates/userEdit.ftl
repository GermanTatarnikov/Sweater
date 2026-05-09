<#import "parts/common.ftl" as c>
<@c.page>
    Редактирование пользователя

    <form action="/user" method="post">
        <div class="control-group">
            <label>
                <input type="text" class="form-control" name="username" value="${user.username}">
            </label>
        </div>
        <#list roles as role>
            <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                <label>
                    <input type="checkbox" class="btn-check" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Сохранить</button>
        </div>
    </form>
</@c.page>