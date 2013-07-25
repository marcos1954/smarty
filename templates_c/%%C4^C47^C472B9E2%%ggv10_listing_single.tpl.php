<?php /* Smarty version 2.6.26, created on 2013-02-11 18:48:06
         compiled from ggv10_listing_single.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'ggv10_listing_single.tpl', 87, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

		<div id="Listing_right_column_pix">
			  <?php if ($this->_tpl_vars['list_map'] != ''): ?>
			  	<center><span style="font-size: 9px;"><?php echo $this->_tpl_vars['list_map_explain']; ?>
</span></center>

			  	<a href="<?php echo $this->_tpl_vars['list_mapbig']; ?>
"><img width="200" height="300" src="<?php echo $this->_tpl_vars['list_map']; ?>
" /></a>
			  	<br />
     		  <?php endif; ?>
			  <?php if ($this->_tpl_vars['list_pix1_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix1_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix1_height']; ?>
" >
			  	<br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['list_pix2_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix2_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix2_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix2_height']; ?>
" >
			  	<br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['list_pix3_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix3_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix3_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix3_height']; ?>
" >
			  	<br />
			  <?php endif; ?>
			   <?php if ($this->_tpl_vars['list_pix4_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix4_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix4_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix4_height']; ?>
" >
			  	<br />
			  <?php endif; ?> <?php if ($this->_tpl_vars['list_pix5_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix5_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix5_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix5_height']; ?>
" >
			  	<br />
			  <?php endif; ?> <?php if ($this->_tpl_vars['list_pix6_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix6_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix6_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix6_height']; ?>
" >
			  	<br />
			  <?php endif; ?> <?php if ($this->_tpl_vars['list_pix7_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix7_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix7_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix7_height']; ?>
" >
			  	<br />
			  <?php endif; ?> <?php if ($this->_tpl_vars['list_pix8_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix8_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix8_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix8_height']; ?>
" >
			  	<br />
			  <?php endif; ?> <?php if ($this->_tpl_vars['list_pix9_src'] != ''): ?>
			  	<img 	border="0" src="<?php echo $this->_tpl_vars['list_pix9_src']; ?>
" width="<?php echo $this->_tpl_vars['list_pix9_width']; ?>
" height="<?php echo $this->_tpl_vars['list_pix9_height']; ?>
" >
			  	<br />
			  <?php endif; ?>

		</div>  <!---- end right column pix ---->


     	<div id="main_content">
 		  <div id="Listing_full_content">
			<div id="Listing_header">
			  <div class="listinglogo">
                      <?php if ($this->_tpl_vars['list_src'] != ''): ?>
                       <img border="0"
			                src="<?php echo $this->_tpl_vars['list_src']; ?>
"
			                width="<?php echo $this->_tpl_vars['list_width']; ?>
"
			                height="<?php echo $this->_tpl_vars['list_height']; ?>
"
			                align="left">
                      <?php else: ?>
                        &nbsp;
                      <?php endif; ?>
               </div>
               <div class="listing_info">
                 	<p class="listing_name"><?php echo $this->_tpl_vars['list_name']; ?>
</p>
     				<p class="listing_address">
     					<?php echo $this->_tpl_vars['list_addr1']; ?>

     					<?php if ($this->_tpl_vars['list_addr2'] != ''): ?>
     						<br /> <?php echo $this->_tpl_vars['list_addr2']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['list_addr3'] != ''): ?>
     						<br /> <?php echo $this->_tpl_vars['list_addr3']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['list_phone'] != ''): ?>
     						<br /> Tel. <?php echo $this->_tpl_vars['list_phone']; ?>

     					<?php endif; ?>
     					<br />
     					<?php if ($this->_tpl_vars['list_tags'] != ''): ?>
     	                   <p style="font-family: sans-serif; font-style: italic; font-weight: bold; color: #3b3;"><?php echo $this->_tpl_vars['list_tags']; ?>
</p>
     	                <?php endif; ?>
     					<br />
                        <?php if ($this->_tpl_vars['list_url'] != ''): ?>
     	                    <a class="listlink" href="<?php echo $this->_tpl_vars['list_url']; ?>
"><?php echo $this->_tpl_vars['website']; ?>
</a>&nbsp;&nbsp;
     	                <?php endif; ?>
     	                <?php if ($this->_tpl_vars['list_url_cal'] != ''): ?>
     	                	<a class="listlink" href="<?php echo $this->_tpl_vars['list_url_cal']; ?>
"><?php echo $this->_tpl_vars['calendar']; ?>
</a>
     	                <?php endif; ?>
     				</p>
     			</div>
                <br clear="left" />
     		</div>  <!-- end of Listing_header -->
     		<p><?php echo ((is_array($_tmp=$this->_tpl_vars['list_desclong'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>

     		</p>
     		<br clear="all" />

     		<?php if ($this->_tpl_vars['list_rows_cal'] != array ( )): ?>
     		<div style="width:90%; margin: auto; padding 10%;">
     	 	<a name="Calendar"></a>
     	 		<h2 >Events Calendar</h2>

 				<?php $_from = $this->_tpl_vars['list_rows_cal']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
					<div  style="padding: 10px;border: 1px solid gray; ">

					<strong><?php echo $this->_tpl_vars['entry']['category_name']; ?>
</strong>
					<br />
					<?php if ($this->_tpl_vars['entry']['nameEvent'] != ''): ?><?php echo $this->_tpl_vars['entry']['nameEvent']; ?>

					<br /><?php endif; ?><br />
					<?php if ($this->_tpl_vars['entry']['timesEvent'] != ''): ?><strong><?php echo $this->_tpl_vars['entry']['timesEvent']; ?>
</strong>
					<br /><?php endif; ?>
					<?php echo $this->_tpl_vars['entry']['event_recurs']; ?>

					<br />
					<?php if ($this->_tpl_vars['entry']['moreEventLink'] != ''): ?><?php echo $this->_tpl_vars['entry']['moreEventLink']; ?>

					<br /><?php endif; ?><br />
					<?php echo $this->_tpl_vars['entry']['descEvent']; ?>

					<br />
					</div>
					<!--- <hr />   --->
				<?php endforeach; endif; unset($_from); ?>
				</div>
			<?php endif; ?>
     	 </div>
     </div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>