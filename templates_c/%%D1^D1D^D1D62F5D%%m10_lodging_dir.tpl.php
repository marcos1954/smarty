<?php /* Smarty version 2.6.26, created on 2012-10-10 14:47:37
         compiled from m10_lodging_dir.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'm10_lodging_dir.tpl', 2, false),)), $this); ?>
<?php echo ''; ?><?php echo smarty_function_config_load(array('file' => "ggv_search.conf"), $this);?><?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo '<div id="main_content"><h2>'; ?><?php echo $this->_tpl_vars['LODGING_DIR_TITLE']; ?><?php echo '</h2><div style="margin-left: 5px;"><p>'; ?><?php echo $this->_tpl_vars['LODGING_DIR_TEXT']; ?><?php echo '</p><br clear="all"></div><hr />'; ?><?php echo ''; ?><?php $_from = $this->_tpl_vars['premium_listings']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?><?php echo '<div  class="listing_box" '; ?><?php if ($this->_tpl_vars['entry']['lodging_url'] != ''): ?><?php echo ' onclick="location.href=\''; ?><?php echo $this->_tpl_vars['entry']['lodging_url']; ?><?php echo '\';"  style="cursor:pointer;" '; ?><?php endif; ?><?php echo '><div class="listinglogo">'; ?><?php if ($this->_tpl_vars['entry']['lodging_logo_src'] != ''): ?><?php echo '<a href="'; ?><?php echo $this->_tpl_vars['entry']['lodging_url']; ?><?php echo '"><img border="0" src="../Listings/'; ?><?php echo $this->_tpl_vars['entry']['lodging_logo_src']; ?><?php echo '" width="'; ?><?php echo $this->_tpl_vars['entry']['lodging_logo_width']; ?><?php echo '" height="'; ?><?php echo $this->_tpl_vars['entry']['lodging_logo_height']; ?><?php echo '" align="left"></a>'; ?><?php else: ?><?php echo '<img border="0" src="/images/nopix.gif" width="100" height="100" align="left">'; ?><?php endif; ?><?php echo '</div><div class="listing_info"><div class="listmore">'; ?><?php if ($this->_tpl_vars['entry']['lodging_url'] != ''): ?><?php echo '<a href="'; ?><?php echo $this->_tpl_vars['entry']['lodging_url']; ?><?php echo '"><img border="0" height="25" width="25" src="/m/more.png"></a>&nbsp; &nbsp;'; ?><?php endif; ?><?php echo '</div><p class="blueback_title"><a name="hid'; ?><?php echo $this->_tpl_vars['entry']['hotel_id']; ?><?php echo '"></a>'; ?><?php echo $this->_tpl_vars['entry']['hotel_tag']; ?><?php echo '</p><p class="listing_name">'; ?><?php echo $this->_tpl_vars['entry']['hotel_name']; ?><?php echo '</p><p class="listing_address">'; ?><?php echo $this->_tpl_vars['entry']['lodging_addr1']; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['lodging_addr2'] != ''): ?><?php echo '<br />'; ?><?php echo $this->_tpl_vars['entry']['lodging_addr2']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['lodging_addr3'] != ''): ?><?php echo '<br />'; ?><?php echo $this->_tpl_vars['entry']['lodging_addr3']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['lodging_phone'] != ''): ?><?php echo '<br /> Tel. '; ?><?php echo $this->_tpl_vars['entry']['lodging_phone']; ?><?php echo ''; ?><?php endif; ?><?php echo '</p><p class="listing_description">'; ?><?php echo $this->_tpl_vars['entry']['lodging_descshort']; ?><?php echo '</p></div></div><br clear="all" /><hr />'; ?><?php endforeach; endif; unset($_from); ?><?php echo '<br /><br />'; ?><?php echo ''; ?><?php if ($this->_tpl_vars['basic_listings']): ?><?php echo '<h2>Other lodgings in this category....</h2><div id="Listings_other_box"><br /><br />'; ?><?php $_from = $this->_tpl_vars['basic_listings']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?><?php echo '<p class="listing_name">'; ?><?php echo $this->_tpl_vars['entry']['hotel_name']; ?><?php echo '</p><p class="listing_address" style="margin-top: 0px; padding-top: 0px;">'; ?><?php echo $this->_tpl_vars['entry']['lodging_addr1']; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['lodging_addr2'] != ''): ?><?php echo ', '; ?><?php echo $this->_tpl_vars['entry']['lodging_addr3']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['lodging_phone'] != ''): ?><?php echo ', Tel. '; ?><?php echo $this->_tpl_vars['entry']['lodging_phone']; ?><?php echo ''; ?><?php endif; ?><?php echo '</p><p class="listing_description">'; ?><?php echo $this->_tpl_vars['entry']['lodging_descshort']; ?><?php echo '</p><br clear="all" /><hr />'; ?><?php endforeach; endif; unset($_from); ?><?php echo '</div>'; ?><?php endif; ?><?php echo '</div>'; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "m10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?>