<?php /* Smarty version 2.6.26, created on 2012-12-27 21:28:19
         compiled from admin_images.tpl */ ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<style>
<?php echo '
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
'; ?>

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
	<td class="middle"><?php echo $this->_tpl_vars['logo']['src']; ?>
</td>
	<td class="right" rowspan=4 ><?php echo $this->_tpl_vars['logo']['img']; ?>
</td>
</tr>

<tr>
	<td>width</td>
	<td class="middle"><?php echo $this->_tpl_vars['logo']['width']; ?>
</td>
</tr>

<tr>
	<td>height</td>
	<td class="middle"><?php echo $this->_tpl_vars['logo']['height']; ?>
</td>
</tr>

<!----------------------------
<tr>
	<td>Delete Logo</td>
	<td  class="middle"><?php echo $this->_tpl_vars['logo']['deleteButton']; ?>
</td>
</tr>
----------------------------->

<tr>
	<td nowrap>submit new picture</td>
	<td class="middle"><?php echo $this->_tpl_vars['logo']['input']; ?>
</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>

<?php if ($this->_tpl_vars['flyer']): ?>

<tr>
	<td><?php echo $this->_tpl_vars['flyer']['label']; ?>
</td>
	<td class="middle"><?php echo $this->_tpl_vars['flyer']['src']; ?>
</td>
	<td class="right" rowspan=4 ><?php echo $this->_tpl_vars['flyer']['img']; ?>
</td>
</tr>

<tr>
	<td>width</td>
	<td class="middle"><?php echo $this->_tpl_vars['flyer']['width']; ?>
</td>
</tr>

<tr>
	<td>height</td>
	<td class="middle"><?php echo $this->_tpl_vars['flyer']['height']; ?>
</td>
</tr>

<tr>
	<td>Delete Image</td>
	<td  class="middle"><?php echo $this->_tpl_vars['flyer']['deleteButton']; ?>
</td>
</tr>
<tr>
	<td nowrap>submit new picture</td>
	<td class="middle"><?php echo $this->_tpl_vars['flyer']['input']; ?>
</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>

<?php endif; ?>

 <?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>

<tr>
	<td><?php echo $this->_tpl_vars['entry']['label']; ?>
</td>
	<td class="middle"><?php echo $this->_tpl_vars['entry']['src']; ?>
</td>
	<td rowspan=6 class="right"><?php echo $this->_tpl_vars['entry']['img']; ?>
</td>
</tr>

<tr>
	<td>width</td>
	<td class="middle"><?php echo $this->_tpl_vars['entry']['width']; ?>
</td>
</tr>

<tr>
	<td>height</td>
	<td  class="middle"><?php echo $this->_tpl_vars['entry']['height']; ?>
</td>
</tr>

<tr>
	<td>Move Image</td>
	<td  class="middle"><?php echo $this->_tpl_vars['entry']['moveButtons']; ?>
</td>
</tr>

<tr>
	<td>Delete Image</td>
	<td  class="middle"><?php echo $this->_tpl_vars['entry']['deleteButton']; ?>
</td>
</tr>

<tr>
	<td>submit new picture</td>
	<td  class="middle"><?php echo $this->_tpl_vars['entry']['input']; ?>
</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>
 <?php endforeach; endif; unset($_from); ?>
 </form>
 </body>
 </html>