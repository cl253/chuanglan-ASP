<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%
dim username,getcode
username=request.Form("username")
getcode=cstr(session("getcode"))

Function Post(url,data)
	dim Https 
	set Https=server.createobject("MSXML2.XMLHTTP")
	Https.open "POST",url,false
	Https.setRequestHeader "Content-Type","application/json"
	Https.send data
	if Https.readystate=4 then
		dim objstream 
		set objstream = Server.CreateObject("adodb.stream")
		objstream.Type = 1
		objstream.Mode =3
		objstream.Open
		objstream.Write Https.responseBody
		objstream.Position = 0
		objstream.Type = 2
		objstream.Charset = "utf-8"
		Post = objstream.ReadText
		objstream.Close
		set objstream = nothing
		set https=nothing
	end if
End Function

dim target,post_data,tempResult
''//请登录zz.253.com获取API账号、密码以及短信发送的URL
target = "http://smssh1.253.com/msg/send/json"  
''//设置您要发送的内容：其中“【】”中括号为运营商签名符号，多签名内容前置添加提交
post_data="{""account"":""N9994784"",""password"":""Dasibugaosuni12"",""phone"":"""&username&""",""msg"":""用户您好，您的验证码是"&getcode&""",""report"":""false""}"
response.Write(Post(target,post_data))
''//请自己解析Post(target,post_data)返回的json格式并实现自己的逻辑

%>