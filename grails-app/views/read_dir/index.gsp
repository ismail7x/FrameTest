<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>API Automation Test Page</title>
</head>
<body>
  <div class="body">
  	<h2>API Automation Test Page</h2>
  	<h4>Please choose tests below ...</h4>

  	<br>
	<h4>Tests</h4>
	<br>
	<g:submitButton name="Submit"/>
	<br>
	<br>
	<div>
	<style>
	.columns3 {
    -webkit-column-count: 3;
    -moz-column-count: 3;
    column-count: 3; }
    </style>
    
		<ul class="columns3">
		    <g:each in="${name}" var="fileName">
		         <g:checkBox checked="false" name="${ 'fileName'}"/> ${fileName.replaceFirst(~/\.[^\.]+$/, '')}<br>
		    </g:each> 
		</ul>	
	</div>
	
</body>
</html>