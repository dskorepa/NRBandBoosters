<%@ Page Language="C#" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error_occurred" %>

<asp:content id="Content1" contentplaceholderid="cphBody" runat="Server">
    <article>
  <div class="post page-global">
      <h1>Ooops! </h1>
    <h2 class="page-global-title">An unexpected error has occurred.</h2>
        <div>
      <p>
        Looks like something went wrong. <a href="/"> back to the NRBB home page.</a>
      </p>
    </div>
        <div id="divErrorDetails" runat="server" visible="false">
        <h2>Error Details:</h2>
        <p id="pDetails" runat="server"></p>
    </div>
    
  </div>
        </article>
</asp:content>
