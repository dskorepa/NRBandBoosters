<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page.aspx.cs" Inherits="page" %>

<%@ Import Namespace="BlogEngine.Core" %>
<asp:content id="Content1" contentplaceholderid="cphBody" runat="Server">
  <div id="page" class="page-global">
      <article role="article" class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-9 col-lg-offset-2">
      <h1 runat="server" id="h1Title"></h1>
            <div runat="server" id="divText" />
                    <%=AdminLinks %>
       </article>
  </div>
</asp:content>