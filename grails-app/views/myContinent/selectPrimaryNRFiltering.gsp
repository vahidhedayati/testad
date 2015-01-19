

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'myContinent.label', default: 'MyContinent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<a href="#create-myContinent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<h1>Primary No Ref selection</h1>
In this example we have : Departments that have Many Offices and Offices that have a no reference binding to Departments.

Departments being the primary table that this no reference binding stems from, so here is the code and working example:

(poor example I know)
<br>
===========================


	<form method=post action="example5">
      Department
        <g:selectPrimaryNR 
        id="myDepartment" 
        name="department"
		domain='ajaxdependancyselectexample.Departments' 
		searchField='name' 
		collectField='id'
		bindid="offices"
		
		filter="_ON"
		hiddenfield="abc123"
		
		domain2='ajaxdependancyselectexample.Offices' 
		searchField2='name' 
		collectField2='id'

		noSelection="['null': 'Please choose Department']" 
		setId="MyOffices" 
		/> 
		
		Office:
		<g:select 
		name="office" 
		id="MyOffices" 
		optionKey="id" 
		optionValue="name" 
		from="[]" 
		noSelection="['': 'Please choose Department']" /> 
		<br> 
		<input type=submit value=go> 
		</form>



<pre>
	Department
        &lt;g:selectPrimaryNR 
        id="myDepartment" 
        name="department"
		domain='ajaxdependancyselectexample.Departments' 
		searchField='name' 
		collectField='id'
		bindid="offices"

		domain2='ajaxdependancyselectexample.Offices' 
		searchField2='name' 
		collectField2='id'


		filter="_ON"
		hiddenfield="abc123"
		
		
		noSelection="['null': 'Please choose Department']" 
		setId="MyOffices" 
		/&gt; 
		
		Office:
		&lt;g:select 
		name="office" 
		id="MyOffices" 
		optionKey="id" 
		optionValue="name" 
		from="[]" 
		noSelection="['': 'Please choose Department']" /&gt; 
		&lt;br&gt; 
		&lt;input type=submit value=go&gt; 
		&lt;/form&gt;
</pre>




<h1> Fixed field filtering on Primary NR</h1>

	<form method=post action="example5">
      Department
        <g:selectPrimaryNR 
        id="myDepartment22" 
        name="department"
		domain='ajaxdependancyselectexample.Departments' 
		searchField='name' 
		collectField='id'
		bindid="offices"
		
		filter="H"
		hiddenfield="abc1235"
		
		domain2='ajaxdependancyselectexample.Offices' 
		searchField2='name' 
		collectField2='id'

		noSelection="['null': 'Please choose Department']" 
		setId="MyOffices22" 
		/> 
		
		Office:
		<g:select 
		name="office" 
		id="MyOffices22" 
		optionKey="id" 
		optionValue="name" 
		from="[]" 
		noSelection="['': 'Please choose Department']" /> 
		<br> 
		<input type=submit value=go> 
		</form>



<pre>
	Department
        &lt;g:selectPrimaryNR 
        id="myDepartment22" 
        name="department"
		domain='ajaxdependancyselectexample.Departments' 
		searchField='name' 
		collectField='id'
		bindid="offices"

		domain2='ajaxdependancyselectexample.Offices' 
		searchField2='name' 
		collectField2='id'

		noSelection="['null': 'Please choose Department']" 
		setId="MyOffices22" 
		/&gt; 
		
		Office:
		&lt;g:select 
		name="office" 
		id="MyOffices22" 
		optionKey="id" 
		optionValue="name" 
		from="[]" 
		noSelection="['': 'Please choose Department']" /&gt; 
		&lt;br&gt; 
		&lt;input type=submit value=go&gt; 
		&lt;/form&gt;
</pre>




</body>
</html>