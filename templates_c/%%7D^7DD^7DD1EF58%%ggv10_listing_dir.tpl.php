<?php /* Smarty version 2.6.26, created on 2013-07-19 10:11:12
         compiled from ggv10_listing_dir.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'ggv10_listing_dir.tpl', 53, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="topcontent">
		<?php echo $this->_tpl_vars['TXT_MAIN_DESCRIPTION']; ?>

	</div>
	<br clear="all" />
	<br class="clearfloats" />

    <div id="main_content">

     <?php $_from = $this->_tpl_vars['MAIN_LISTINGS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>

                 <div  class="listing_box">
                	<div class="listinglogo">
                	  <a name="<?php echo $this->_tpl_vars['entry']['list_dirref']; ?>
"></a>
                      <?php if ($this->_tpl_vars['entry']['list_src'] != ''): ?>
                       <img border="0" src="<?php echo $this->_tpl_vars['entry']['list_src']; ?>
" width="<?php echo $this->_tpl_vars['entry']['list_width']; ?>
" height="<?php echo $this->_tpl_vars['entry']['list_height']; ?>
" align="left">
                      <?php else: ?>
                        &nbsp;
                      <?php endif; ?>
                   </div>
                   <div class="listing_info">
					 <?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['EDIT'] != ''): ?>
							<div style="float: right;margin-top:.7em;" >
								 <?php if ($this->_tpl_vars['entry']['EDIT'] != ''): ?>
									<a href="<?php echo $this->_tpl_vars['entry']['EDIT']; ?>
">EDIT</a> &nbsp;
								 <?php endif; ?>
								<?php echo $this->_tpl_vars['entry']['list_tagsicons']; ?>

							</div>
					<?php endif; ?>
                 	<p class="listing_name"><?php echo $this->_tpl_vars['entry']['list_name']; ?>
</p>
     				<p class="listing_address">
     					<?php echo $this->_tpl_vars['entry']['list_addr1']; ?>

     					<?php if ($this->_tpl_vars['entry']['list_addr2'] != ''): ?>
     						, <?php echo $this->_tpl_vars['entry']['list_addr2']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['entry']['list_addr3'] != ''): ?>
     						, <?php echo $this->_tpl_vars['entry']['list_addr3']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['entry']['list_phone'] != ''): ?>
     						<br /> Tel. <?php echo $this->_tpl_vars['entry']['list_phone']; ?>

     					<?php endif; ?>
					</p>
					<?php if ($this->_tpl_vars['entry']['list_tags'] != ''): ?>
					   <p class="tags" ><?php echo $this->_tpl_vars['entry']['list_tags']; ?>
</p>
					<?php endif; ?>

					<?php if ($this->_tpl_vars['entry']['list_more_url'] != ''): ?>
						<p style="margin-top: 4px;" ><a class="listlink" href="<?php echo $this->_tpl_vars['entry']['list_more_url']; ?>
"><?php echo $this->_tpl_vars['more_info']; ?>
</a></p>
					<?php endif; ?>

     				<p><?php echo ((is_array($_tmp=$this->_tpl_vars['entry']['list_descshort'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</p>
                   </div>
                   <br clear="left" />
     			 </div>
     <?php endforeach; endif; unset($_from); ?>

     <?php $_from = $this->_tpl_vars['subcat']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sub']):
?>
     <br /><h2><?php echo $this->_tpl_vars['sub']['subcat_name']; ?>
</h2>

     <?php if ($this->_tpl_vars['sub']['subcat_desc'] != ''): ?> <p><?php echo $this->_tpl_vars['sub']['subcat_desc']; ?>
</p>  <br /><?php endif; ?>

          <?php $_from = $this->_tpl_vars['sub']['listing']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>

                 <div  class="sublisting_box">
                	<div class="listinglogo">
                	  <a name="<?php echo $this->_tpl_vars['entry']['list_dirref']; ?>
"></a>
                      <?php if ($this->_tpl_vars['entry']['list_src'] != ''): ?>
                       <img border="0" src="<?php echo $this->_tpl_vars['entry']['list_src']; ?>
" width="<?php echo $this->_tpl_vars['entry']['list_width']; ?>
" height="<?php echo $this->_tpl_vars['entry']['list_height']; ?>
" align="left">
                      <?php else: ?>
                        &nbsp;
                      <?php endif; ?>
                   </div>
                   <div class="listing_info">
					<?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['EDIT'] != ''): ?>
							<div style="float: right;margin-top:.7em;" >
								 <?php if ($this->_tpl_vars['entry']['EDIT'] != ''): ?>
									<a href="<?php echo $this->_tpl_vars['entry']['EDIT']; ?>
">EDIT</a> &nbsp;
								 <?php endif; ?>
								<?php echo $this->_tpl_vars['entry']['list_tagsicons']; ?>

							</div>
					<?php endif; ?>
                 	<p class="listing_name"><?php echo $this->_tpl_vars['entry']['list_name']; ?>
</p>
     				<p class="listing_address">
     					<?php echo $this->_tpl_vars['entry']['list_addr1']; ?>

     					<?php if ($this->_tpl_vars['entry']['list_addr2'] != ''): ?>
     						, <?php echo $this->_tpl_vars['entry']['list_addr2']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['entry']['list_addr3'] != ''): ?>
     						, <?php echo $this->_tpl_vars['entry']['list_addr3']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['entry']['list_phone'] != ''): ?>
     						<br /> Tel. <?php echo $this->_tpl_vars['entry']['list_phone']; ?>

     					<?php endif; ?>
					</p>
					
					<?php if ($this->_tpl_vars['entry']['list_tags'] != ''): ?>
					   <p class="tags" ><?php echo $this->_tpl_vars['entry']['list_tags']; ?>
</p>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['list_more_url'] != ''): ?>
					    <p style="margin-top: 4px;" >
						
						<?php if ($this->_tpl_vars['entry']['list_more_url'] != ''): ?>
							<a class="listlink" href="<?php echo $this->_tpl_vars['entry']['list_more_url']; ?>
"><?php echo $this->_tpl_vars['more_info']; ?>
</a>
						<?php endif; ?>
						</p>
					<?php endif; ?>
					<p><?php echo ((is_array($_tmp=$this->_tpl_vars['entry']['list_descshort'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</p>
                   </div>
                   <br clear="left" />
                   <br />
     			 </div>
     <?php endforeach; endif; unset($_from); ?>
     <?php endforeach; endif; unset($_from); ?>
	<br clear="all"  />
   </div>

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
