<?php /* Smarty version 2.6.26, created on 2013-02-20 01:57:18
         compiled from ggv10_simple.tpl */ ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if (! ( $this->_tpl_vars['topcontent'] == NULL )): ?>
	<div id="topcontent">
		<?php echo $this->_tpl_vars['topcontent']; ?>

	</div>
<?php endif; ?>

<?php if (! ( $this->_tpl_vars['main_content'] == NULL )): ?>
     <div id="main_content">

		<?php echo $this->_tpl_vars['main_content']; ?>


     </div>
<?php endif; ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_right_content.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>