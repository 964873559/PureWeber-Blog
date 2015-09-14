
window.onload =function () {
	// 左侧菜单栏
	var tabLi=document.getElementById("tab_id").getElementsByTagName("li");
	var articalLi=document.getElementById("artical_det").getElementsByTagName("div");
	for (var i = 0; i <tabLi.length ; i++) {
		tabLi[i].index = i;
		tabLi[i].onmouseover = function(){
			for (var n = 0; n < tabLi.length; n++) {
				tabLi[n].className="";
			};
			this.className="tab_1";
			for (var n = 0; n < articalLi.length; n++) {
				articalLi[n].style.display="none";
			};
			articalLi[this.index].style.display="block";
		}
	};
//=====================
	
}
//AJAX实现导航栏静态切换
function showHint(a) {

	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("mydiv").innerHTML=xmlhttp.responseText;
	    onload();
	    }
	  }
	if(a==2){
		xmlhttp.open("GET","about.jsp",true);
	}else if(a==3){
		xmlhttp.open("GET","record.jsp",true);	
	}else if(a==4){
		xmlhttp.open("GET","mood.jsp",true);
	}else if(a==5){
		xmlhttp.open("GET","share.jsp",true);
	}else{
		xmlhttp.open("GET","message.jsp",true);
	}
	xmlhttp.send();
}

