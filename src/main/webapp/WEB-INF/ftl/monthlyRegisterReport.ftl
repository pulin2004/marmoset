<p>大家好，<br>
	<span style="text-indent:2em">${monthRegisterReport.date}月份，新增用户${monthRegisterReport.totalNum}名，<br></span>
	<#if (monthRegisterReport.orgRegisters?exists)>  统计如下：<br></span>
		<#assign i=1>
        <#list monthRegisterReport.orgRegisters as orgRegister> 
              <tr>
					${orgRegister.organization.name}
                   :${orgRegister.downloadNum}次<br>
              </tr>
        </#list>
	</#if>
	其他途径注册:${monthRegisterReport.commonNum}
</p>