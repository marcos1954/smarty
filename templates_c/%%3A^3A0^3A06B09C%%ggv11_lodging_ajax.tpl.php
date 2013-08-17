<?php /* Smarty version 2.6.27, created on 2013-08-17 07:11:23
         compiled from ggv11_lodging_ajax.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', 'ggv11_lodging_ajax.tpl', 32, false),array('function', 'html_radios', 'ggv11_lodging_ajax.tpl', 73, false),)), $this); ?>
<html>
<head></head>
<body>
   
<form method="POST" action="<?php echo $this->_tpl_vars['action']; ?>
" name="f1">
    <input id="hid" type="hidden" name="id" value="<?php echo $this->_tpl_vars['hotel_id']; ?>
">
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
			 <SELECT id=month NAME="month" ONCHANGE="populate(this.form,this.selectedIndex);">
			   <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['months'],'selected' => $this->_tpl_vars['mm']), $this);?>

             </select>
             <SELECT id=days NAME="day">
                <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['days'],'selected' => $this->_tpl_vars['dd']), $this);?>

             </select>
             <SELECT id=year NAME="year" ONCHANGE="populate(this.form,this.form.month.selectedIndex);">
              <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['years'],'selected' => $this->_tpl_vars['yy']), $this);?>

             </SELECT>



           &nbsp;&nbsp;&nbsp;
          </td>
          <td>
           <select id=numDays size="1" name="stay_numDays">
            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['day_choices'],'selected' => $this->_tpl_vars['stay_numDays']), $this);?>

           </select>
          </td>
          <td>
           <select id=numAdults size="1" name="stay_numAdults">
            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['pax_choices'],'selected' => $this->_tpl_vars['stay_numAdults']), $this);?>

           </select>
          </td>
          <td>
           <input type="button"
                  onclick="fetchLodgingInfo();"
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
<!--
     <div align="center">
      <table width="700" border="0" cellspacing="3" cellpadding="2" >
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
---->
     <div align="center">
      <table width="700" border="0" cellspacing="3" >
       <tr>
        <td class="label center">room ref</td>
        <td class="label left">room description</td>
        <td class="label center amount" > avg day price<br>with tax</td>
        <td class="label center amount" >total price<br>with tax</td>
       </tr>

       <?php $_from = $this->_tpl_vars['room_info_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
       
       <tr>
        <td class="data center"><?php echo $this->_tpl_vars['entry']['room_label']; ?>
</td>
        <td class="data left"><?php echo $this->_tpl_vars['entry']['room_desc']; ?>
</td>
        <td class="data right"><?php echo $this->_tpl_vars['entry']['room_avg_price']; ?>
</td>
        <td class="data right"><?php echo $this->_tpl_vars['entry']['room_total']; ?>
</td>
       </tr>
       <?php endforeach; endif; unset($_from); ?>
       
      </table>
     </div>
</body>
</html>