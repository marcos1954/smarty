<?php /* Smarty version 2.6.26, created on 2012-10-10 07:51:56
         compiled from ggv10_lodging_dir.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_lodging_dir.tpl', 1, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_search.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="topcontent">
			<div id="remote_search_box">
			<div id="remote_search_form"><center>
		     <?php echo  remote_search(); ?>
			</center></div>
			</div>

	        <h1>Puerto Vallarta Lodging</h1>
		    <h2><?php echo $this->_tpl_vars['LODGING_DIR_TITLE']; ?>
</h2>
		    <p>
		     <?php echo $this->_tpl_vars['LODGING_DIR_TEXT']; ?>

		    </p>
		    <br clear="all">
			<br />
			<br />
			<br />
			<br />



     	<table width="745" height="10" border="0" cellpadding="4" cellspacing="0">

		 <?php $this->assign('nextside', 'left'); ?>
		 		 <?php $_from = $this->_tpl_vars['premium_listings']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
		   <?php if ($this->_tpl_vars['nextside'] == 'left'): ?><tr><?php endif; ?>
		   <td valign="top" align="left"  width="350">
		   <div class="hotelbox">
		    <table width=336 border=0 cellspacing=0 cellpadding="3">
		     <tr>
		      <td colspan=2 valign="top" align="left" height="39" class="hotelTag" width="330">
		      <p class="blueback_title">
		     	 <a name="hid<?php echo $this->_tpl_vars['entry']['hotel_id']; ?>
"></a>
		     	 <?php echo $this->_tpl_vars['entry']['hotel_tag']; ?>

		      </p>
			  </td>
			 </tr>
			 <tr>
			 <?php if ($this->_tpl_vars['entry']['lodging_logo_src'] != ''): ?>
			  <td vAlign=top height=130 width=110>
			  <br />
			   <a href="<?php echo $this->_tpl_vars['entry']['lodging_url']; ?>
">
		        <img border="0" src="../Listings/<?php echo $this->_tpl_vars['entry']['lodging_logo_src']; ?>
" width="<?php echo $this->_tpl_vars['entry']['lodging_logo_width']; ?>
" height="<?php echo $this->_tpl_vars['entry']['lodging_logo_height']; ?>
" align="left">
			   </a>
			  </td>
			 <?php else: ?>
			  <td height=130 width=110>&nbsp;</td>
			 <?php endif; ?>

              <td  vAlign="top" align="left"  wrap>
               <p class="listing_name"><?php echo $this->_tpl_vars['entry']['hotel_name']; ?>
</p>
				<p class="listing_address">
               <?php echo $this->_tpl_vars['entry']['lodging_addr1']; ?>
<?php if ($this->_tpl_vars['entry']['lodging_addr2'] != ''): ?><br /><?php echo $this->_tpl_vars['entry']['lodging_addr2']; ?>
<?php endif; ?><?php if ($this->_tpl_vars['entry']['lodging_addr3'] != ''): ?><br /><?php echo $this->_tpl_vars['entry']['lodging_addr3']; ?>
<?php endif; ?><?php if ($this->_tpl_vars['entry']['lodging_phone'] != ''): ?><br /> Tel. <?php echo $this->_tpl_vars['entry']['lodging_phone']; ?>
<?php endif; ?>
				<br />
               <?php if ($this->_tpl_vars['entry']['lodging_more_url'] != ''): ?>
     	         <a class="listlink" href="<?php echo $this->_tpl_vars['entry']['lodging_more_url']; ?>
"><?php echo $this->_tpl_vars['entry']['lodging_url_text']; ?>
</a>
     	       <?php endif; ?>

               </p>
              </td>
             </tr>
            </table>

            <p class="listing_description">
            	<?php echo $this->_tpl_vars['entry']['lodging_descshort']; ?>

            </p>
</div>  <!-- hotelbox -->
		  <?php if ($this->_tpl_vars['nextside'] == 'left'): ?>
           </td>
           <td width="10" valign="top" align="left"  height="25">
            &nbsp;
           </td>
		   <?php $this->assign('nextside', 'right'); ?>
		  <?php else: ?>
		   </td>
		  </tr>
			<?php $this->assign('nextside', 'left'); ?>
		  <?php endif; ?>
		<?php endforeach; endif; unset($_from); ?>

		<?php if ($this->_tpl_vars['nextside'] == 'right'): ?>
		  <td></td>
		 </tr>
		<?php endif; ?>

				<?php if ($this->_tpl_vars['basic_listings']): ?>
	  	 <tr>
	  	  <td colspan=3>
	  	    <div id="Listings_other_box">
	  	  	<br /><br />

	  	  	<h2>Other lodgings in this category....</h2>

	  	  	<?php $_from = $this->_tpl_vars['basic_listings']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
           		<p class="listing_name">
           		<?php echo $this->_tpl_vars['entry']['hotel_name']; ?>
</p>
           		<p class="listing_address">
           		<?php echo $this->_tpl_vars['entry']['lodging_addr1']; ?>
<?php if ($this->_tpl_vars['entry']['lodging_addr2'] != ''): ?>, <?php echo $this->_tpl_vars['entry']['lodging_addr3']; ?>
<?php endif; ?><?php if ($this->_tpl_vars['entry']['lodging_phone'] != ''): ?>, Tel. <?php echo $this->_tpl_vars['entry']['lodging_phone']; ?>
<?php endif; ?></p>
           		<p class="listing_description"><?php echo $this->_tpl_vars['entry']['lodging_descshort']; ?>
</p>
          	<?php endforeach; endif; unset($_from); ?>
          </div>

	  	 </td>
	  	</tr>
	   <?php endif; ?>
      </table>
</div>  <!-- topcontent -->
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>