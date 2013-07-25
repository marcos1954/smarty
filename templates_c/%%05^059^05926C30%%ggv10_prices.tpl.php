<?php /* Smarty version 2.6.26, created on 2012-05-25 19:49:10
         compiled from ggv10_prices.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_prices.tpl', 1, false),array('function', 'html_options', 'ggv10_prices.tpl', 83, false),array('function', 'html_radios', 'ggv10_prices.tpl', 144, false),array('function', 'html_checkboxes', 'ggv10_prices.tpl', 210, false),array('function', 'counter', 'ggv10_prices.tpl', 343, false),array('function', 'cycle', 'ggv10_prices.tpl', 347, false),array('modifier', 'upper', 'ggv10_prices.tpl', 349, false),array('modifier', 'capitalize', 'ggv10_prices.tpl', 352, false),array('modifier', 'escape', 'ggv10_prices.tpl', 352, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_search.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


<div id="Listing_right_column">
<br />
<div style="border: solid gray 1px;"
          <table align="center"  border="0" cellspacing="0" cellpadding="5">
           <tr>
            <td bgcolor="ivory" align="center" valign="top">
             <h4><?php echo $this->_tpl_vars['vacationCalendarHeader']; ?>
</h4>
             <?php echo $this->_tpl_vars['vacation_calendar']; ?>

            </td>
           </tr>
           <tr><td bgcolor="ivory">

	<br />
     <p style="text-align: left; font-size:8pt; padding:4pt">
     <?php echo $this->_tpl_vars['VacationDatesExplain']; ?>

    </p>
     </tr></table>
</div>
     <br /><center>
     <!--
     <img src="../Search/images/hotel_mock_sidead.gif">
     <br /><br />
     <img src="../Search/images/hotel_mock_sidead2.gif">
     <br /><br />
     -->

    <!-----------------BEGIN AD ZONE ---------------->
    <?php echo $this->_tpl_vars['AD_ZONE']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE1']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE2']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE3']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE4']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE5']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE6']; ?>

    <br /><br />
    <?php echo $this->_tpl_vars['AD_ZONE7']; ?>


    <!-----------------END AD ZONE ---------------->

     </center>

</div>


<div id="main_content">
          <form method="POST" action="" target="_self" name="f1">
      <div align="center">
      <br />
      <div id="searchControlBox">

       <table border="0"  cellpadding="1" cellspacing="0" width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
">
       	<tr><td colspan="7" class="srchFrmHdr">
       	Enter Your Vacation Dates
       	</td></tr>
        <tr><!-- labels on form panel -->
         <td width="10%">&nbsp;</td>
         <td class="srchFrm1"><?php echo $this->_tpl_vars['ArrivalDateInPVR']; ?>
</td>
         <td class="srchFrm1"><?php echo $this->_tpl_vars['nights']; ?>
</td>
         <td class="srchFrm1"><?php echo $this->_tpl_vars['adults']; ?>
</td>
         <td class="srchFrm1" colspan=2 align="right" nowrap>
          <a href="<?php echo $this->_tpl_vars['ADV_FORM_URL']; ?>
">
           <?php echo $this->_tpl_vars['ADV_FORM_TXT']; ?>

          </a>
         </td>
         <td width="10%">&nbsp;</td>
        </tr>

        <tr>
         <td>&nbsp;</td>
         <td align="center" nowrap>
          <SELECT NAME="month" ONCHANGE="populate(this.form,this.selectedIndex);">
          <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['months'],'selected' => $this->_tpl_vars['mm']), $this);?>

          </SELECT>
          <SELECT NAME="day">
                  <OPTION>&nbsp;</OPTION>
          </SELECT>
          <SELECT NAME="year" ONCHANGE="populate(this.form,this.form.month.selectedIndex);">
          <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['years'],'selected' => $this->_tpl_vars['yy']), $this);?>

          </SELECT>
<SCRIPT LANGUAGE="JavaScript">
<?php echo '
<!-- Begin
{
    selectedIndex = '; ?>
<?php echo $this->_tpl_vars['dd_minus_one']; ?>
<?php echo ';

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
	document.f1.day.options['; ?>
<?php echo $this->_tpl_vars['dd_minus_one']; ?>
<?php echo '].selected = true;
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
'; ?>

</script>
           &nbsp;
           </td>
           <td>
            <select size="1" name="stay_numDays">
            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['day_choices'],'selected' => $this->_tpl_vars['numDays']), $this);?>

            </select>
           </td>
           <td>
            <select size="1" name="stay_numAdults">
            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['pax_choices'],'selected' => $this->_tpl_vars['numAdults']), $this);?>

            </select>
           </td>

           <td align="right"><input type="submit" name="Fetch" Value=" Search " STYLE="font-family: Arial; font-size: 9pt; color: #FFFFFF; font-weight: bold; background-color: red"></td>
           <td></td>
         </tr>
         <tr>
          <td class="srchCurrency" colspan="7" align="center" valign="top">
          <?php echo smarty_function_html_radios(array('name' => 'R1','options' => $this->_tpl_vars['currency1'],'selected' => $this->_tpl_vars['ucurrency'],'separator' => "&nbsp;"), $this);?>

          <br />
          <?php echo smarty_function_html_radios(array('name' => 'R1','options' => $this->_tpl_vars['currency2'],'selected' => $this->_tpl_vars['ucurrency'],'separator' => "&nbsp;"), $this);?>


         <?php if ($this->_tpl_vars['adv_form'] == 0): ?>
          </td>
         </tr>
         <?php else: ?>
           <br />
           <hr noshade color="lightgray" width="90%">
          </td>
         </tr>
         <tr>
          <td colspan="7">
           <table>

         <tr>
          <td class="srchFrm1" align="right">
            max to gay beach
          </td>
          <td class="srchFrm1" width="17%" align="right">
          <?php echo $this->_tpl_vars['maxbeach']; ?>

         </td>
         <td class="srchFrm1" align="right">
           min day price
         </td>
         <td class="srchFrm1" width="30" align="right">
           <input type="text" value="<?php echo $this->_tpl_vars['minday']; ?>
" name="minday" size="5">
         </td>
         <td class="srchFrm1" align="right">
           min total
         </td>

         <td class="srchFrm1" width="40" align="right">
           <input type="text" value="<?php echo $this->_tpl_vars['mintotal']; ?>
" name="mintotal" size="5">
         </td>
        </tr>
        <tr>
         <td class="srchFrm1" align="right">
           max to gay bars
         </td>
        <td class="srchFrm1" width="17%" align="right">
        <?php echo $this->_tpl_vars['maxbars']; ?>

        </td>
        <td class="srchFrm1" align="right">
          max day price
        </td>

        <td class="srchFrm1" width="30" align="right">
          <input type="text" value="<?php echo $this->_tpl_vars['maxday']; ?>
" name="maxday" size="5">
        </td>
        <td class="srchFrm1" align="right">
          max total
        </td>
        <td class="srchFrm1" width="40" align="right">
          <input type="text" value="<?php echo $this->_tpl_vars['maxtotal']; ?>
" name="maxtotal" size="5">
        </td>

       </tr> </table>
          </td>
         </tr>
         <?php endif; ?>

       <tr>
        <td class="srchFrm1"  valign="center" align="center" colspan="7">
            <hr noshade color="lightgray" width="90%">
       		<?php echo smarty_function_html_checkboxes(array('name' => 'srchtype','options' => $this->_tpl_vars['lodgingtypes'],'selected' => $this->_tpl_vars['srchtypeselected'],'separator' => "&nbsp;"), $this);?>

        	<input type="hidden" name="srchlisted" value="1">

        </td>
       </tr>
     </table>
     </div>
      <input type="hidden" name="advanced"      value="<?php echo $this->_tpl_vars['adv_form']; ?>
">
      <input type="hidden" name="adv_currency"  value="<?php echo $this->_tpl_vars['ucurrency']; ?>
">
      <br />


       <input type="hidden" name="PG_CNT" value="<?php echo $this->_tpl_vars['max_pages']; ?>
">
       <h2><center>
       <?php echo $this->_tpl_vars['PricesForAccomodations']; ?>

        <br>
        <span class="srchRh2">
        <?php echo $this->_tpl_vars['numAdults']; ?>
 <?php echo $this->_tpl_vars['adults']; ?>
 &nbsp; - &nbsp; <?php echo $this->_tpl_vars['numDays']; ?>
 <?php echo $this->_tpl_vars['nights']; ?>
 &nbsp; - &nbsp; <?php echo $this->_tpl_vars['Arrival']; ?>
: <?php echo $this->_tpl_vars['date_check_in']; ?>

         &nbsp; - &nbsp; <?php echo $this->_tpl_vars['Departure']; ?>
: <?php echo $this->_tpl_vars['date_check_out']; ?>

        </span>
       <center></h2>

       <table width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
" align="center">
        <tr>
         <td width="30%" align="left" valign="bottom">
         <?php if ($this->_tpl_vars['sortby'] == 0): ?>

          <font face="Arial" color="#999999" size="1">
           <?php echo $this->_tpl_vars['ResortResultsBy']; ?>
 <br />
            <font face="Arial" color="red" size="2"><b>
            <?php echo $this->_tpl_vars['Price']; ?>

             </b></font>
           <br />
            <a href="?sort=1">
             <font face="Arial" color="#999999" size="2"><b>
              <?php echo $this->_tpl_vars['Location']; ?>

             </b></font>
            </a>
          </font>

          <?php else: ?>

           <font face="Arial" color="#999999" size="1">
           <?php echo $this->_tpl_vars['ResortResultsBy']; ?>
 <br />
           <a href="?sort=0">
            <font face="Arial" color="#999999" size="2"><b>
             <?php echo $this->_tpl_vars['Price']; ?>

             </b></font>
           </a>
           <br />
             <font face="Arial" color="red" size="2"><b>
             <?php echo $this->_tpl_vars['Location']; ?>

             </b></font>
          </font>

          <?php endif; ?>

         </td>
         <td width="40%" class="srchCUR"  align="center" valign="top">
         <div style="color: red;">
         <?php echo $this->_tpl_vars['LISTINGS_SORTED_BY']; ?>
:&nbsp;
          <?php if ($this->_tpl_vars['sortby'] == 0): ?><?php echo $this->_tpl_vars['Price']; ?>
<?php else: ?><?php echo $this->_tpl_vars['Location']; ?>
<?php endif; ?></div>
         <?php echo $this->_tpl_vars['all_prices_in_currency']; ?>

         <br />
         <?php echo $this->_tpl_vars['includeAllTaxes']; ?>

         <br />&nbsp;
         </td>
         <td width="30%" class="srchPAGENUMS" align="right" valign="bottom">
         <?php echo $this->_tpl_vars['Page']; ?>
 <?php echo $this->_tpl_vars['page_num']; ?>
 / <?php echo $this->_tpl_vars['max_pages']; ?>

         </td>
        </tr>
       </table>


       <table width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
" align="center">
        <tr>
         <td width="50%">
          <hr noshade color="red">
         </td>
         <td nowrap>
          <?php echo $this->_tpl_vars['paging']; ?>

         </td>
         <td width="50%">
          <hr noshade color="red">
         </td>
        </tr>
       </table>


<?php $this->assign('lastid', ""); ?>
<?php $_from = $this->_tpl_vars['room_price_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['mainloop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['mainloop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['entry']):
        $this->_foreach['mainloop']['iteration']++;
?>
<?php if ($this->_tpl_vars['entry']['hotel_id'] != $this->_tpl_vars['lastid']): ?>
 <?php if ($this->_tpl_vars['lastid'] != ""): ?> </table> <?php endif; ?>
  <?php $this->assign('lastid', $this->_tpl_vars['entry']['hotel_id']); ?>
         <br />
         <table align="center" border="0" cellpadding="2" cellspacing="0" width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
" bgcolor="#33AA77">
          <tr>
           <td width="10">&nbsp;</td>
           <td class="srchHdr3" width="220" align="left">
             <a href="<?php echo $this->_tpl_vars['entry']['hotelinfo_URL']; ?>
" class="srchHname">

               <?php echo $this->_tpl_vars['entry']['hotel_name']; ?>


             </a>
           </td>
           <td></td>
           <td class="srchHdr1" width="160" align="right"  bgcolor="#FFF9F5">
            &nbsp;
           </td>
           <td class="srchHdr1" width="60" align="right" bgcolor="#FFF9F5">
                      </td>
          </tr>
          <tr>

           <td>&nbsp;</td>
           <td class="srchHdr2" colspan="2" valign="top" align="left">
             &nbsp;&nbsp;&nbsp;
             <a href="<?php echo $this->_tpl_vars['entry']['hotelinfo_URL']; ?>
" class="srchHlink">more info</a>
             &nbsp;&nbsp;&nbsp;
              <a href="<?php echo $this->_tpl_vars['entry']['hotelrate_URL']; ?>
" class="srchHlink">rate table</a>
              &nbsp;&nbsp;&nbsp;
               <a href="<?php echo $this->_tpl_vars['entry']['hotellink_URL']; ?>
" class="srchHlink">website</a>
             </td>
             <td  colspan="2" class="srchHdr1" align="right">
              <?php echo $this->_tpl_vars['numAdults']; ?>
 Adult<?php if ($this->_tpl_vars['numAdults'] != 1): ?>s<?php endif; ?>              &nbsp;/&nbsp;
              <?php echo $this->_tpl_vars['numDays']; ?>
 Night<?php if ($this->_tpl_vars['numDays'] != 1): ?>s<?php endif; ?>              &nbsp;
             </td>
            </tr>
           </table>

           <table  align="center" border="0" cellpadding="3" cellspacing="0" width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
">
           <?php echo smarty_function_counter(array('name' => 'tabcounter','print' => false,'assign' => 'grpid'), $this);?>


           <?php endif; ?>

            <tr  bgcolor="<?php echo smarty_function_cycle(array('values' => ($this->_config[0]['vars']['searchcycleBgColor']),'name' => ($this->_tpl_vars['grpid'])), $this);?>
"  >
             <td class="srchL" width="80" valign="center" align="right" nowrap>
              <?php echo ((is_array($_tmp=$this->_tpl_vars['entry']['room_label'])) ? $this->_run_mod_handler('upper', true, $_tmp) : smarty_modifier_upper($_tmp)); ?>
:
             </td>
             <td class="srchD" width="80%" valign="top" align="left">
              <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['entry']['room_desc'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>

             </td>
             <td class="srchA" width="20%" vAlign="center" align="right" nowrap>
             <?php echo $this->_tpl_vars['entry']['price']; ?>

             </td>
            </tr>


<?php endforeach; endif; unset($_from); ?>
		     </table>

		<br />
		<table width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
" align="center">
        <tr>
         <td width="50%">
          <hr noshade color="red">
         </td>
         <td nowrap>
          <?php echo $this->_tpl_vars['paging']; ?>

         </td>
         <td width="50%">
          <hr noshade color="red">
         </td>
        </tr>
       </table>
       <table width="<?php echo $this->_config[0]['vars']['SEARCHWIDTH']; ?>
" align="center">
        <tr>
         <td class="srchPAGENUMS" align="left" valign="bottom" >
         &nbsp;
         </td>
         <td></td>
         <td class="srchPAGENUMS" align="right" valign="bottom">
           <?php echo $this->_tpl_vars['Page']; ?>
 <?php echo $this->_tpl_vars['page_num']; ?>
 / <?php echo $this->_tpl_vars['max_pages']; ?>

         </td>
        </tr>
       </table>
       </div>
       </form>

		   <!--- end center column --->
		   </div>



     

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>