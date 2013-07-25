<?php /* Smarty version 2.6.26, created on 2013-02-17 20:57:44
         compiled from ggv10_Calendar_month.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_Calendar_month.tpl', 2, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_dayCal.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="topcontent" >
<h1 class="month"><?php echo $this->_tpl_vars['H1_TITLE']; ?>
</h1>
<h3 class="month"><?php echo $this->_tpl_vars['pagename']; ?>
</h3>
	<div>
		<table class="header" border="0" cellpadding="9" cellspacing="0" width="730">
		 <tr>
		 <td width="530" class="header" align="left" nowrap>
		  <?php echo $this->_tpl_vars['BLURB_checkCatList']; ?>

		 </td>
		 <td  width="200"  class="header" align="right">
		  <?php echo $this->_tpl_vars['pdfCalendarLink']; ?>

		 </td></tr></table>
		 <br />

		<div class="loader"><?php echo $this->_tpl_vars['ajaxOutput']; ?>
</div>

		<br clear="all" />
	</div>
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>