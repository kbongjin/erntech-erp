<#if emptyVisible || collections?has_content>
<select <#if id??>id="${id}"</#if> name="${name}" <#if styleClass??>class="${styleClass}"</#if> <#if attr??>${attr}</#if>>
    <#if firstOption??>
    <option value="">${firstOption}</option>
    </#if>
    <#list collections as item>
    <option value="${item.value!}" <#if selected?? && selected == item.value!>selected="selected"</#if>>${item.text!}${textSuffix}</option>
    </#list>
</select>
</#if>