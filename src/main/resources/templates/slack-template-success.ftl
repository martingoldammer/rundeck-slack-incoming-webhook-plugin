<#if executionData.job.group??>
    <#assign jobName="${executionData.job.group} / ${executionData.job.name}">
<#else>
    <#assign jobName="${executionData.job.name}">
</#if>
<#assign message="SUCCESS Job <${executionData.href}|#${executionData.id}  ${jobName}>">

<#if executionData.argstring??>
    <#assign args="${executionData.argstring}">
<#else>
    <#assign args="No arguments to display">
</#if>

<#assign state="Succeeded">

{
   "attachments":[
      {
		 "text": "${executionData.user} >> <${executionData.href}|#${executionData.id} ${jobName}>",
		 "color": "${color}"
      }
   ]
}
