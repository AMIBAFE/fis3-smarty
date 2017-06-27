<!DOCTYPE html>
{%html%}
  {%head%}
    <meta charset='utf-8'>
    <title>webDevelop</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {%require name="project:css-modules/bootstrap/bootstrap.min.css"%}
    {%require name="project:css-modules/bootstrap/font.css"%}
    {%require name="project:css-modules/reset/reset.css"%}
    {%require name="project:lib/mod.js"%}
  {%/head%}
  {%body class='home-template'%}
      {%widget name="project:widget/head/head.tpl"%}
      {%widget name="project:widget/nav/nav.tpl"%}                  
      {%widget name="project:widget/webDevelopC/webDevelopC.tpl"%}                  
  {%/body%}
  {%script%}
    require('../../widget/head/head.js');
    require('../../widget/nav/nav.es6');
  {%/script%}
{%/html%}