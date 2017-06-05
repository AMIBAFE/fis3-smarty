# fis3-smarty
基于 FIS3 的针对 Smarty 模板的前端工程解决方案
========================================
环境要求
-----
+  安装nodejs   
地址：[<a href="https://nodejs.org/en/">https://nodejs.org/en/</a>]  

+  安装JAVA    
地址：[<a href="https://java.com/zh_CN/">https://java.com/zh_CN/</a>]  

+  安装php-cgi      
地址：<a href="https://www.apachefriends.org/zh_cn/index.html">[https://www.apachefriends.org/zh_cn/index.html]</a>  
*windows用户下载xammp并安装，将xampp/php路径加入到环境变量中。*  

+  安装fis3    
在命令行输入以下命令  
	```
	npm install -g fis3
	```	
+  安装fis3-smarty    
在命令行输入以下命令   
	```
	npm install -g fis3-smarty  
	```

示例  
----
进入demo目录，执行以下命令对项目模块进行构建
```  
fis3 release  
```
启动本地测试服务进行预览  
```
fis3 server start
```

+  效果    
<div align="center">
<img src="http://chuantu.biz/t5/99/1496467722x2728328981.png">
</div>

+  目录    
<div align="left">
<img src="http://chuantu.biz/t5/100/1496642283x2890171731.png">
</div>


+  模拟Ajax  
	1.准备好假数据文件，如cs.json,放在test目录下   
	2.配置server.conf(配置文件说明)   
		(1)配置文件每一行为一条规则。  
		(2)格式为：rewrite (空格) 匹配url正则 (空格) 命中正则后的目的文件路径或者url。  
		(3)rewrite ： 匹配规则后转发到一个文件，同时url修改为访问文件的url路径。 目的文件路径的根目录(root)是fis本地调试目录(可以输入命令 $ fis server open 打开噢)，配置文件从根目录之后写即可。   

	如:rewrite ^\/ajax.* /test/project/cs.json
	```
	$.ajax({
        url:'/ajax.json',
        method:'POST',
        dataType:'json'
    }).done(function(res){
        console.log(res);
    })
	```
+  开发目录    
地址：[
<a href="https://github.com/fex-team/fis3-smarty/blob/master/doc/dev.md#%E8%AE%BE%E7%BD%AEsmarty%E5%88%86%E7%95%8C%E7%AC%A6">https://github.com/fex-team/fis3-smarty/blob/master/doc/dev.md#%E8%AE%BE%E7%BD%AEsmarty%E5%88%86%E7%95%8C%E7%AC%A6</a>]


