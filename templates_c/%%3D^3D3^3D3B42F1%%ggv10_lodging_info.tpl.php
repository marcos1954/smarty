<?php /* Smarty version 2.6.26, created on 2012-10-10 07:36:32
         compiled from ggv10_lodging_info.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_lodging_info.tpl', 1, false),array('function', 'html_options', 'ggv10_lodging_info.tpl', 128, false),array('function', 'html_radios', 'ggv10_lodging_info.tpl', 208, false),array('modifier', 'nl2br', 'ggv10_lodging_info.tpl', 93, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_search.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id="Listing_right_column_pix">
			  <?php if ($this->_tpl_vars['list_map'] != ''): ?>
			  	<a href="<?php echo $this->_tpl_vars['list_mapbig']; ?>
"><img width="200" height="300" src="<?php echo $this->_tpl_vars['list_map']; ?>
" /></a><br />
     		  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix1_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix1_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix1_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix2_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix2_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix2_height']; ?>
" /><br />
			  <?php endif; ?>
			   <?php if ($this->_tpl_vars['lodging_pix3_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix3_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix3_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix4_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix4_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix4_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix5_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix5_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix5_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix6_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix6_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix6_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix7_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix7_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix7_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix8_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix8_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix8_height']; ?>
" /><br />
			  <?php endif; ?>
			  <?php if ($this->_tpl_vars['lodging_pix9_src'] != ''): ?>
			  	<img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_pix9_src']; ?>
" width="<?php echo $this->_tpl_vars['lodging_pix1_width']; ?>
" height="<?php echo $this->_tpl_vars['lodging_pix9_height']; ?>
" /><br />
			  <?php endif; ?>

		</div>  <!---- end right column pix ---->
     	<div id="main_content">



    	 <div id="Listing_full_content">
			<div id="Listing_header">
			  <div class="listinglogo">
                      <?php if ($this->_tpl_vars['lodging_logo_src'] != ''): ?>
                       <img border="0" src="../Listings/<?php echo $this->_tpl_vars['lodging_logo_src']; ?>
"  width="<?php echo $this->_tpl_vars['lodging_logo_width']; ?>
"  height="<?php echo $this->_tpl_vars['lodging_logo_height']; ?>
"  align="left">
                      <?php else: ?>
                        &nbsp;
                      <?php endif; ?>
               </div>


               <div class="listing_info">
                 	<p class="listing_name"><?php echo $this->_tpl_vars['hotel_name']; ?>
</p>
     				<p class="listing_address">
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
     					<br />
                        <?php if ($this->_tpl_vars['lodging_link_url'] != ''): ?>
     	                    <a class="listlink" href="<?php echo $this->_tpl_vars['lodging_link_url']; ?>
">website</a>&nbsp;&nbsp;
     	                <?php endif; ?>
     				</p>

     			</div>
                <br clear="all" />
                <br />

                <?php if ($this->_tpl_vars['features'] != ""): ?>
            	<p>
     	    	<font face="Arial" color="#0099CC" size="1">

             	<font size="2">
              	<b><i>Property Features:</i></b>
             	</font> &nbsp;

             	<?php echo $this->_tpl_vars['features']; ?>

            	</font>
            </p>
            <br />
           <?php endif; ?>

     		</div>  <!-- end of Listing_header -->



     	<p>
     	 <?php echo ((is_array($_tmp=$this->_tpl_vars['lodging_desclong'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>

     	</p>
	<br clear="all">
	<br />
	<br />
	<br />
	<p class="listing_name" style="text-align: center;">Rates for <?php echo $this->_tpl_vars['hotel_name']; ?>
</p>
	<br />

     <form method="POST" action="<?php echo $this->_tpl_vars['action']; ?>
" name="f1">
     <div align="center">
       <center>
       <table border="0"  cellpadding="2" cellspacing="0">
         <tr>
           <td colspan="3">
            <font face="Verdana" size="1">
             <b>arrival date in Puerto Vallarta</b>
            </font>
           </td>
           <td>
            <font face="Verdana" size="1">
             <b>nights</b>
            </font>
           </td>
           <td>
            <font face="Verdana" size="1">
             <b>adults</b>
            </font>
           </td>
           <td>
           </td>
         </tr>
         <tr>
			<td colspan="3">
			 <SELECT NAME="month" ONCHANGE="populate(this.form,this.selectedIndex);">
			   <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['months'],'selected' => $this->_tpl_vars['mm']), $this);?>

             </select>
             <SELECT NAME="day">
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
             </select>
             <SELECT NAME="year" ONCHANGE="populate(this.form,this.form.month.selectedIndex);">
              <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['years'],'selected' => $this->_tpl_vars['yy']), $this);?>

             </SELECT>

<?php echo '
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
{
    '; ?>
selectedIndex = <?php echo $this->_tpl_vars['dd_minus_one']; ?>
; <?php echo '

	timeAX = new Date(document.f1.year.options[document.f1.year.selectedIndex].text, document.f1.month.options[document.f1.month.selectedIndex].value,1);
	timeDifferenceX = timeAX - 86400000;
	timeBX = new Date(timeDifferenceX);
	var DaysInMonthX = timeBX.getDate();
	for (var i = 0; i < document.f1.day.length; i++) {
		document.f1.day.options[0] = null;
	}
	for (var i = 0; i < DaysInMonthX; i++) {
		document.f1.day.options[i] = new Option(i+1);
	}
	'; ?>
document.f1.day.options[<?php echo $this->_tpl_vars['dd_minus_one']; ?>
].selected = true;<?php echo '
}
function getYearsX() {
	// You can easily customize what years can be used
	var YearsX = new Array(2011,2012,2013)

	for (var i = 0; i < document.f1.year.length; i++) {
		document.f1.year.options[0] = null;
	}
	timeCX = new Date();
	currYearX = timeCX.getFullYear();
	for (var i = 0; i < YearsX.length; i++) {
		document.f1.year.options[i] = new Option(YearsX[i]);
	}
	document.f1.year.options[document.f1.year.selectedIndex].selected=true;
}
//  End -->
</script>
'; ?>


           &nbsp;&nbsp;&nbsp;
          </td>
          <td>
           <select size="1" name="stay_numDays">
            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['day_choices'],'selected' => $this->_tpl_vars['stay_numDays']), $this);?>

           </select>
          </td>
          <td>
           <select size="1" name="stay_numAdults">
            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['pax_choices'],'selected' => $this->_tpl_vars['stay_numAdults']), $this);?>

           </select>
          </td>
          <td>
           <input type="submit"
                name="Fetch"
                Value="Search"
                STYLE="font-family: Arial; font-size: 9pt; color: #FFFFFF; font-weight: bold; background-color: red">
          </td>
         </tr>
        </table>
       </center>
      </div>

      <div align="center">
       <table width="500" border="0" cellspacing="3" cellpadding="2" >
        <tr>
         <td align="center" valign="top">
          <b>
           <font size = 1 face="Verdana" color="#808000">
            <?php echo smarty_function_html_radios(array('name' => 'R1','options' => $this->_tpl_vars['currency1'],'selected' => $this->_tpl_vars['ucurrency'],'separator' => "&nbsp;"), $this);?>

            <br>
            <?php echo smarty_function_html_radios(array('name' => 'R1','options' => $this->_tpl_vars['currency2'],'selected' => $this->_tpl_vars['ucurrency'],'separator' => "&nbsp;"), $this);?>

           </font>
          </b>
         </td>
        </tr>
       </table>
      </div>
     </form>

     <div align="center">
      <table width="500" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td colspan="2">
         <p><?php echo $this->_tpl_vars['sayshownrentedornot']; ?>

         </p>
         </td>
       </tr>
       <tr>
        <td Align="left" vAlign="bottom">
         <a href="<?php echo $this->_tpl_vars['rate_table_url']; ?>
">
          <font face="Arial" color="#999999" size="2">
           <b><?php echo $this->_tpl_vars['rate_table_url_text']; ?>
</b>
          </font>
         </a>
        </td>
        <td Align="right" vAlign="bottom">
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['all_prices_in_currency']; ?>

         </font>
        </td>
       </tr>
      </table>
     </div>
     <div align="center">
      <table width="500" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
          room<br>ref<br>&nbsp;
         </font>
        </td>
        <td Align="left" bgcolor="#FFCCCC">
         <font face="Arial" color="#222222" size="1">
          room<br>description<br>&nbsp;
         </font>
        </td>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
          <!-- label for <?php echo $this->_tpl_vars['entry']['room_avail']; ?>
 -->
         </font>
        </td>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
          avg day<br>price<br>with tax
         </font>
        </td>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
           total<br>price<br>with tax
         </font>
        </td>
       </tr>

       <?php $_from = $this->_tpl_vars['room_info_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
       <tr>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['entry']['room_label']; ?>

         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['entry']['room_desc']; ?>

         </font>
        </td>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['entry']['room_avail']; ?>

         </font>
        </td>
        <td Align="right" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['entry']['room_avg_price']; ?>

         </font>
         </td>
         <td Align="right" vAlign="top" bgcolor="#FFFFEA">
          <font face="Arial" color="#008000" size="2">
           <?php echo $this->_tpl_vars['entry']['room_total']; ?>

          </font>
        </td>
       </tr>
       <?php endforeach; endif; unset($_from); ?>

      </table>

      </div>

     </div></div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>