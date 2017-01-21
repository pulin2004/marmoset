<p>大家好，<br>
	<span style="text-indent:2em">${dailyCount.date}，新增用户${dailyCount.newUser}名，新增订单${dailyCount.newOrder}张，有${dailyCount.newTask}个新预约产生<#if (dailyCount.newTask > 0)>(其中免费20分钟预约数为${dailyCount.newFreeTask}，正常付费预约数为${dailyCount.newPayTask})</#if>。<br></span>
	<span style="text-indent:2em">注册流程启动了${dailyCount.newPreRegister}次，
	<#if (dailyCount.registerWayResult?exists)>  统计如下：<br></span>
		<#assign i=1>
        <#list dailyCount.registerWayResult?keys as key> 
              <tr>
							<#if (key = "inputWorry")>输入困扰页面
							<#elseif (key = "inputCounselorAndCounselWay")>选择咨询师页面
							<#elseif (key = "inputStartRegister")>提示注册页面
							<#elseif (key = "inputRegisterInfo")>输入注册信息页面
							<#elseif (key = "inputTask")>预约体验页面
							<#elseif (key = "registerSuccess")>注册成功页面
							<#elseif (key = "waitCounselorConfirm")>等待咨询师确认页面
							<#else>暂无
							</#if>
                   :${(dailyCount.registerWayResult)[key]}次<br>
              </tr>
        </#list>
	</#if>
	
	<#if (dailyCount.newOrder > 0)>
		新增订单详情如下：<br>
		<#list dailyCount.newOrderTypes as newOrderType> 
              <tr>
                   ${newOrderType.specification}:${newOrderType.amount}张<br>
              </tr>
        </#list>
	</#if>
</p>