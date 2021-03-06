<?php /* Smarty version 2.6.27, created on 2013-08-24 20:14:25
         compiled from ggv11_lodging_info.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv11_lodging_info.tpl', 1, false),array('modifier', 'default', 'ggv11_lodging_info.tpl', 36, false),array('modifier', 'nl2br', 'ggv11_lodging_info.tpl', 118, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_dayCal.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

     	<div id="main_content">
 		  <div id="Listing_full_content" style="margin-top: 0">
			<div id="Listing_header">
			  <div class="listinglogo">
                      <?php if ($this->_tpl_vars['lodging_logo_src'] != ''): ?>
                       <img border="0"
			                src="../Listings/<?php echo $this->_tpl_vars['lodging_logo_src']; ?>
"
			                width="<?php echo $this->_tpl_vars['lodging_logo_width']; ?>
"
			                height="<?php echo $this->_tpl_vars['lodging_logo_height']; ?>
"
			                align="left">
                      <?php else: ?>
                         &nbsp;
                      <?php endif; ?>
               </div>
               <div id="Listing_header_right">
					
               		<p class="listing_address">
						<?php if ($this->_tpl_vars['EDIT'] != ''): ?>
					       <a href="<?php echo $this->_tpl_vars['EDIT']; ?>
">EDIT</a> &nbsp;
				        <?php endif; ?>
					    <?php if ($this->_tpl_vars['list_tagsicons'] != ''): ?>
							<?php echo $this->_tpl_vars['list_tagsicons']; ?>

					    <?php endif; ?>
						<?php if ($this->_tpl_vars['list_fb_url'] != ''): ?>
							  <img src="/images/facebookIcon.png" height=24 width=auto title="Facebook" />
						<?php endif; ?>
						<?php if ($this->_tpl_vars['list_ta_url'] != ''): ?>
							  <img src="/images/tripadvisor2.png" height=24 width=auto title="Reviewed on Tripadvisor" />
						<?php endif; ?>
					</p>
						
					<div class="links" ><span><?php echo ((is_array($_tmp=@$this->_tpl_vars['locationPhones'])) ? $this->_run_mod_handler('default', true, $_tmp, 'location & phone') : smarty_modifier_default($_tmp, 'location & phone')); ?>
</span></div>
					
					<p  class="listing_address">
     					<?php echo $this->_tpl_vars['lodging_addr1']; ?>

     					<?php if ($this->_tpl_vars['lodging_addr2'] != ''): ?>
     						<br /> <?php echo $this->_tpl_vars['lodging_addr2']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['lodging_addr3'] != ''): ?>
     						<br /> <?php echo $this->_tpl_vars['lodging_addr3']; ?>

     					<?php endif; ?>
     					<?php if ($this->_tpl_vars['lodging_phone'] != ''): ?>
     						<br /> Tel. <?php echo $this->_tpl_vars['lodging_phone']; ?>

     					<?php endif; ?>
						<?php if ($this->_tpl_vars['list_cell'] != ''): ?>
     						<br /> Cel. <?php echo $this->_tpl_vars['list_cell']; ?>

     					<?php endif; ?>
						<?php if ($this->_tpl_vars['list_intlphone'] != ''): ?>
     						<br /> US/Can. <?php echo $this->_tpl_vars['list_intlphone']; ?>

     					<?php endif; ?>
                   </p>
					<div class="links" ><span><?php echo ((is_array($_tmp=@$this->_tpl_vars['websitesListings'])) ? $this->_run_mod_handler('default', true, $_tmp, 'website & listings') : smarty_modifier_default($_tmp, 'website & listings')); ?>
</span></div>
							 

                        <?php if ($this->_tpl_vars['lodging_link_url'] != ''): ?>
     	                    <a class="listlink" href="<?php echo $this->_tpl_vars['lodging_link_url']; ?>
">website</a>&nbsp;&nbsp;
     	                <?php endif; ?>
						<?php if ($this->_tpl_vars['list_fb_url'] != ''): ?>
     	                    <a class="listlink" href="<?php echo $this->_tpl_vars['list_fb_url']; ?>
"><?php echo $this->_tpl_vars['list_fb_text']; ?>
</a>&nbsp;&nbsp;
     	                <?php endif; ?>
						
						<?php if ($this->_tpl_vars['list_ta_url'] != ''): ?>
     	                    <a class="listlink" href="<?php echo $this->_tpl_vars['list_ta_url']; ?>
"><?php echo $this->_tpl_vars['list_ta_text']; ?>
</a>&nbsp;&nbsp;
     	                <?php endif; ?>
						
					    <?php if ($this->_tpl_vars['list_closed'] != ''): ?>
     	                      <br /><br /><?php echo $this->_tpl_vars['list_closed']; ?>

     	                <?php endif; ?>

						<?php if ($this->_tpl_vars['list_lastupdate'] != '0000-00-00 00:00:00' && $this->_tpl_vars['EDIT'] != ''): ?>
							  <div class="links" ><span>last update</span></div>
									<div style="text-align: center; color: gray; font-size: .8em;" ><?php echo $this->_tpl_vars['list_lastupdate']; ?>
</div>
     	                <?php endif; ?>
	
			   </div>
               <div class="listing_info">
                 	<p class="listing_name" style="margin-top: 0"><?php echo $this->_tpl_vars['hotel_name']; ?>
</p>
					<p class="tags">
     					<?php if ($this->_tpl_vars['list_tags'] != ''): ?>
     	                   <?php echo $this->_tpl_vars['list_tags']; ?>

     	                <?php endif; ?>
						<?php if ($this->_tpl_vars['list_tags'] != '' && $this->_tpl_vars['features'] != ''): ?>, <?php endif; ?>
						
						<?php if ($this->_tpl_vars['features'] != ''): ?>
     	                   <?php echo $this->_tpl_vars['features']; ?>

     	                <?php endif; ?>
					</p>
                 	<div id="ggv_descshort"><?php echo $this->_tpl_vars['lodging_descshort']; ?>
</div>
     			</div>
                <br clear="all" />
     		</div>  <!-- end of Listing_header -->
	<br clear="all" />

			<div id="ggv_combobox">
	     		<div id="ggv_control">
					<div id="ggv_flyer_link" class="linkbox<?php if ($this->_tpl_vars['flyer_url'] == ''): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_flyer')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['flyer_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'flyer') : smarty_modifier_default($_tmp, 'flyer')); ?>
</a></div>
					<div id="ggv_photos_link" class="linkbox<?php if ($this->_tpl_vars['pix'] == array ( )): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_photos')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['photos_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'photos') : smarty_modifier_default($_tmp, 'photos')); ?>
</a></div>
					<div id="ggv_mapa_link"	class="linkbox<?php if ($this->_tpl_vars['list_map'] == ''): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_mapa')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['map_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'map') : smarty_modifier_default($_tmp, 'map')); ?>
</a></div>
 				    <div id="ggv_events_link" class="linkbox<?php if ($this->_tpl_vars['list_rows_cal'] == array ( )): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_events')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['events_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'events') : smarty_modifier_default($_tmp, 'events')); ?>
</a></div>
					<div id="ggv_cal_link" class="linkbox<?php if ($this->_tpl_vars['list_rows_cal'] == array ( )): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_cal')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['calendar_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'calendar') : smarty_modifier_default($_tmp, 'calendar')); ?>
</a></div>
					<div id="ggv_rooms_link" class="linkbox"  onclick="chooseCtlBoxItem('ggv_rooms')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['room_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'prices') : smarty_modifier_default($_tmp, 'prices')); ?>
</a></div>
					<div id="ggv_about_link" class="linkbox<?php if ($this->_tpl_vars['lodging_desclong'] == ''): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_about')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['about_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'about') : smarty_modifier_default($_tmp, 'about')); ?>
</a></div>
					<div id="ggv_fb_link" class="linkbox<?php if ($this->_tpl_vars['list_fb_url_href'] == ''): ?> empty<?php endif; ?>"  onclick="chooseCtlBoxItem('ggv_fb')"><?php echo ((is_array($_tmp=@$this->_tpl_vars['fb_text'])) ? $this->_run_mod_handler('default', true, $_tmp, 'news feed') : smarty_modifier_default($_tmp, 'news feed')); ?>
</a></div>
				</div>
	     		<br clear="all" />
	     		<div id="ggv_underline" ></div>

	     		<div id="ggv_flyer"  style="text-align: center;" class="ggv-ctlbox-content">
	     		<?php if ($this->_tpl_vars['flyer_url'] != ''): ?> <img src="http://src.sencha.io/702/1050/http://www.gayguidevallarta.com<?php echo $this->_tpl_vars['flyer_url']; ?>
" > <?php endif; ?>
	     		</div>
				
				<div id="ggv_about"  class="ggv-ctlbox-content">
	     			<div class="borderbox">
		     			<p><?php echo ((is_array($_tmp=$this->_tpl_vars['lodging_desclong'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</p>
		     			<br clear="all" />
	     			</div>
				</div>

	     		<div id="ggv_fb"  class="ggv-ctlbox-content">
	     			
							  
<div style="margin: 5px  0 10px  25px ; float: right; clear: right; height: 500px !important" class="fb-like-box" data-href="<?php echo $this->_tpl_vars['list_fb_url_href']; ?>
" data-width="730" data-height="500" data-show-faces="false" data-stream="true" data-header="true"></div>

<div id="fb-root"></div>
<script type="text/javascript">
<?php echo '
(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
		  fjs.parentNode.insertBefore(js, fjs);
}(document, \'script\', \'facebook-jssdk\'));
'; ?>

</script>
	     			
	     		</div>

				<div id="ggv_events"  class="ggv-ctlbox-content">
					<div class="eventBox">
		     	 	<a name="Calendar"></a>
		     	 	<h2 >Events Calendar</h2>
	     			<?php if ($this->_tpl_vars['list_rows_cal'] != array ( )): ?>
		 				<?php $_from = $this->_tpl_vars['list_rows_cal']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
							<div  class="eventOne">
								<div class="eventOneFlyer">
								<?php if (isset ( $this->_tpl_vars['entry']['flyer'] )): ?><img src="http://src.sencha.io/150/350/http://www.gayguidevallarta.com<?php echo $this->_tpl_vars['entry']['flyer']; ?>
" /> <?php endif; ?>
								</div>
								<div class="eventOneInfo">
									<div  class="eventOneCat"><?php echo $this->_tpl_vars['entry']['category_name']; ?>
</div>
									<?php if ($this->_tpl_vars['entry']['nameEvent'] != ''): ?><div class="eventOneName"><?php echo $this->_tpl_vars['entry']['nameEvent']; ?>
</div><?php endif; ?>
									<br />
									<?php if ($this->_tpl_vars['entry']['timesEvent'] != ''): ?><strong><?php echo $this->_tpl_vars['entry']['timesEvent']; ?>
</strong>
									<br /><?php endif; ?>
									<?php echo $this->_tpl_vars['entry']['event_recurs']; ?>

									<br />
									<?php if ($this->_tpl_vars['entry']['moreEventLink'] != ''): ?><br /><?php echo $this->_tpl_vars['entry']['moreEventLink']; ?>

									<br /><?php endif; ?><br /><i>
									<?php echo $this->_tpl_vars['entry']['descEvent']; ?>

									</i><br />
								</div>
								<div  class="eventOneDesc">
									<?php echo $this->_tpl_vars['entry']['descEventLong']; ?>

								</div>
								<br clear="left" />
							</div>
						<?php endforeach; endif; unset($_from); ?>

					<?php else: ?>
						<div class="borderbox">
							Nothing currently in this calendar.
						</div>
					<?php endif; ?>
					</div>
				</div>

				<div id="ggv_mapa" class="ggv-ctlbox-content"></div>

				<div id="ggv_cal"  class="ggv-ctlbox-content">
					<div id="loader" class="loader" ></div>
				</div>

				<div id="ggv_menu" class="ggv-ctlbox-content">

				<?php if ($this->_tpl_vars['menus'] != array ( )): ?>
					<div  class="ggv_arrows" >
						<a class="ggv_arrow_left"></a>
						<a class="ggv_arrow_right"></a>
					</div>
					<div class="slider-nav-menu"></div>
					 <div id="slider-menu" class="flexslider">
					  <ul class="slides">
					  <?php $_from = $this->_tpl_vars['menus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['picture']):
?>
					   <?php if ($this->_tpl_vars['picture'] != ''): ?>
					   		<li><img src="http://src.sencha.io/702/1050/http://www.gayguidevallarta.com<?php echo $this->_tpl_vars['picture']['src']; ?>
" /></li>
					   <?php endif; ?>
					  <?php endforeach; endif; unset($_from); ?>
					  </ul>
					</div>
				<?php else: ?>
					<div class="borderbox">
						<?php echo ((is_array($_tmp=@$this->_tpl_vars['noMenus'])) ? $this->_run_mod_handler('default', true, $_tmp, 'No menus on file.') : smarty_modifier_default($_tmp, 'No menus on file.')); ?>

					</div>
				<?php endif; ?>
				</div>

				<div id="ggv_photos"  class="ggv-ctlbox-content">
				<?php if ($this->_tpl_vars['pix'] != array ( )): ?>
					<div  class="ggv_arrows"  >
						<a class="ggv_arrow_left"></a>
						<a class="ggv_arrow_right"></a>
					</div>

					<div class="slider-navcontrols"></div>
					<div id="slider" class="flexslider">
					  <ul class="slides">
					  <?php $_from = $this->_tpl_vars['pix']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['picture']):
?>
					  <?php if ($this->_tpl_vars['picture'] != ''): ?>
					  <li><img src="http://src.sencha.io/722/1050/http://www.gayguidevallarta.com<?php echo $this->_tpl_vars['picture']['src']; ?>
" /></li>
					  <?php endif; ?>
					  <?php endforeach; endif; unset($_from); ?>
					  </ul>
					</div>

				<?php else: ?>
					<div class="borderbox">
						<?php echo ((is_array($_tmp=@$this->_tpl_vars['noPhotos'])) ? $this->_run_mod_handler('default', true, $_tmp, 'No photos on file.') : smarty_modifier_default($_tmp, 'No photos on file.')); ?>

					</div>
				<?php endif; ?>
				</div>
				
			<div id="ggv_rooms" class="ggv-ctlbox-content">
				<div id="lodging_ajax"></div>
			  </div>
			</div>

			
		</div>
	</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>