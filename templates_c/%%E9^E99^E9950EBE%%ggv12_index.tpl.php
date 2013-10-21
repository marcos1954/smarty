<?php /* Smarty version 2.6.27, created on 2013-10-19 18:12:58
         compiled from ggv12_index.tpl */ ?>
<?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?><?php if (! ( $this->_tpl_vars['topcontent'] == NULL )): ?><?php echo '<div id="topcontent" style="margin-left: 0 !important;" >'; ?><?php echo $this->_tpl_vars['topcontent']; ?><?php echo '</div>'; ?><?php endif; ?><?php echo ''; ?><?php if (! ( $this->_tpl_vars['main_content'] == NULL )): ?><?php echo '<div id="main_content" style="width: 705px">'; ?><?php echo $this->_tpl_vars['rightside']; ?><?php echo ''; ?><?php echo $this->_tpl_vars['main_content']; ?><?php echo '</div>'; ?><?php endif; ?><?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv12_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?>