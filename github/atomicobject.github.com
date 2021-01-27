```<html>
  <!--
************************************************************

THIS FILE GENERATED BY index.erb ... DO NOT EDIT

************************************************************
-->
  <head>
    <title>atomicobject.rb</title>
  </head>

  <link rel="stylesheet" type="text/css" href="style.css" />

  <body>

    <div align="center">

      <map name="GraffleExport">
	<area shape=rect coords="450,102,646,120" href="http://github.com/atomicobject">
	<area shape=rect coords="25,102,179,120" href="http://atomicobject.com">
	<area shape=rect coords="583,28,638,83" href="http://github.com/atomicobject">
	<area shape=rect coords="33,25,94,86" href="http://atomicobject.com">
</map>
<img border=0 src="page_header.png" usemap="#GraffleExport">


      <div id="project_list">
        
          <div id="project_#{project.name}" class="project_row">
             <a href="http://atomicobject.github.com/constructor" class="project_link">Constructor</a>
             <div class="project_description">Initialization using named arguments</div>
          </div>
        
          <div id="project_#{project.name}" class="project_row">
             <a href="http://atomicobject.github.com/diy" class="project_link">DIY</a>
             <div class="project_description">Dependency injection using YAML</div>
          </div>
        
          <div id="project_#{project.name}" class="project_row">
             <a href="http://atomicobject.github.com/publisher" class="project_link">Publisher</a>
             <div class="project_description">Event firing and subscription management</div>
          </div>
        
          <div id="project_#{project.name}" class="project_row">
             <a href="http://atomicobject.github.com/hardmock" class="project_link">Hardmock</a>
             <div class="project_description">Strict, ordered mock objects and stubs</div>
          </div>
        
          <div id="project_#{project.name}" class="project_row">
             <a href="http://atomicobject.github.com/minilab" class="project_link">Minilab</a>
             <div class="project_description">Ruby interface to Measurement Computing's miniLAB 1008</div>
          </div>
        
      </div>

    </div>



  </body>
</html>
```