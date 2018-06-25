<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>


    
        <article class="post col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-9 col-lg-offset-2" id="post<%=Index %>">
            <h2 class="post-title">
                <a href="<%=Post.RelativeOrAbsoluteLink %>"><%=Server.HtmlEncode(Post.Title) %></a>
            </h2>
            <div class="post-info">
                <span class="post-date"><i class="glyphicon glyphicon-calendar"></i><%=Post.DateCreated.ToString("d. MMMM yyyy") %></span>
                <span class="post-author"><i class="glyphicon glyphicon-user"></i><a href="<%=BlogEngine.Core.Utils.AbsoluteWebRoot + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) + BlogEngine.Core.BlogConfig.FileExtension %>"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a></span>
                <span class="post-category"><i class="glyphicon glyphicon-folder-close"></i><%=CategoryLinks(", ") %></span>
                <a rel="nofollow" class="pull-right post-comment-link" href="<%=Post.RelativeOrAbsoluteLink %>#comment"><i class="glyphicon glyphicon-comment"></i>(<%=Post.ApprovedComments.Count %>)</a>
            </div>

            <section class="post-body text">
                <asp:PlaceHolder ID="BodyContent" runat="server" />
            </section>
            <% if (Location == BlogEngine.Core.ServingLocation.SinglePost)
               {%>

            <!--Post Footer-->
            <div class="post-tags">
                <%=Resources.labels.tags %> : <%=TagLinks(", ") %>
            </div>
            <div class="post-rating">
                <%=Rating %>
            </div>


            <%} %>

            <%=AdminLinks %>
        </article>