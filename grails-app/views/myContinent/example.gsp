<%@ page import="ajaxdependancyselectexample.MyContinent" %>
<%@ page import="ajaxdependancyselectexample.MyCountry" %>
<%@ page import="ajaxdependancyselectexample.MyCity" %>


<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'myContinent.label', default: 'MyContinent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
		
		
	<body>
	<a href="#create-myContinent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

	
	
<h1>Example1: Dual select condition</h1><br><br>
A simple two tier relationship requires a call to selectPrimary with result returned to [] of MyCity1 normal select box<br><br>


<form method=post action=example5>
	
	<g:selectPrimary id="MyCountry1" name="MyCountry1"
        domain='ajaxdependancyselectexample.MyCountry'
        searchField='countryName'
        collectField='id'
        
        domain2='ajaxdependancyselectexample.MyCity'
        bindid="mycountry.id"
        searchField2='cityName'
        collectField2='id'

        noSelection="['': 'Please choose Country']" 
        setId="MyCity1"
        value='1'
        secondaryValue='2'
        />

<g:select name="MyCity1" id="MyCity1" optionKey="id" optionValue="cityName" from="[]" required="required" noSelection="['': 'Please choose Country']" />
<input type=submit value=go>  
    </form>

    
    
  <br><br>


<pre>
&lt;form method=post action=example5&gt;
	
	&lt;g:selectPrimary id="MyContinent1" name="MyContinent1"
        domain='ajaxdependancyselectexample.MyCountry'
        searchField='countryName'
        collectField='id'
        
        domain2='ajaxdependancyselectexample.MyCity'
        bindid="mycountry.id"
        searchField2='cityName'
        collectField2='id'

        noSelection="['': 'Please choose Country']" 
        setId="MyCity1"
        value=''/&gt;

&lt;g:select name="MyCity1" id="MyCity1" optionKey="id" optionValue="cityName" from="[]" required="required" noSelection="['': 'Please choose Country']" /&gt;
&lt;input type=submit value=go&gt;  
    &lt;/form&gt;
</pre>

  
    <br><br>
    
<h1>Example 2: Triple Select conditions</h1><br><br>
    
 A nested relationship of hasMany and fully dependent relationship with belongsTo in 3<br>    
    

 <form method=post action=example5>
    
    
<g:selectPrimary id="MyContinent2" name="MyContinent2"
    domain='ajaxdependancyselectexample.MyContinent'
    searchField='continentName'
    collectField='id'
    
    domain2='ajaxdependancyselectexample.MyCountry'
    bindid="mycontinent.id"
    searchField2='countryName'
    appendValue=''
    appendName='Updated'
    collectField2='id'

    hidden="hiddenNew"
    noSelection="['': 'Please choose Continent']" 
    setId="MyCountry11"
    value="${params.MyContinent2}"/>






<g:selectSecondary id="MyCountry11" name="MyCountry11"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity11"
    value="${params.MyCountry11}"/>





    <g:selectSecondary name="MyCity11" id="MyCity11"  
    optionKey="id" optionValue="name"
    
    
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
    
    setId="MyShop12"
	noSelection="['': 'Please choose Country 1111']" 
	/>



    <g:select name="MyShop12" id="MyShop12"  
    optionKey="id" optionValue="shopName" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    />
    

    <input type=submit value=go>  
    </form>

  <br><br>
  
  
  
 <pre>
 
 &lt;form method=post action=example5&gt;
    
    
&lt;g:selectPrimary id="MyContinent2" name="MyContinent2"
    domain='ajaxdependancyselectexample.MyContinent'
    searchField='continentName'
    collectField='id'
    
    domain2='ajaxdependancyselectexample.MyCountry'
    bindid="mycontinent.id"
    searchField2='countryName'
    appendValue=''
    appendName='Updated'
    collectField2='id'

    hidden="hiddenNew"
    noSelection="['': 'Please choose Continent']" 
    setId="MyCountry11"
    value="${params.MyContinent2}"/&gt;






&lt;g:selectSecondary id="MyCountry11" name="MyCountry11"
	domain2='ajaxdependancyselectexample.MyCity'
    bindid="mycountry.id"
    searchField2='cityName'
    collectField2='id'
    
    
     appendValue=''
     appendName='Updated'
    
    
    noSelection="['': 'Please choose Continent']" 
    setId="MyCity11"
    value="${params.MyCountry11}"/&gt;





    &lt;g:selectSecondary name="MyCity11" id="MyCity11"  
    optionKey="id" optionValue="name"
    
    
    domain2='ajaxdependancyselectexample.MyShops'
    bindid="mycity.id"
    searchField2='shopName'
    collectField2='id'
    appendValue=''
    appendName='Updated'
   
    
    setId="MyShop12"
	noSelection="['': 'Please choose Country 1111']" 
	/&gt;



    &lt;g:select name="MyShop12" id="MyShop12"  
    optionKey="id" optionValue="name" 
    from="[]" required="required" noSelection="['': 'Please choose City']" 
    /&gt;
    

    &lt;input type=submit value=go&gt;  
    &lt;/form&gt;
 
 </pre>

    
    

  <br><br>
<h1>Example 3: Triple auto complete</h1>

Same as above but this time in auto complete mode:<br>

<form method=post action=example5>
<label>Continent:</label>
<g:autoCompletePrimary id="primarySearch1"  
name="NAMEOFcontinentName"
domain='ajaxdependancyselectexample.MyContinent'
searchField='continentName'
collectField='id'
setId="secondarySearch2"
hidden='hidden3'
value=''/>

<input type=hidden id="hidden3" name="continentId" value=""/>

<label>Country:</label> 
<g:autoCompleteSecondary id="secondarySearch2" 
name="NAMEOFcountryName" 
domain='ajaxdependancyselectexample.MyCountry' 
primarybind='mycontinent.id' 
hidden='hidden3' 
hidden2='hidden4' 
searchField='countryName' 
collectField='id'
setId="secondarySearch3" 
value=''/>

<input type=hidden id="hidden4" name="countryId" value=""/>

<label>City:</label>
<g:autoCompleteSecondary id="secondarySearch3" 
name="NAMEOFcityName" 
domain='ajaxdependancyselectexample.MyCity' 
primarybind='mycountry.id' 
hidden='hidden4' 
hidden2='hidden5' 
searchField='cityName' 
collectField='id' 
value=''/>

<input type=hidden id="hidden5" name="cityId" value=""/>

<input type=submit value=go> </form>
<br><br>


<pre>

&lt;form method=post action=example5&gt;
&lt;label&gt;Continent:&lt;/label&gt;
&lt;g:autoCompletePrimary id="primarySearch1"  
name="NAMEOFcontinentName"
domain='ajaxdependancyselectexample.MyContinent'
searchField='continentName'
collectField='id'
setId="secondarySearch2"
hidden='hidden3'
value=''/&gt;

&lt;input type=hidden id="hidden3" name="continentId" value=""/&gt;

&lt;label&gt;Country:&lt;/label&gt; 
&lt;g:autoCompleteSecondary id="secondarySearch2" 
name="NAMEOFcountryName" 
domain='ajaxdependancyselectexample.MyCountry' 
primarybind='mycontinent.id' 
hidden='hidden3' 
hidden2='hidden4' 
searchField='countryName' 
collectField='id'
setId="secondarySearch3" 
value=''/&gt;

&lt;input type=hidden id="hidden4" name="countryId" value=""/&gt;

&lt;label&gt;City:&lt;/label&gt;
&lt;g:autoCompleteSecondary id="secondarySearch3" 
name="NAMEOFcityName" 
domain='ajaxdependancyselectexample.MyCity' 
primarybind='mycountry.id' 
hidden='hidden4' 
hidden2='hidden5' 
searchField='cityName' 
collectField='id' 
value=''/&gt;

&lt;input type=hidden id="hidden5" name="cityId" value=""/&gt;

&lt;input type=submit value=go&gt; &lt;/form&gt;

</pre>

<br><br>

<h1> Example 4: dual auto complete twice</h1>

Ok so we are doing two different components of a form and calling the autComplete twice on one page, the thing with this example is rather daft since all of the above are also on this page haha

<br><br><br>
 <form method=post action=exampel5>
 
 <label>Countries:</label>
 <g:autoCompletePrimary id="primarySearch1121" name="myCountryId"
     domain='ajaxdependancyselectexample.MyCountry'
     searchField='countryName'
     collectField='id'
     hidden='hidden2'
     setId="secondarySearch111"
     value=''/>
<input type=hidden id="hidden2" name="hiddenField" value=""/>

<label>Cities:</label> 
<g:autoCompleteSecondary id="secondarySearch111" 
name="myCityId" 
domain='ajaxdependancyselectexample.MyCity'
 primarybind='mycountry.id' 
 hidden='hidden2' 
 hidden2='hidden5'
  searchField='cityName' 
 collectField='id' value=''/> 
 <input type=hidden id="hidden5" name="cityId" value=""/>

<br><br>
<label>Department:</label> <g:autoCompletePrimary id="primarySearch112" 
name="deparmentName" 
domain='ajaxdependancyselectexample.Departments' 
searchField='name' 
collectField='id' 
setId="secondarySearch22" 
hidden='hidden44' 
value=''/>
 <input type=hidden id="hidden44" name="departmentId" value=""/>

<label>Cities:</label> 
<g:autoCompleteSecondary id="secondarySearch22" 
name="employeeName" 
domain='ajaxdependancyselectexample.Employee' 
primarybind='department.id' 
hidden='hidden44' 
hidden2='hidden55' 
searchField='name' 
collectField='id' value=''/> 
<input type=hidden id="hidden55" name="employeeId" value=""/> <br/><br/>

<input type=submit value=go> </form>


<br><br>


<pre>
&lt;form method=post action=exampel5&gt;
 
 &lt;label&gt;Countries:&lt;/label&gt;
 &lt;g:autoCompletePrimary id="primarySearch1121" name="myCountryId"
     domain='ajaxdependancyselectexample.MyCountry'
     searchField='countryName'
     collectField='id'
     hidden='hidden2'
     setId="secondarySearch111"
     value=''/&gt;
&lt;input type=hidden id="hidden2" name="hiddenField" value=""/&gt;

&lt;label&gt;Cities:&lt;/label&gt; 
&lt;g:autoCompleteSecondary id="secondarySearch111" 
name="myCityId" 
domain='ajaxdependancyselectexample.MyCity'
 primarybind='mycountry.id' 
 hidden='hidden2' 
 hidden2='hidden5'
  searchField='cityName' 
 collectField='id' value=''/&gt; 
 &lt;input type=hidden id="hidden5" name="cityId" value=""/&gt;

&lt;br&gt;&lt;br&gt;
&lt;label&gt;Department:&lt;/label&gt; &lt;g:autoCompletePrimary id="primarySearch112" 
name="deparmentName" 
domain='ajaxdependancyselectexample.Departments' 
searchField='name' 
collectField='id' 
setId="secondarySearch22" 
hidden='hidden44' 
value=''/&gt;
 &lt;input type=hidden id="hidden44" name="departmentId" value=""/&gt;

&lt;label&gt;Cities:&lt;/label&gt; 
&lt;g:autoCompleteSecondary id="secondarySearch22" 
name="employeeName" 
domain='ajaxdependancyselectexample.Employee' 
primarybind='department.id' 
hidden='hidden44' 
hidden2='hidden55' 
searchField='name' 
collectField='id' value=''/&gt; 
&lt;input type=hidden id="hidden55" name="employeeId" value=""/&gt; &lt;br/&gt;&lt;br/&gt;

&lt;input type=submit value=go&gt; &lt;/form&gt;
</pre>



<br><br>
<h1>Example 5 : single Auto complete</h1>
Very basic one form field auto complete<br><br>

<form method=post action=example5>
<label>Countries:</label>
<g:autocomplete id="primarySearch" name="myId"
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
value=''/>
<input type=submit value=go> </form>

<br><br>

<pre>

&lt;form method=post action=example5&gt;
&lt;label&gt;Countries:&lt;/label&gt;
&lt;g:autocomplete id="primarySearch" name="myId"
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
value=''/&gt;
&lt;input type=submit value=go&gt; &lt;/form&gt;
</pre>

<br><br>
<h1>Example 6: single Auto complete showCollection</h1>
Single Auto complete where optionValue and Name are the same:<br><br>
<form method=post action=example5>
<label>Countries:</label>

<g:autocomplete id="primarySearch2" name="myId2"
action='autocompleteShowCollect'
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
value=''/>

<input type=submit value=go> </form>


<br><br>

<pre>

&lt;form method=post action=example5&gt;
&lt;label&gt;Countries:&lt;/label&gt;
&lt;g:autocomplete id="primarySearch" name="myId"
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
value=''/&gt;
&lt;input type=submit value=go&gt; &lt;/form&gt;

&lt;br&gt;&lt;br&gt;
&lt;g:textArea readonly="readonly" name="something" id="1" style="width: 90%; padding: 5px; margin: 20px;"&gt;

&lt;form method=post action=example5&gt;
&lt;label&gt;Countries:&lt;/label&gt;
&lt;g:autocomplete id="primarySearch" name="myId"
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
value=''/&gt;
&lt;input type=submit value=go&gt; &lt;/form&gt;
&lt;/g:textArea&gt;

&lt;br&gt;&lt;br&gt;
&lt;h1&gt;Example 6: single Auto complete showCollection&lt;/h1&gt;
Single Auto complete where optionValue and Name are the same:&lt;br&gt;&lt;br&gt;
&lt;form method=post action=example5&gt;
&lt;label&gt;Countries:&lt;/label&gt;

&lt;g:autocomplete id="primarySearch2" name="myId2"
action='autocompleteShowCollect'
domain='ajaxdependancyselectexample.MyCountry'
searchField='countryName'
collectField='id'
value=''/&gt;

&lt;input type=submit value=go&gt; &lt;/form&gt;


</pre>


<h1>Example 7: Controller actions</h1>
This is an example of interacting with my contollers and their actions using this plugin<br><Br>

<form method=post action=example5>

<div class="fieldcontain ${hasErrors(bean: permissionsInstance, field: 'controllerName', 'error')} ">
	<label for="controllerName">
		<g:message code="permissions.controllerName.label" default="Controller Name" />		
	</label>
	<g:selectController id="controllerName" name="controllerName"
	searchField='name'
	collectField='name'
	noSelection="['*': 'All Controllers']" 
	setId="ControllerActions"
	value="${permissionsInstance?.controllerName}"/>
</div>




<div class="fieldcontain ${hasErrors(bean: permissionsInstance, field: 'controllerAction', 'error')} ">
	<label for="controllerAction">
		<g:message code="permissions.controllerAction.label" default="Controller Action" />
	</label>
	<g:select name="controllerAction" id="ControllerActions" 
	optionKey="name" optionValue="name"  value="${permissionsInstance?.controllerAction}"
	from="[]" noSelection="['*': 'All Controller Actions']" /> 
</div> 
<br> <input type=submit value=go> 

</form>


<br><br>


<pre>

&lt;form method=post action=example5&gt;

&lt;div class="fieldcontain ${hasErrors(bean: permissionsInstance, field: 'controllerName', 'error')} "&gt;
	&lt;label for="controllerName"&gt;
		&lt;g:message code="permissions.controllerName.label" default="Controller Name" /&gt;		
	&lt;/label&gt;
	&lt;g:selectController id="controllerName" name="controllerName"
	searchField='name'
	collectField='name'
	noSelection="['*': 'All Controllers']" 
	setId="ControllerActions"
	value="${permissionsInstance?.controllerName}"/&gt;
&lt;/div&gt;




&lt;div class="fieldcontain ${hasErrors(bean: permissionsInstance, field: 'controllerAction', 'error')} "&gt;
	&lt;label for="controllerAction"&gt;
		&lt;g:message code="permissions.controllerAction.label" default="Controller Action" /&gt;
	&lt;/label&gt;
	&lt;g:select name="controllerAction" id="ControllerActions" 
	optionKey="name" optionValue="name"  value="${permissionsInstance?.controllerAction}"
	from="[]" noSelection="['*': 'All Controller Actions']" /&gt; 
&lt;/div&gt; 
&lt;br&gt; &lt;input type=submit value=go&gt; 

&lt;/form&gt;

</pre>
	</body>
	</html>
	
