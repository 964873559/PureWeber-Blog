<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>  
<%@ page import="com.data.artical.*" import="java.sql.*"
%>

<%! String eyes[] = new String[6];
	String times[] = new String[6];
%>
<%	new SortEyes();
	new SortTime();
for(int i =0;i<6;i++){
	eyes[i] = SortEyes.name[i];
	times[i] = SortTime.name[i];
}
%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
	<title>Blog of W_liitlewhite</title>
  <link rel="shortcut icon" href="image/favicon.ico"/>
  <link rel="stylesheet" href="css/Blog.css" type="text/css">
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/Blog.js"></script>
	<script type="text/javascript" src="js/page.js"></script>
</head>
<body style="background-color:#f0f0f0">
	<!-- Bootstrap导航栏 -->
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">

  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>
    <img class="logo" src="image/logo.png">
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default btn-no">
        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 搜索
        </button>
        
      </form>
      <ul class="nav navbar-nav navbar-right" style="margin-right:50px">
        <li><a href="#">登录</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">注册</a></li>
       
      </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!-- 轮播图片 -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="image/photo_5.jpg" alt="0 slide">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="image/photo_3.jpg" alt="1 slide">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="image/bg_1.jpg" alt="2 slide">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">上一页</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">下一页</span>
  </a>
</div>
<div class="main">
  <div class="left-div">
    <div class="photo"><a href="#"><span><strong>关注我</strong></span></a></div>
    <div class="sign"></div>
    <div class="info">
      <span class="glyphicon glyphicon-camera" aria-hidden="true"> 网名：小白|小天真</span>
      <span class="glyphicon glyphicon-pencil" aria-hidden="true"> 签名：据说不好好学习就找不到女朋友...</span>
      <span class="glyphicon glyphicon-user" aria-hidden="true"> 职业：在校学生</span>
      <span class="glyphicon glyphicon-phone" aria-hidden="true"> 电话：18245010634</span>
      <span class="glyphicon glyphicon-envelope" aria-hidden="true"> 邮箱：964873559@qq.com</span>
    </div>
    <div class="artical">
      <div class="tab" id="tab_id">
        <ul>
          <li class="tab_1"><a href="#">点击排行</a></li>
          <li><a href="#">好文推荐</a></li>
          <li><a href="#">最新文章</a></li>
        </ul>
      </div>
    </div>
    <div id="artical_det">
      <div class="artical_list" style="display:block">
        <ul>
          <li><a href="#"><%=eyes[0] %></a></li>
          <li><a href="#"><%=eyes[1] %></a></li>
          <li><a href="#"><%=eyes[2] %></a></li>
          <li><a href="#"><%=eyes[3] %></a></li>
          <li><a href="#"><%=eyes[4] %></a></li>
          <li><a href="#"><%=eyes[5] %></a></li>
        </ul>
      </div>
      <div class="artical_list" style="display:none">
        <ul>
          <li><a href="#">白白的小天真，天真的小小</a></li>
          <li><a href="#">白白的小天真，天真的小</a></li>
          <li><a href="#">白白的小天真，天真的</a></li>
          <li><a href="#">白白的小天真，天真</a></li>
          <li><a href="#">白白的小天真，天</a></li>
          <li><a href="#">白白的小天真</a></li>
        </ul>
      </div>
      <div class="artical_list" style="display:none">
        <ul>
          <li><a href="#"><%=times[0] %></a></li>
          <li><a href="#"><%=times[1] %></a></li>
          <li><a href="#"><%=times[2] %></a></li>
          <li><a href="#"><%=times[3] %></a></li>
          <li><a href="#"><%=times[4] %></a></li>
          <li><a href="#"><%=times[5] %></a></li>
        </ul>
      </div>
    </div>
    <div class="link">
      <h4>&nbsp; 友情链接</h4>
      <ul>
        <li style="background:#ff8247" ><a href="http://imooc.com/" target="_blank">IMOOC</a></li>
        <li style="background:#add8e6"><a href="http://www.w3school.com.cn/" target="_blank">w3school</a></li>
        <li style="background:#a52a2a"><a href="http://ke.qq.com/" target="_blank">腾讯课堂</a></li>
        <li style="background:#66cd00"><a href="http://csdn.net/" target="_blank">CSDN</a></li>
        <li style="background:#551a8b"><a href="http://baidu.com/" target="_blank">百度</a></li>
        <li style="background:#ee0000"><a href="http://jikexueyuan.com/" target="_blank">极客学院</a></li>
        <li style="background:#ee6363"><a href="http://mooc.guokr.com/" target="_blank">MOOC学院</a></li>
      </ul>
    </div>
    <div class="share_me">
      <p><strong>分享给好友</strong></p>
    </div>
    <div class="share">
      <div class="bdsharebuttonbox">
        <a href="#" class="bds_more" data-cmd="more" herf="http://share.baidu.com/code#"></a>
        <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" herf="http://share.baidu.com/code#"></a>
        <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" herf="http://share.baidu.com/code#"></a>
        <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" herf="http://share.baidu.com/code#"></a>
        <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网" herf="http://share.baidu.com/code#"></a>
        <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" herf="http://share.baidu.com/code#"></a>
      </div>
    <script>
    window._bd_share_config={
      "common":{
        "bdSnsKey":{},
        "bdText":"",
        "bdMini":"2",
        "bdMiniList":false,
        "bdPic":"",
        "bdStyle":"0",
        "bdSize":"32"},
        "share":{}
      };
      with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
      </script>
    </div>
  </div>
  <div class="header">
    <div class="head_1"><strong>随心而记 随意而行</strong></div>
    <div class="head_2">生活中很多的灵感，往往一触即逝，让人来不及捕捉...</div>
    <div class="head_3" title="加入pureweber福利多"></div>
    <ul>
      <li><a href="blog.jsp">首页</a></li>
      <li><a href="javascript:showHint(2);javascript:onload()">关于我</a></li>
      <li><a href="javascript:showHint(3)">记录</a></li>
      <li><a href="javascript:showHint(4)">心情</a></li>
      <li><a href="javascript:showHint(5)">分享</a></li>
      <li><a href="javascript:showHint(6)">留言</a></li>
    </ul>
  </div>
<div id="mydiv">
  <div class="runner_photo">
    <div class="bg">
      <a href="#"><img id="slide-img-1" src="image/a4.jpg"></a>
    </div>
    <div class="words">
      <ul>
        <p>The best life is use of willing attitude, a happy-go-lucky life.</p>
        <p>最好的生活是用心甘情愿的态度，过随遇而安的生活。</p>
      </ul>
    </div>
  </div>
  <div class="bloglist">
    <h2>
      <p>推荐文章</p>
    </h2>
  </div>
  <div class="formal_text" id="blogs">
    <div class="blogs">
          <figure><img src="image/01.jpg"></figure>
          <ul>
            <h3><a href="/">住在手机里的朋友</a></h3>
            <p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后郑重或是出于礼貌用手机记下对方的电话号码。在快节奏的生活里，我们不知不觉中就成为住在别人手机里的朋友。又因某些意外，变成了别人手机里匆忙的过客，这种快餐式的友谊 ...</p>
            <p class="autor">
              <span class="lm f_l"><a href="/">个人博客</a></span>
              <span class="dtime f_l">2014-02-19</span>
              <span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span>
            </p>
          </ul>
        </div>
        <div class="blogs">
          <figure><img src="image/02.jpg"></figure>
          <ul>
            <h3><a href="/">教你怎样用欠费手机拨打电话</a></h3>
            <p>初次相识的喜悦，让你觉得似乎找到了知音。于是，对于投缘的人，开始了较频繁的交往。渐渐地，初识的喜悦退尽，接下来就是仅仅保持着联系，平淡到偶尔在节假曰发短信互致问候...</p>
            <p class="autor">
              <span class="lm f_l"><a href="/">个人博客</a></span>
              <span class="dtime f_l">2014-02-19</span>
              <span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span>
            </p>
          </ul>
        </div>
        <div class="blogs">
          <figure><img src="image/03.jpg"></figure>
          <ul>
            <h3><a href="/">原来以为，一个人的勇敢是，删掉他的手机号码...</a></h3>
            <p>原来以为，一个人的勇敢是，删掉他的手机号码、QQ号码等等一切，努力和他保持距离。等着有一天，习惯不想念他，习惯他不在身边,习惯时间把他在我记忆里的身影磨蚀干净... </p>
            <p class="autor">
              <span class="lm f_l"><a href="/">个人博客</a></span>
              <span class="dtime f_l">2014-02-19</span>
              <span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span>
            </p>
          </ul>
        </div>
        <div class="blogs">
          <figure><img src="image/04.jpg"></figure>
          <ul>
            <h3><a href="/">手机的16个惊人小秘密，据说99.999%的人都不知</a></h3>
            <p>引导语：知道么，手机有备用电池，手机拨号码12593+电话号码=陷阱……手机具有很多你不知道的小秘密，说出来一定很惊奇！不信的话就来看看吧！...</p>
            <p class="autor">
              <span class="lm f_l"><a href="/">个人博客</a></span>
              <span class="dtime f_l">2014-02-19</span>
              <span class="viewnum f_r">浏览（<a href="/">459</a>）</span><span class="pingl f_r">评论（<a href="/">30</a>）</span>
            </p>
          </ul>
        </div>
      </div>
</div>
</div>
<div class="reserve">©2015 ALL RIGHTS RESERVED By W_littlewhite</div>

<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>

</html>