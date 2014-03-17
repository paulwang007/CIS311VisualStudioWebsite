<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CIS311Proj5.Contact" %>

<script runat="server">
    protected void submit(object sender, EventArgs e)
    {
        String output;
        String name;
        String email;
        String subject;
        String message;
        if (IsValid(Email.Text) == false)
        {
            outputLabel.Text = "Invalid Email";
            return;
        }
        output = "Name: " + Name.Text + "<br />"
            + "Email: " + Email.Text + "<br />"
            + "Subject: " + Subject.Text + "<br />"
            + "Message: " + Message.Text + "<br />";
        name = Name.Text;
        email = Email.Text;
        subject = Subject.Text;
        message = Message.Text;
        outputLabel.Text = output;
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["paulString"].ConnectionString;
        System.Data.SqlClient.SqlConnection conn = null;
        StringBuilder errorMessages = new StringBuilder();
        try
        {
            conn = new System.Data.SqlClient.SqlConnection(connString);
            conn.Open();
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand())
            {
                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT INTO [Table1] Values (@Name,@Email,@Subject,@Message)";
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Subject", subject);
                cmd.Parameters.AddWithValue("@Message", message);

                int rowAffected = cmd.ExecuteNonQuery();
                if (rowAffected == 1)
                {
                    Name.Text = "";
                    Email.Text = "";
                    //Alert the user the record got saved

                }
                else
                {
                    //Alert the user the thing not got saved
                }
            }
        }
        catch (System.Data.SqlClient.SqlException sqlException)
        {
            System.Console.Write(sqlException.Message);
            //Alert user
            outputLabel.Text = "Exception, not saved!";
        }
    }

    public bool IsValid(string emailaddress)
    {
        try
        {
            System.Net.Mail.MailAddress m = new System.Net.Mail.MailAddress(emailaddress);
            return true;
        }
        catch (FormatException)
        {
            return false;
        }
    }

    protected void submitDatabase(object sender, EventArgs e)
    {

    }
    
</script>

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
    $.backstretch("style/images/bg/1.jpg");
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="scanlines"></div>

    <!-- Begin Header -->
    <div class="header-wrapper opacity">
        <div class="header">
            <!-- Begin Logo --
		<div class="logo">
		    <a href="index.html">
				<img src="style/images/logo.png" alt="" />
			</a>
	    </div>
		<!-- End Logo -->
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

    <!-- Begin Wrapper -->
    <div class="wrapper">
        <!-- Begin Intro -->
        <div class="intro">Feel free to leave Paul Wang a message! </div>
        <ul class="social">
            <li><a class="rss" href="#"></a></li>
            <li><a class="facebook" href=""></a></li>
            <li><a class="twitter" href=""></a></li>
            <li><a class="pinterest" href="#"></a></li>
            <li><a class="dribbble" href="#"></a></li>
            <li><a class="flickr" href="#"></a></li>
            <li><a class="linkedin" href=""></a></li>
        </ul>
        <!-- End Intro -->

        <!-- Begin Container -->
        <div class="content box">

            <h1 class="title">Contact</h1>
            <h3>Email me a Message</h3>

            <div class="form-container">
                <form runat="server" class="forms" action="#" method="post">
                    <fieldset>
                        <ol>
                            <li class="form-row text-input-row">
                                <label>Name</label><asp:TextBox ID="Name" runat="server" type="text" name="name" value="" class="text-input required" /></li>
                            <li class="form-row text-input-row">
                                <label>Email</label><asp:TextBox ID="Email" runat="server" type="text" name="email" value="" class="text-input required email" /></li>
                            <li class="form-row text-input-row">
                                <label>Subject</label><asp:TextBox ID="Subject" runat="server" type="text" name="subject" value="" class="text-input required" /></li>
                            <li class="form-row text-area-row">
                                <label>Message</label><asp:TextBox ID="Message" runat="server" name="message" class="text-area required"></asp:TextBox></li>
                            <li>
                                <asp:Button ID="submitButton" runat="server" type="submit" name="post-submit" value="Submit" OnClick="submit" class="btn btn-lg btn-primary btn-block" Text="Submit" />
                            </li>

                        </ol>
                    </fieldset>
                </form>
            </div>
            <div>
                <asp:Label ID="outputLabel" runat="server"></asp:Label></div>
        </div>
        <!-- End Container -->

        <!-- Begin Sidebar -->
        <div class="sidebar box">
            <div class="sidebox widget">
                <h3 class="widget-title">Where Are We?</h3>
                <p>3801 W Temple Ave
                    <br />
                    Pomona, CA 91768</p>
                <p>
                    <span class="lite1">Tel:</span> +626 242 3399<br />
                    <span class="lite1">E-mail:</span> paul.wang.is.007@gmail.com
                </p>
            </div>

            <div class="sidebox widget">
                <h3 class="widget-title">I will read all your messages</h3>
                <p>I will reply back to you ASAP! </p>
            </div>

        </div>
        <!--End Sidebar -->
        <div class="clear"></div>

    </div>
    <!-- End Wrapper -->

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
        <script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>
