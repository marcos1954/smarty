
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<style>
{literal}
h1 {
text-align: center;
}
td {
	background-color: gray;
	text-align: right;
	font-family: Arial, sans serif;
	font-size: 10pt;
	color:white;
}
td.middle {
	background-color: white;
	text-align: left;
	font-family: Arial, sans serif;
	color: black;
}
td.right {
	width:201;
	background-color: white;
	text-align: left;
	font-family: Arial, sans serif;
	color: black;
}
{/literal}
</style>
</head>
<body>
<h1>Listing Image Management</h1>

<form enctype="multipart/form-data" action="/Admin/admin_images.php" name="B2" method="POST">
<input type="hidden" name="submitted" value="true">
<center><input type="submit" name="fileUpload" value="Submit"></center>
<br>
<div align="center">


<table width="65%" border="0" cellspacing="3" cellpadding="2" >

<tr><td colspan=3>&nbsp;</td></tr>

<tr>
	<td>Logo</td>
	<td class="middle">{$logo.src}</td>
	<td class="right" rowspan=4 >{$logo.img}</td>
</tr>

<tr>
	<td>width</td>
	<td class="middle">{$logo.width}</td>
</tr>

<tr>
	<td>height</td>
	<td class="middle">{$logo.height}</td>
</tr>

<!----------------------------
<tr>
	<td>Delete Logo</td>
	<td  class="middle">{$logo.deleteButton}</td>
</tr>
----------------------------->

<tr>
	<td nowrap>submit new picture</td>
	<td class="middle">{$logo.input}</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>

{if $flyer}

<tr>
	<td>{$flyer.label}</td>
	<td class="middle">{$flyer.src}</td>
	<td class="right" rowspan=4 >{$flyer.img}</td>
</tr>

<tr>
	<td>width</td>
	<td class="middle">{$flyer.width}</td>
</tr>

<tr>
	<td>height</td>
	<td class="middle">{$flyer.height}</td>
</tr>

<tr>
	<td>Delete Image</td>
	<td  class="middle">{$flyer.deleteButton}</td>
</tr>
<tr>
	<td nowrap>submit new picture</td>
	<td class="middle">{$flyer.input}</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>

{/if}

 {foreach from=$images item=entry}

<tr>
	<td>{$entry.label}</td>
	<td class="middle">{$entry.src}</td>
	<td rowspan=6 class="right">{$entry.img}</td>
</tr>

<tr>
	<td>width</td>
	<td class="middle">{$entry.width}</td>
</tr>

<tr>
	<td>height</td>
	<td  class="middle">{$entry.height}</td>
</tr>

<tr>
	<td>Move Image</td>
	<td  class="middle">{$entry.moveButtons}</td>
</tr>

<tr>
	<td>Delete Image</td>
	<td  class="middle">{$entry.deleteButton}</td>
</tr>

<tr>
	<td>submit new picture</td>
	<td  class="middle">{$entry.input}</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>
 {/foreach}
 </form>
 </body>
 </html>