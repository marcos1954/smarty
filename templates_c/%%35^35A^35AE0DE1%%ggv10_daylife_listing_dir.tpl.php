<?php /* Smarty version 2.6.27, created on 2013-07-30 07:27:38
         compiled from ggv10_daylife_listing_dir.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'ggv10_daylife_listing_dir.tpl', 59, false),)), $this); ?>
<?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo '<div id="main_content">'; ?><?php echo $this->_tpl_vars['TXT_MAIN_DESCRIPTION']; ?><?php echo '<br clear="all" /><br class="clearfloats" /><br />'; ?><?php $_from = $this->_tpl_vars['MAIN_LISTINGS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?><?php echo '<div  class="listing_box"><div class="listinglogo"><a name="'; ?><?php echo $this->_tpl_vars['entry']['list_dirref']; ?><?php echo '"></a>'; ?><?php if ($this->_tpl_vars['entry']['list_src'] != ''): ?><?php echo '<img border="0" src="'; ?><?php echo $this->_tpl_vars['entry']['list_src']; ?><?php echo '" width="'; ?><?php echo $this->_tpl_vars['entry']['list_width']; ?><?php echo '" height="'; ?><?php echo $this->_tpl_vars['entry']['list_height']; ?><?php echo '" align="left">'; ?><?php else: ?><?php echo '&nbsp;'; ?><?php endif; ?><?php echo '</div><div class="listing_info">'; ?><?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['EDIT'] != ''): ?><?php echo '<div style="float: right;margin-top:.7em;" >'; ?><?php if ($this->_tpl_vars['entry']['EDIT'] != ''): ?><?php echo '<a href="'; ?><?php echo $this->_tpl_vars['entry']['EDIT']; ?><?php echo '">EDIT</a> &nbsp;'; ?><?php endif; ?><?php echo ''; ?><?php echo $this->_tpl_vars['entry']['list_tagsicons']; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_fb']): ?><?php echo '<img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" />'; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_ta']): ?><?php echo '<img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" />'; ?><?php endif; ?><?php echo '</div>'; ?><?php endif; ?><?php echo '<p class="listing_name">'; ?><?php echo $this->_tpl_vars['entry']['list_name']; ?><?php echo '</p><!--<p class="listing_address">'; ?><?php echo $this->_tpl_vars['entry']['list_addr1']; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_addr2'] != ''): ?><?php echo ', '; ?><?php echo $this->_tpl_vars['entry']['list_addr2']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_addr3'] != ''): ?><?php echo ', '; ?><?php echo $this->_tpl_vars['entry']['list_addr3']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_phone'] != ''): ?><?php echo '<br /> Tel. '; ?><?php echo $this->_tpl_vars['entry']['list_phone']; ?><?php echo ''; ?><?php endif; ?><?php echo '</p>			-->'; ?><?php if ($this->_tpl_vars['entry']['list_tags'] != ''): ?><?php echo '<p class="tags" >'; ?><?php echo $this->_tpl_vars['entry']['list_tags']; ?><?php echo '</p>'; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['list_more_url'] != ''): ?><?php echo '<p style="margin-top: 4px;" >'; ?><?php if ($this->_tpl_vars['entry']['list_more_url'] != ''): ?><?php echo '<a class="listlink" href="'; ?><?php echo $this->_tpl_vars['entry']['list_more_url']; ?><?php echo '">'; ?><?php echo $this->_tpl_vars['more_info']; ?><?php echo '</a>'; ?><?php endif; ?><?php echo '</p>'; ?><?php endif; ?><?php echo '<p>'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['entry']['list_descshort'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?><?php echo '</p></div><br clear="left" /></div>'; ?><?php endforeach; endif; unset($_from); ?><?php echo ''; ?><?php $_from = $this->_tpl_vars['subcat']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sub']):
?><?php echo '<a id="'; ?><?php echo $this->_tpl_vars['sub']['subcat_typecode']; ?><?php echo '"></a><br /><h2>'; ?><?php echo $this->_tpl_vars['sub']['subcat_name']; ?><?php echo '</h2>'; ?><?php if ($this->_tpl_vars['sub']['subcat_desc'] != ''): ?><?php echo ' <p>'; ?><?php echo $this->_tpl_vars['sub']['subcat_desc']; ?><?php echo '</p>  <br />'; ?><?php endif; ?><?php echo ''; ?><?php $_from = $this->_tpl_vars['sub']['listing']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?><?php echo '<div  class="sublisting_box"><div class="listinglogo"><a name="'; ?><?php echo $this->_tpl_vars['entry']['list_dirref']; ?><?php echo '"></a>'; ?><?php if ($this->_tpl_vars['entry']['list_src'] != ''): ?><?php echo '<img border="0" src="'; ?><?php echo $this->_tpl_vars['entry']['list_src']; ?><?php echo '" width="'; ?><?php echo $this->_tpl_vars['entry']['list_width']; ?><?php echo '" height="'; ?><?php echo $this->_tpl_vars['entry']['list_height']; ?><?php echo '" align="left">'; ?><?php else: ?><?php echo '&nbsp;'; ?><?php endif; ?><?php echo '</div><div class="listing_info">'; ?><?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['EDIT'] != ''): ?><?php echo '<div style="float: right;margin-top:.7em;" >'; ?><?php if ($this->_tpl_vars['entry']['EDIT'] != ''): ?><?php echo '<a href="'; ?><?php echo $this->_tpl_vars['entry']['EDIT']; ?><?php echo '">EDIT</a> &nbsp;'; ?><?php endif; ?><?php echo ''; ?><?php echo $this->_tpl_vars['entry']['list_tagsicons']; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_fb']): ?><?php echo '<img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" />'; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_ta']): ?><?php echo '<img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" />'; ?><?php endif; ?><?php echo '</div>'; ?><?php endif; ?><?php echo '<p class="listing_name">'; ?><?php echo $this->_tpl_vars['entry']['list_name']; ?><?php echo '</p><!--<p class="listing_address">'; ?><?php echo $this->_tpl_vars['entry']['list_addr1']; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_addr2'] != ''): ?><?php echo ', '; ?><?php echo $this->_tpl_vars['entry']['list_addr2']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_addr3'] != ''): ?><?php echo ', '; ?><?php echo $this->_tpl_vars['entry']['list_addr3']; ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_phone'] != ''): ?><?php echo '<br /> Tel. '; ?><?php echo $this->_tpl_vars['entry']['list_phone']; ?><?php echo ''; ?><?php endif; ?><?php echo '</p>-->'; ?><?php if ($this->_tpl_vars['entry']['list_tags'] != ''): ?><?php echo '<p class="tags" >'; ?><?php echo $this->_tpl_vars['entry']['list_tags']; ?><?php echo '</p>'; ?><?php endif; ?><?php echo ''; ?><?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['list_more_url'] != ''): ?><?php echo '<p style="margin-top: 4px;" >'; ?><?php if ($this->_tpl_vars['entry']['list_more_url'] != ''): ?><?php echo '<a class="listlink" href="'; ?><?php echo $this->_tpl_vars['entry']['list_more_url']; ?><?php echo '">'; ?><?php echo $this->_tpl_vars['more_info']; ?><?php echo '</a>'; ?><?php endif; ?><?php echo '</p>'; ?><?php endif; ?><?php echo '</p><p>'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['entry']['list_descshort'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?><?php echo '</p></div><br clear="left" /><br /></div>'; ?><?php endforeach; endif; unset($_from); ?><?php echo ''; ?><?php endforeach; endif; unset($_from); ?><?php echo '<br clear="all"  /></div>'; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_right_content.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?>