
<#if deployed.container.clientPath?has_content> 
  <#assign clientPath = "${deployed.container.clientPath}" + "/">
<#else>
  <#assign clientPath = "">
</#if>

<#-- the variable ${deployed.file} actually provides a folder name. TFH expects a folder, XLD's file.Folder takes a zip and automatically extracts it for us. -->

<#-- Debug * Won't run anything -->

echo ${deployed.file} >> /tmp/_log.txt
ls ${deployed.file} >> /tmp/_log.txt
echo '------' >> /tmp/_log.txt

<#if deployed.container.accessToken?has_content> 
echo '${clientPath}tfh pushconfig ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace} -token ${deployed.container.accessToken} -vcs 0 -message "Configuration for commit: ${deployed.name}"' >> /tmp/_log.txt
<#else>
echo '${clientPath}tfh pushconfig ${deployed.file} -org ${deployed.container.org} -hostname ${deployed.container.serverAddress} -name ${deployed.container.workspace} -vcs 0 -message "Configuration for commit: ${deployed.name}"' >> /tmp/_log.txt
</#if>
