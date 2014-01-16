<%@ page contentType="application/x-java-jnlp-file" %>
<%--
	Dynamically generated JNLP-File
	Author: Daniel Mendler
--%>
<%
    StringBuffer codeBase = new StringBuffer();
    codeBase.append(request.getScheme()).append("://").append(request.getServerName());
    if (request.getServerPort() != (request.isSecure() ? 443 : 80))
        codeBase.append(':').append(request.getServerPort());
    codeBase.append(request.getContextPath()).append('/');
%>
<?xml version="1.0" encoding="UTF-8"?>
<jnlp
  spec="1.0+"
  codebase="<%= codeBase %>"
  href="<%= request.getRequestURL() %>">
  <information>
    <title>Application loaded over WebRCP</title>
    <vendor>Daniel Mendler</vendor>
    <description>Application loaded over WebRCP</description>
  </information>
  <security>
    <all-permissions/>
  </security>
  <resources>
    <j2se version="1.4+"/>
    <%-- Launcher --%>
    <jar href="webrcp.jar"/>
    <%-- OSGi configuration --%>
    <property name="osgi.instance.area" value="@user.home/paperdog"/>
    <property name="osgi.bundles" value="org.eclipse.core.runtime@2:start, org.eclipse.update.configurator@3:start"/>
    <property name="eclipse.product" value="[CHANGE ME]"/>
    <%--<property name="eclipse.application" value="[CHANGE ME]"/>--%>
    <%-- WebRCP --%>
    <property name="webrcp.appName" value="[CHANGE ME]"/>
    <property name="webrcp.appVersion" value="@buildId@"/>
    <property name="webrcp.archives" value="[CHANGE ME]"/>
    <property name="webrcp.sysArchives" value="[CHANGE ME]"/>
    <property name="webrcp.location" value="<%= request.getRequestURL() %>"/>
  </resources>
  <application-desc/>
</jnlp>

