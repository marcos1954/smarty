<?php /* Smarty version 2.6.27, created on 2014-12-07 13:49:34
         compiled from ggv10_listing_dir.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'ggv10_listing_dir.tpl', 52, false),)), $this); ?>
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
		<div  class="listing_box"  onclick="location.href='<?php echo $this->_tpl_vars['entry']['list_more_url']; ?>
';">
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
			<?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['EDIT'] != '' || $this->_tpl_vars['entry']['list_fb'] != '' || $this->_tpl_vars['entry']['list_ta'] != '' || $this->_tpl_vars['entry']['list_ol'] != '' || $this->_tpl_vars['entry']['list_www'] != ''): ?>
				   <div style="float: right;margin-top:.7em;" >
						<?php if ($this->_tpl_vars['entry']['EDIT'] != ''): ?>
						   <a href="<?php echo $this->_tpl_vars['entry']['EDIT']; ?>
">EDIT</a> &nbsp;
						<?php endif; ?>
					   <?php echo $this->_tpl_vars['entry']['list_tagsicons']; ?>

                       <?php if ($this->_tpl_vars['entry']['list_fb']): ?><img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" /><?php endif; ?>
                       <?php if ($this->_tpl_vars['entry']['list_tw']): ?><img src="/images/twitter.png" height=22 width=auto title="Listed on Twitter" /><?php endif; ?>
					   <?php if ($this->_tpl_vars['entry']['list_ta']): ?><img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" /><?php endif; ?>
					   <?php if ($this->_tpl_vars['entry']['list_ol']): ?><img src="/images/icon_delivery.png" height=22 width=auto title="Delivery" /><?php endif; ?>
                       <?php if ($this->_tpl_vars['entry']['list_www']): ?><img style="margin:1px;"src="/images/www.png" height=20 width=auto title="Has a Website" /><?php endif; ?>
					   
					   <?php if ($this->_tpl_vars['list_lastupdate'] != '' && $this->_tpl_vars['EDIT'] != ''): ?>
						   <div style="text-align: center; color: gray; font-size: .8em;" ><?php echo $this->_tpl_vars['list_lastupdate']; ?>
</div>
					   <?php endif; ?>
				   </div>
		   <?php endif; ?>
		   <p class="listing_name"><?php echo $this->_tpl_vars['entry']['list_name']; ?>
</p>
		   
		   <?php if ($this->_tpl_vars['entry']['listing_from_date'] != '' && $this->_tpl_vars['entry']['listing_to_date']): ?>
				<p class="tags"><?php echo $this->_tpl_vars['entry']['listing_from_date']; ?>
 until <?php echo $this->_tpl_vars['entry']['listing_to_date']; ?>
</p>
		   <?php endif; ?>
		   
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
	 <a id="<?php echo $this->_tpl_vars['sub']['subcat_typecode']; ?>
"></a>
     <br />
	 <h2><?php echo $this->_tpl_vars['sub']['subcat_name']; ?>
</h2>

     <?php if ($this->_tpl_vars['sub']['subcat_desc'] != ''): ?> <p><?php echo $this->_tpl_vars['sub']['subcat_desc']; ?>
</p>  <br /><?php endif; ?>

          <?php $_from = $this->_tpl_vars['sub']['listing']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
		    <?php if ($this->_tpl_vars['entry']['listing_nodates'] == 'noevents'): ?>
				<?php continue; ?>
		    <?php endif; ?>
			<div  class="sublisting_box"  onclick="location.href='<?php echo $this->_tpl_vars['entry']['list_more_url']; ?>
';">
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
			   <?php if ($this->_tpl_vars['entry']['list_tagsicons'] != '' || $this->_tpl_vars['entry']['EDIT'] != '' || $this->_tpl_vars['entry']['list_fb'] != '' || $this->_tpl_vars['entry']['list_ta'] != '' || $this->_tpl_vars['entry']['list_ol'] != '' || $this->_tpl_vars['entry']['list_www'] != ''): ?>
				   <div style="float: right;margin-top:.7em;" >
							<?php if ($this->_tpl_vars['entry']['EDIT'] != ''): ?>
							   <div style="text-align:right; color: gray; font-size: .8em;"><a href="<?php echo $this->_tpl_vars['entry']['EDIT']; ?>
">EDIT</a> &nbsp;<?php echo $this->_tpl_vars['entry']['list_lastupdate']; ?>
</div>
							<?php endif; ?>
						   <?php echo $this->_tpl_vars['entry']['list_tagsicons']; ?>

                       <?php if ($this->_tpl_vars['entry']['list_fb']): ?><img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" /><?php endif; ?>
					   <?php if ($this->_tpl_vars['entry']['list_tw']): ?><img src="/images/twitter.png" height=22 width=auto title="Listed on Twitter" /><?php endif; ?>

					   <?php if ($this->_tpl_vars['entry']['list_ta']): ?><img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" /><?php endif; ?>
					   <?php if ($this->_tpl_vars['entry']['list_ol']): ?><img src="/images/icon_delivery.png" height=22 width=auto title="Delivery" /><?php endif; ?>
                       <?php if ($this->_tpl_vars['entry']['list_www']): ?><img style="margin:1px;"src="/images/www.png" height=20 width=auto title="Has a Website" /><?php endif; ?>
					   
   </div>
			   <?php endif; ?>
			   <p class="listing_name" onclick="location" ><?php echo $this->_tpl_vars['entry']['list_name']; ?>
</p>
			   
			   
				<?php if ($this->_tpl_vars['entry']['listing_from_date'] != '' && $this->_tpl_vars['entry']['listing_to_date']): ?>
					 <p class="tags"><?php echo $this->_tpl_vars['entry']['listing_from_date']; ?>
 - <?php echo $this->_tpl_vars['entry']['listing_to_date']; ?>
</p>
				<?php endif; ?>
		   
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

