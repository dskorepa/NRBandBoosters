<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="search.aspx.cs" Inherits="search" ValidateRequest="false" %>

<%@ Import Namespace="BlogEngine.Core" %>
<asp:content id="Content1" contentplaceholderid="cphBody" runat="Server">
  <div class="searchpage post search-page page-global">
      <article>
    <h2 runat="server" class="page-global-title" id="h1Headline" />
    <div id="searchpage" class="search-page-searchbox clearfix">
      <input type="text" name="q" id="q" value="<%=Server.HtmlEncode(Request.QueryString["q"]) %>" onkeypress="if(event.keyCode==13) SearchPage()" />
      <input type="button" value="<%=Resources.labels.search %>" class="btn btn-primary" onclick="SearchPage()" onkeypress="SearchPage()" />
      <% if (BlogSettings.Instance.EnableCommentSearch && BlogSettings.Instance.ShowIncludeCommentsOption)
         { %>
      <input type="checkbox" name="comment" id="comment" /><label for="comment"><%=BlogSettings.Instance.SearchCommentLabelText %></label>
      <%} %>
    </div>
          
    <script type="text/javascript">      
        //<![CDATA[ 
        var check = document.getElementById('comment');
      
        function SearchPage()
        {        
            var searchTerm = encodeURIComponent(document.getElementById('q').value);
            var include = check ? check.checked : false;
            var comment = '&comment=true';
        
            if (!include)
            {
                comment = ''
            }
        
            location.href = 'search<%= BlogConfig.FileExtension %>?q=' + searchTerm + comment;
        }
      
        if (check != null)
        {
            check.checked = <%=(Request.QueryString["comment"] != null).ToString().ToLowerInvariant() %>;
        }

        //]]>
    </script>
  
    <asp:repeater runat="server" id="rep">
      <ItemTemplate>
        <div class="searchresult">
          <h3><a href="<%# Eval("AbsoluteLink") %>"><%# Eval("Title") %></a></h3>
            
          <p><span class="text"><%# GetContent((string)Eval("Description"), (string)Eval("Content")) %></span>
         <span class="type" runat="server" id="type" />
          <span class="url"><%# ShortenUrl(Eval("AbsoluteLink").ToString())%></span>
              </p>
        </div>
      </ItemTemplate>
    </asp:repeater>
    
    <asp:PlaceHolder ID="Paging" runat="server" />
  </div>
    </article>
</asp:content>
