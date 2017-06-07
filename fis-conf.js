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

//编译sass文件
fis.match('**.{scss,sass}', {
	rExt: '.css',
	parser: fis.plugin('node-sass', {
		outputStyle: 'compressed'
	}),
	preprocessor: fis.plugin('autoprefixer', {
		"browsers": ["Android >= 2.1", "iOS >= 4", "ie >= 8", "firefox >= 15"],
		"cascade": true
	})
});

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

//某些资源不产出(后台发布使用)
fis.media('go').match(/test|.*\.conf|plugin|.*\.md/,{
  release:false
})
//产出目录
  .match('{/site/(**.tpl),/widget/(**.tpl)}',{
    release:'resources/views/project/$0'
  })
  .match('(**.js)',{
    release:'public/js/$1'
  })
  .match('::image',{
    release:'public/img/$0'
  })
  .match('**.{css,less,scss,sass}',{
    release:'public/css/$0'
  })
  .match('**.{ttf,otf,woff,eot}',{
    release:'public/font/$0'
  })
  .match('**.{mp4,avi,mkv,swf,wmv,txt,json,map}',{
    release:'public/other/$0'    
  })
  .match(/project-map.json/,{
	  release:'public/config/$0'
  })