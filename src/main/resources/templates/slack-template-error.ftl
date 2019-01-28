<#if executionData.job.group??>
    <#assign jobName="${executionData.job.group} / ${executionData.job.name}">
<#else>
    <#assign jobName="${executionData.job.name}">
</#if>
<#assign message="FAILED! Job <${executionData.href}|#${executionData.id}  ${jobName}>">
<#assign state="Failed">

<#if executionData.argstring??>
    <#assign args="${executionData.argstring}">
<#else>
    <#assign args="No options to display">
</#if>


<#if executionData.succeededNodeListString??>
    <#assign successNodes="${executionData.succeededNodeListString}">
<#else>
    <#assign successNodes="None">
</#if>

{
   "attachments":[
      {
		 "text": "${executionData.user} >> <${executionData.href}|#${executionData.id} ${jobName}>",
		 "color": "${color}"
      }
   ]
}
