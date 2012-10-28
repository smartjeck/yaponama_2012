<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><%= content_for?(:title) ? yield(:title) : "Yaponama 2012" %></title>
  <%= csrf_meta_tags %>

  <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
  <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
  <![endif]-->

  <%= stylesheet_link_tag    "application", :media => "all" %>
  <%= javascript_include_tag "application" %>

  <!-- 
  <link href="images/favicon.ico" rel="shortcut icon">
  <link href="images/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
  <link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
  --> 

</head>
<body>

  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container-fluid">
        <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#">Yaponama2012</a>
        <div class="container-fluid nav-collapse">
          <ul class="nav">
            <li><%= link_to "Клиенты", admin_users_path  %></li>
            <li><%= link_to "Трэш", "/trash_help/index"  %></li>
            <li><%= link_to "Предыдущее", "/admin/emails"  %></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
  </div>


  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <%= yield %>
      </div>
    </div><!--/row-->

    <footer>
      <p>&copy; Company 2012</p>
    </footer>

  </div> <!-- /container -->

  </body>
</html>