<script src="/js/jquery.js" language="javascript" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script type="text/javascript">
function get(obj) {
    var partten = /^\d{10,13}$/;
    if (!partten.test(document.getElementById("username").value)) {
        alert('��������ȷ���ֻ�����');
        return;
    }
  obj.disabled = true;
  $.ajax({
      url: "/sms.asp",
      type: "Post",
      data: "username=" + $("#username").val(),
      success: function(msg) {
          
          alert(msg);
      }
  })
  
}
</script>
<form id="userinfo" name="userinfo" method=post action=>
   <div class="title">�û���¼</div> 
   <%if request.Cookies("shop22cn")("username")=""  then%>
   <div class="inputcss">  
    
    <input type="text" id="username" name="username" placeholder="����д�˺�/�ֻ���" class="requiredField mob"></div>
   <div class="inputcss">  
    <input type="password" id="UserPassword" name="UserPassword" placeholder="��������" class="requiredField pwd"></div>
   					<div class="inputcss">
						<input placeholder="��������֤��"  type="text" class="requiredFieldyzm yzm" name="verifycode" id="verifycode" value="<%If GetCode=9999 Then Response.Write "9999"%>" >
						<input type="button" class="go-wenbenkuang2" value="��ȡ�ֻ���֤��"  id="phone_btn" name="phone" onClick="showtime(60);get(this)"></div>
<div class="inputcss"> <img src=/GetCode.asp>
					</div> 
					<div class="inputcss"><input class="go-wenbenkuang1" onClick="return checkuserinfo();" type=submit name="submit" value="�ύ��Ϣ"></div>
					<div class="p1of2l"><a href="/regest/<% =links %>">��Աע��</a></div><div class="p1of2r">��������?</div>
					
                            <% else %><div style="height:400px">�����ǻ�Ա:��Ա�ţ�<% =request.Cookies("shop22cn")("username") %></div><% end if %>                         
						 
                    </form>
					
	<script type="text/javascript">

function showtime(t){
	document.userinfo.phone.disabled=true;
	for(i=1;i<=t;i++) {
		window.setTimeout("update_p(" + i + ","+t+")", i * 1000);
		
	}

}

function update_p(num,t) {
	if(num == t) {
		document.userinfo.phone.value =" ���·��� ";
		document.userinfo.phone.disabled=false;
	}
	else {
		printnr = t-num;
		document.userinfo.phone.value = " (" + printnr +")������·���";
	}
}

</script> 