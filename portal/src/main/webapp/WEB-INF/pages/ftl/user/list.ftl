<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user list</title>

<link rel="stylesheet" href="${staticResPath}/resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${staticResPath}/resources/bootstrap/geboadmin/css/blue.css" id="link_theme" />
<link rel="stylesheet" href="${staticResPath}/resources/bootstrap/geboadmin/css/style.css" />

</head>
<body>
<div>
<form method="post">
		<div class="module moduleSearch clearfix">
	<div class="item">
		<span class="moduleLabel">日期</span>
		<div class="input-append date short" style="margin-right: 50px;">
			<input type="text" id="startDate" name="mer[careteTimeBeginString]" readonly="readonly">
			<span class="add-on"><i class="icon-calendar" style="margin-top: 0px;"></i></span>		
		</div>
		<div class="input-append date short" >		
			<input type="text" id="endDate" name="mer[careteTimeEndString]"  readonly="readonly">
			<span class="add-on"><i class="icon-calendar" style="margin-top: 0px;"></i></span>		
		</div>
	</div>
	<div class="item">
		<span class="moduleLabel">关键字</span>
		<div class="ui-selector medium">
			<select class="span3" name="mer[keywordType]" data-link="keyword">
				<option value="reportName"><itl:span dictName="TABLE_NAME" titleFlag='true' /></option>
				<option value="fileName"><itl:span dictName="FILE_NAME" titleFlag='true' /></option>
			</select> <i class="arrow"></i>
		</div>
				
		<div class="ui-date medium">
			<input class="ui-input" type="text" name="keyword" style="margin-left: 10px;" />
		</div>

	</div>
	<div class="item clear">
		<span class="moduleLabel">&nbsp;</span>
		<div class="btns">
			<button class="btn btn-primary btn-custom" id="serchBtn" type="button" data-submit="mer" data-table="dg"><itl:span dictName="SEARCH" titleFlag='true' /></button>
			<button class="btn btn-custom" type="reset" onclick="btnReset()"><itl:span dictName="RESET" titleFlag='true' /></button>
		</div>
	</div>
		</div>
		</form>
</div>
<table class="table table-bordered">
	<thead>
	<tr>
		<th>1</th>
		<th>2</th>
		<th>3</th>
		<th>4</th>
		<th>5</th>
		<th>6</th>
		<th>操作</th>
	</tr>
	</thead>
	<tbody>
	<#list userList as item>
		<tr>
		<td>${item.uid}</td>
		<td>${item.loginname}</td>
		<td>${item.loginpass}</td>
		<td>${item.email}</td>
		<td>
			<#if item.status==true>
			启用
			<#else>
			禁用
			</#if>
		</td>
		<td>${item.activationcode}</td>	
		<td>
	        <a href="#" class="sepV_a" title="View"><i class="icon-info-sign"></i></a>
			<a href="#" class="sepV_a" title="Edit"><i class="icon-pencil"></i></a>
	        <a href="#" title="Delete"><i class="icon-trash"></i></a>
		</td>
		</tr>
	</#list>
	</tbody>
</table>

 		
</body>
</html>