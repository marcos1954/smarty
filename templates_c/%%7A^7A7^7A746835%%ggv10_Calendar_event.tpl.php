<?php /* Smarty version 2.6.27, created on 2013-10-22 10:40:42
         compiled from ggv10_Calendar_event.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_Calendar_event.tpl', 2, false),array('modifier', 'nl2br', 'ggv10_Calendar_event.tpl', 64, false),)), $this); ?>
 
<?php echo smarty_function_config_load(array('file' => "ggv_search.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
 	<div id="Listing_right_column_pix">
 				<p>
 					<?php if ($this->_tpl_vars['biz_map'] != ''): ?>
			  			<a href="<?php echo $this->_tpl_vars['biz_mapbig']; ?>
"><img width="200" height="300" src="<?php echo $this->_tpl_vars['biz_map']; ?>
" /></a>
			  			<br />
     		  		<?php endif; ?>
			  		<?php if ($this->_tpl_vars['event_pix1_src'] != ''): ?>
			  			<img border="0" src="<?php echo $this->_tpl_vars['event_pix1_src']; ?>
" width="<?php echo $this->_tpl_vars['event_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['event_pix1_height']; ?>
">
			  		<?php endif; ?>
			  		<?php if ($this->_tpl_vars['event_pix2_src'] != ''): ?>
			  			<br />
			  			<img border="0" src="<?php echo $this->_tpl_vars['event_pix2_src']; ?>
" width="<?php echo $this->_tpl_vars['event_pix2_width']; ?>
" height="<?php echo $this->_tpl_vars['event_pix2_height']; ?>
">
			  		<?php endif; ?>
			  		<?php if ($this->_tpl_vars['event_pix3_src'] != ''): ?>
			  			<br />
			  			<img border="0" src="<?php echo $this->_tpl_vars['event_pix3_src']; ?>
" width="<?php echo $this->_tpl_vars['event_pix3_width']; ?>
" height="<?php echo $this->_tpl_vars['event_pix3_height']; ?>
">
			  		<?php endif; ?>
			  	</p>
			  	<p>&nbsp;</p>
	</div>

    <div id="main_content">
			 <table align="center" cellspacing="20">
			 <tr><td valign="top">
	 		  <?php if ($this->_tpl_vars['event_src'] != ''): ?>
		     	<img border="0" src="<?php echo $this->_tpl_vars['event_src']; ?>
" width="<?php echo $this->_tpl_vars['event_width']; ?>
" height="<?php echo $this->_tpl_vars['event_height']; ?>
" align="left">
		   	  <?php else: ?>
		     	&nbsp;
		   	  <?php endif; ?>
			  </td><td>
				<p><font face="Arial" color="#0099CC" size="5"><b><?php echo $this->_tpl_vars['biz_name']; ?>

				<?php if ($this->_tpl_vars['biz_name'] != $this->_tpl_vars['event_name']): ?><br /><br /><?php echo $this->_tpl_vars['event_name']; ?>
<?php endif; ?></b></font>
				<br /><br />
     			<?php echo $this->_tpl_vars['biz_addr1']; ?>

     			<?php if ($this->_tpl_vars['biz_addr2'] != ''): ?>
     				<br /> <?php echo $this->_tpl_vars['biz_addr2']; ?>

     			<?php endif; ?>
     			<?php if ($this->_tpl_vars['biz_addr3'] != ''): ?>
     				<br /> <?php echo $this->_tpl_vars['biz_addr3']; ?>

     			<?php endif; ?>
     			<?php if ($this->_tpl_vars['biz_phone'] != ''): ?>
     				<br /> Tel. <?php echo $this->_tpl_vars['biz_phone']; ?>

     			<?php endif; ?>
     			<br />
     			<br /><a href="<?php echo $this->_tpl_vars['listinfo_url']; ?>
"><small><?php echo $this->_tpl_vars['list_more_url']; ?>
</small></a>
				<?php if ($this->_tpl_vars['event_url'] != ''): ?>
					<br /><a href="<?php echo $this->_tpl_vars['event_url']; ?>
"><small><?php echo $this->_tpl_vars['Website']; ?>
</small></a>
				<?php endif; ?>
				<br>
				<a  href="<?php echo $this->_tpl_vars['event_cal_url']; ?>
"><small><?php echo $this->_tpl_vars['Calendar']; ?>
</small></a>
				<br />
				<?php if ($this->_tpl_vars['category_name'] != ''): ?><br><span class="eventcategory"><?php echo $this->_tpl_vars['category_name']; ?>
&nbsp;</span><?php endif; ?>
				<span class="eventtimes">
				<?php if (! $this->_tpl_vars['all_day_event']): ?><?php echo $this->_tpl_vars['event_times']; ?>
&nbsp;<?php endif; ?>
				<?php if ($this->_tpl_vars['event_location'] != ''): ?> at <?php echo $this->_tpl_vars['event_location']; ?>
<?php endif; ?>
				<br>
				<?php if ($this->_tpl_vars['all_day_event']): ?><br>All Day Event<br><br><?php endif; ?>
				<?php echo $this->_tpl_vars['event_recurs']; ?>

				</span>
				</p>
				<p class="eventdescshort"><?php echo ((is_array($_tmp=$this->_tpl_vars['event_desc_short'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</p>
			  </td></tr>
			  </table>

			  <br clear="left">

			  <p class="eventdesclong">
			  <?php echo ((is_array($_tmp=$this->_tpl_vars['event_desclong'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>

			  </p>
			  <?php if ($this->_tpl_vars['event_flyer_src'] != ''): ?>
			  <br />
			  		<p><center>
			  		<img border="0"  src="<?php echo $this->_tpl_vars['event_flyer_src']; ?>
"  width="<?php echo $this->_tpl_vars['event_flyer_width']; ?>
"  height="<?php echo $this->_tpl_vars['event_flyer_height']; ?>
"  align="center"></center>
			  		</p>
			  		<?php endif; ?>
			  <br clear="all">

	 </div>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>