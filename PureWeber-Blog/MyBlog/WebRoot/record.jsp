<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>  
<%@ page import="com.data.artical.*" import="java.sql.*"
%>

<%	String name[] = new String[10000];
	int typeId[] = new int[10000];
	String main[] = new String[10000];
	String time[] = new String[10000];
	int eyes[] = new int[10000];
	int comments[] = new int[10000];
	int j = 0;
	new ArticalData();
	for(int i =0;i<ArticalData.name.length;i++){
		while(ArticalData.typeId[i]==1){
			name[j]=ArticalData.name[i];
			main[j]=ArticalData.main[i];
			time[j]=ArticalData.time[i];
			eyes[j]=ArticalData.eyes[i];
			comments[j]=ArticalData.comments[i];
			j++;
			break;
		}
	}
 %> 
<html>
  <div class="about_me" id="mydiv">
    <div class="about_title">
      <span class="glyphicon glyphicon-console" aria-hidden="true"> 您现在的位置：<a href="blog.html">首页</a><strong>></strong><a href="record.html">记录</a></span>
    </div>
    <div class="record_blogs" id="blogs">
<%
	for(int i =0;i<name.length;i++){ 
		if(name[i]!=null){
	%>
		 <div class="blogs">
          <figure><img src="image/01.jpg"></figure>
          <ul>
            <h3><a href="/"><%=name[i] %></a></h3>
            <p class="p_child"><%=main[i] %></p>
            <p class="autor">
              <span class="lm f_l"><a href="/">个人记录</a></span>
              <span class="dtime f_l"><%=time[i] %></span>
              <span class="viewnum f_r">浏览（<a href="/"><%=eyes[i] %></a>）</span><span class="pingl f_r">评论（<a href="/"><%=comments[i] %></a>）</span>
            </p>
          </ul>
        </div>
	<% }
	} 
	%>
      <div id="page"></div>
    </div> 
  </div> 

</html>