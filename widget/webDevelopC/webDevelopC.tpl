<section class="content-wrap">
    <div class="container">
        <div class="row">
            <main class="col-md-8 main-content">
                <article class="post">
                    <div class="post-head">
                        <h1 class="post-title">
                            <a href="###">
                                前端开发文档
                            </a>
                        </h1>
                    </div>
                    <div class="post-content">
                        <h3>目录结构</h3>
                        <pre>
                            <code>
├── README.md
├── css-modules          #公用CSS目录，字体文件
├── js-modules           #公用js库
├── lib                  #mod.js
├── plugin               #编译后端模板插件
├── site                 #网站页面
├── test                 #测试数据存放处
├── widget               #页面组件存放处
├── fis-conf.js          #fis3配置文件(可以按照自己的需求配置)
├── server.conf          #本地测试的URL转发规则配置文件
└── smarty.conf          #本地测试的 Smarty 引擎的配置文件
                            </code>
                        </pre>
                        <h3>模块化开发</h3>
                        <div class="p-wrap">
                            <p><strong>同名依赖</strong><br>当一个模板，js、css （包括less、scss等）如果跟模板同名，那么就会给模板添加对同名js、css的依赖。同样如果一个 UI 组件，css 和 js 同名，也会给 js 添加同名 css 的依赖。(PS:以上依赖都是同步依赖，所以当确定某个 js 要异步引入的时候，请不要跟模板同名。)</p>
                            <p><strong>组件脚本加载</strong><br>对于 UI组件，包含 js 的组件，通过前端模版化框架提供的接口进行调用。</p>
                            <pre>
                                <code>
require('./a.js'); // 相对路径
require('/widget/cs/a.js'); // 相对于模板根目录的绝对路径。
require('project:widget/cs/a.js'); // 使用 ID 进行调用，默认ID为project
                                </code>
                            </pre>
                            <p><strong>require</strong><br>此接口可以加载任意资源，不需要非得是组件化资源，但只是告诉后端框架你需要加载哪些资源，最终的结果是资源只会被加载，包括其依赖。如果是 js 组件，并不会由于调用这个接口直接触发执行组件逻辑(支持相对路径和绝对路径，使用请参照demo)</p>
                            <p><strong>URL模拟转发</strong><br>模块目录下的 server.conf 文件为配置 rewrite 规则的配置文件，包含规则</p>
                            <pre>
                                <code>
rewrite 把一个匹配链接定向到某个文件或者 php 逻辑方便处理
redirect 跳转
template 某个匹配 URL 解析某个 .tpl 文件
//例子
rewrite ^\/ajax.* /test/project/cs.json(可用于模拟ajax请求)
redirect ^\/?$ /project/site/index/index（默认打开页面，可安需求自行配置）
template ^\/xxxx  A/page/index.tpl
PS:
rewrite 和 redirect 规则配置的文件相对于 www 目录（fis3 server open 打开此目录）
template 相对于 www/template 目录
                                </code>
                            </pre>
                            <p><strong>数据模拟</strong><br>页面对应规则,可以参照demo的title</p>
                            <pre>
                                <code>
##页面对应规则##
/site/index/index.tpl
/test/site/index/index.php
                                </code>
                            </pre>
                        </div>
                    </div>
                    <footer class="post-footer clearfix"></footer>
                </article>
               
            </main>
            <aside class="col-md-4 sidebar">
                <div class="widget">
                    <h4 class="title">BUG反馈</h4>
                    <div class="content community">
                        <p>QQ：984504727</p>
                        <p>
                        <a href="https://github.com/AMIBAFE/fis3-smarty/issues" title="issues" target="_blank" >有问题可以在这里提</a>
                        </p>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</section>