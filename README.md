## chaunglan

**chaunglan-asp-demo**

## 使用说明

- sms.asp 发短信的后台代码
- index.asp 前端ajax交互
- GetCode.asp 是图形验证码
- js: jquery.js 是引用的js
- 将这个三者之间之间放在asp环境里面，设置index.asp为启动页面

## asp代码参数填写说明
```
''//请登录zz.253.com获取API账号、密码以及短信发送的URL
target = "http://smssh1.253.com/msg/send/json"  
''//设置您要发送的内容：其中“【】”中括号为运营商签名符号，多签名内容前置添加提交
post_data="{""account"":""xxxx"",""password"":""xxxx"",""phone"":""xxxx"",""msg"":""用户您好，您的验证码是"&getcode&""",""report"":""false""}"
```
## 源码说明 

- 编码要求为utf-8,请先将编辑器底层语言设置为utf-8

- 带有特殊字符的内容无法直接提交,需先将特殊字符进行urlencode编码后方能提交

- 开发API可参考单元测试 doc/253云通讯PaaS短信云接口说明（JSON版）.docx



## 联系我们

[创蓝客服 链接](https://kefu253.udesk.cn/im_client/?web_plugin_id=47820={"name":"github"})


<img src="doc/kefu.jpg" width="20%" alt="创蓝客服"/>




## 文档链接- [api文档](https://www.253.com/#/document/api_doc/zz)

