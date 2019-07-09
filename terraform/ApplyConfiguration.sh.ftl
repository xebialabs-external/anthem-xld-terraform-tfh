
<#if deployed.container.clientPath?has_content> 
  <#assign clientPath = "${deployed.container.clientPath}" + "/">
<#else>
  <#assign clientPath = "">
</#if>

<#if deployed.container.accessToken?has_content> 
${clientPath}tfh ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace} -token ${deployed.container.accessToken}'
<#else>
${clientPath}tfh ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace}
</#if>
