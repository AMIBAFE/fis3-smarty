{%html%}
  {%head%}
    <meta charset='utf-8'>
    {%require name="project:lib/mod.js"%}
  {%/head%}
  {%body%}
      {%widget name="project:widget/head/head.tpl"%}
      {%widget name="project:widget/index/index.tpl"%}            
      {%widget name="project:widget/footer/footer.tpl"%}      
  {%/body%}
  {%script%}
    require('../../widget/head/head.js');
    require('../../widget/footer/footer.js');
    $_map = __RESOURCE_MAP__
  {%/script%}
{%/html%}