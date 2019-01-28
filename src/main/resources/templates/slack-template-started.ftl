<#if executionData.job.group??>
    <#assign jobName="${executionData.job.group} / ${executionData.job.name}">
<#else>
    <#assign jobName="${executionData.job.name}">
</#if>
<#assign message="STARTED Job <${executionData.href}|#${executionData.id} ${jobName}>">
<#assign state="Started">

{
   "attachments":[
      {
		 "text": "${executionData.user} >> <${executionData.href}|#${executionData.id} ${jobName}>",
		 "color": "${color}"
      }
   ]
}
