<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Admin.aspx.cs" Inherits="CIS311Proj5.Contact" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" media="all" href="style.css" />
<link rel="stylesheet" type="text/css" href="style/css/media-queries.css" />
<link rel="stylesheet" type="text/css" href="style/js/player/mediaelementplayer.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300italic,300,700,700italic|Open+Sans+Condensed:300,700' rel="stylesheet" type='text/css'>
<script type="text/javascript" src="style/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="style/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="style/js/retina.js"></script>
<script type="text/javascript" src="style/js/selectnav.js"></script>
<script type="text/javascript" src="style/js/jquery.masonry.min.js"></script>
<script type="text/javascript" src="style/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="style/js/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="style/js/mediaelement.min.js"></script>
<script type="text/javascript" src="style/js/mediaelementplayer.min.js"></script>
<script type="text/javascript" src="style/js/jquery.dcflickr.1.0.js"></script>
<script type="text/javascript" src="style/js/twitter.min.js"></script>
<script type="text/javascript">
    $.backstretch("style/images/bg/7.jpg");
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
        <!-- Begin Header -->
        <div class="header-wrapper opacity">
            <div class="header">
                <!-- Begin Menu -->
                <div id="menu-wrapper">
                    <div id="menu" class="menu">
                        <ul id="tiny">
                            <li><a href="index.html">Blog</a>
                                <ul>
                                    <li><a href="post.html">Blog Post</a></li>
                                </ul>
                            </li>
                            <li><a href="page-with-sidebar.html">Pages</a>
                                <ul>
                                    <li><a href="page-with-sidebar.html">Page With Sidebar</a></li>
                                    <li><a href="full-width.html">Full Width</a></li>
                                </ul>
                            </li>
                            <li><a href="typography.html">Styles</a>
                                <ul>
                                    <li><a href="typography.html">Typography</a></li>
                                    <li><a href="columns.html">Columns</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="Contact.aspx">Contact</a></li>
                            <li class="active"><a href="Admin.aspx">Admin</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
                <!-- End Menu -->
            </div>
        </div>
        <!-- End Header -->
        <div class="container">

            <div class="signup-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="152px" Width="934px">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                        <asp:CommandField HeaderStyle-Width="10%" ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="images/zedit.png" DeleteImageUrl="images/zdelete.png" ButtonType="Image" CancelImageUrl="images/zcancel.png" UpdateImageUrl="images/zaccept.png" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:paulString %>"
                    SelectCommand="SELECT * FROM [Table1]"
                    DeleteCommand="DELETE FROM [Table1] WHERE [id] = @id"
                    UpdateCommand="UPDATE [Table1] SET [Name] = @Name, [Email] = @Email, [Subject] = @Subject, [Message] = @Message WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Message" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <!--
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Subject</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <p>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Email</asp:ListItem>
                        <asp:ListItem>Subject</asp:ListItem>
                        <asp:ListItem>Message</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </p>
                <asp:Button ID="Button2" runat="server" Text="Showall" />
                <asp:Button ID="Button1" runat="server" Text="Search" Height="24px" Width="82px" />
                -->
            </div>
        </div>
    </form>
    <!-- Begin Footer -->
    <div class="footer-wrapper">
        <div id="footer" class="four">
            <div id="first" class="widget-area">
                <div class="widget widget_search">
                    <h3 class="widget-title">Search</h3>
                    <form class="searchform" method="get" action="#">
                        <input type="text" name="s" value="type and hit enter" />
                    </form>
                </div>
                <div class="widget widget_archive">
                    <h3 class="widget-title">Archives</h3>
                    <ul>
                        <li><a href="#">September 2012</a> (6)</li>
                        <li><a href="#">August 2012</a> (2)</li>
                        <li><a href="#">July 2012</a> (2)</li>
                        <li><a href="#">June 2012</a> (4)</li>
                        <li><a href="#">May 2012</a> (3)</li>
                        <li><a href="#">January 2012</a> (1)</li>
                    </ul>
                </div>
            </div>
            <!-- #first .widget-area -->

            <div id="second" class="widget-area">
                <div id="twitter-2" class="widget widget_twitter">
                    <h3 class="widget-title">Twitter</h3>

                    <div id="twitter-wrapper">
                        <div id="twitter"></div>
                        <span class="username"><a href="http://twitter.com/elemisdesign">→ Follow @elemisdesign</a></span>
                    </div>
                </div>
            </div>
            <!-- #second .widget-area -->

            <div id="third" class="widget-area">
                <div id="example-widget-3" class="widget example">
                    <h3 class="widget-title">Popular Posts</h3>
                    <ul class="post-list">
                        <li>
                            <div class="frame">
                                <a href="#">
                                    <img src="style/images/art/s1.jpg" /></a>
                            </div>
                            <div class="meta">
                                <h6><a href="#">Charming Winter</a></h6>
                                <em>28th Sep 2012</em>
                            </div>
                        </li>
                        <li>
                            <div class="frame">
                                <a href="#">
                                    <img src="style/images/art/s2.jpg" /></a>
                            </div>
                            <div class="meta">
                                <h6><a href="#">Trickling Stream</a></h6>
                                <em>5th Sep 2012</em>
                            </div>
                        </li>
                        <li>
                            <div class="frame">
                                <a href="#">
                                    <img src="style/images/art/s3.jpg" /></a>
                            </div>
                            <div class="meta">
                                <h6><a href="#">Morning Glory</a></h6>
                                <em>26th Sep 2012</em>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #third .widget-area -->

        <div id="fourth" class="widget-area">
            <div class="widget">
                <h3 class="widget-title">Flickr</h3>
                <ul class="flickr-feed"></ul>

            </div>
            <%--</div><!-- #fourth .widget-area -->--%>
        </div>
        <div class="site-generator-wrapper">
            <div class="site-generator">Copyright Obscura 2012. Design by <a href="http://elemisfreebies.com">elemis</a>. All rights reserved.</div>
        </div>
        <!-- End Footer -->
</body>
</html>
