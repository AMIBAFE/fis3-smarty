//基于FIS3的针对Smarty模板的前端工程解决方案。
fis.require('smarty')(fis);
fis.set('namespace', 'project');

//js模块化
fis.hook('commonjs',{
    paths: {
      'jquery': '/js-modules/jquery/jq.js'
  }
});
fis.match('/js-modules/**.js', {
  isMod: true
},true);
fis.match('/widget/**/**.js', {
  isMod: true
},true);

//静态资源映射表
fis.match('*.tpl',{
  useMap:true
})

//开发时
fis.media('debug').match('*.{js,css,png}',{
  useHash:false,
  useSprite:false,
  optimizer:null
},true)

//某些资源不产出
fis.media('go').match(/test|.*\.conf|plugin|.*\.md/,{
  release:false
})
  .match('{/site/(**.tpl),/widget/(**.tpl)}',{
    release:'resources/views/$0'
  })
  .match('(**.js)',{
    release:'public/js/$1'
  })
  .match('::image',{
    release:'public/img/$0'
  })
  .match('**.{css,less}',{
    release:'public/css/$0'
  })
  .match('**.{ttf,otf,woff,eot}',{
    release:'public/font/$0'    
  })
  .match('**.{mp4,avi,mkv,swf,wmv}',{
    release:'public/other/$0'    
  })