<section class="content-wrap">
    <div class="container">
        <div class="row">
            <main class="col-md-8 main-content">
                <article class="post">
                    <div class="post-head">
                        <h1 class="post-title">
                            <a href="###">
                                环境搭建
                            </a>
                        </h1>
                    </div>
                    <div class="post-content">
                        <h2>本地服务器环境要求</h1>
                        <h3>手动安装</h2>
                        <div class='p-wrap'>
                            <p>第一步：<a href="https://nodejs.org/en/">安装Node.js(PS:为了避免由于版本问题造成的编译失败，安装v4.4.5版本)</a></p>
                            <p>第二步：<a href="https://java.com/zh_CN/">安装JAVA</a></p>
                            <p>第三步：<a href="https://www.apachefriends.org/zh_cn/index.html">xammp</a></p>
                            <ul class="describe">
                                <li>windows用户下载xammp并安装，将xampp/php路径加入到环境变量中。</li>
                                <li>mac用户下载xammp并安装</li>
                                <pre>
                                    使用zsh
                                    <code>$ echo 'export PATH=/Applications/XAMPP/bin:$PATH' >> ~/.zshrc
$ source ~/.zshrc
                                    </code>
                                </pre>
                                <pre>
                                    使用bash
                                    <code>
$ echo 'export PATH=/Applications/XAMPP/bin:$PATH' >> ~/.bashrc
$ source ~/.bashrc
                                    </code>
                                </pre>
                            </ul>
                        </div>
                        <h3>示例</h3>
                        <div class="p-wrap">
                            <p>安装构建工具，在命令行输入以下命令(PS:Mac请加sudo)</p>
                            <pre>
                                <code>npm install -g denkf</code>
                            </pre>
                            <p>进入demo目录，执行以下命令对项目模块进行构建</p>
                            <pre>
                                <code>foo release</code>
                            </pre>
                            <p>为了方便开发，支持文件自动编译，添加-w参数。</p>
                            <pre>
                                <code>foo release -w</code>
                            </pre>
                            <p>启动本地测试服务进行预览</p>
                            <pre>
                                <code>foo server start</code>
                            </pre>
                            <p>效果图</p>
                             <div class="featured-media">
                                <a href="###">
                                    <img src="./bg.png" alt="web开发手册">
                                </a>
                            </div>
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