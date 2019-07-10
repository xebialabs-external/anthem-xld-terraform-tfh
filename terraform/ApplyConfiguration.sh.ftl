
<#if deployed.container.clientPath?has_content> 
  <#assign clientPath = "${deployed.container.clientPath}" + "/">
<#else>
  <#assign clientPath = "">
</#if>

<#-- the variable ${deployed.file} actually provides a folder name. TFH expects a folder, XLD's file.Folder takes a zip and automatically extracts it for us. -->

<#if deployed.container.accessToken?has_content> 
${clientPath}tfh ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace} -token ${deployed.container.accessToken}
<#else>
${clientPath}tfh ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace}
</#if>
