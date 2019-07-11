
<#if deployed.container.clientPath?has_content> 
  <#assign clientPath = "${deployed.container.clientPath}" + "/">
<#else>
  <#assign clientPath = "">
</#if>

<#-- the variable ${deployed.file} actually provides a folder name. TFH expects a folder, XLD's file.Folder takes a zip and automatically extracts it for us. -->

<#if deployed.container.accessToken?has_content> 
${clientPath}tfh pushconfig ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace} -token ${deployed.container.accessToken} -vcs 0 -message "Configuration for commit: ${deployed.name}"
<#else>
${clientPath}tfh pushconfig ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace} -vcs 0 -message "Configuration for commit: ${deployed.name}"
</#if>
