<?php /* Smarty version 2.6.26, created on 2012-10-10 08:06:51
         compiled from ggv10_lodging_rates.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'string_format', 'ggv10_lodging_rates.tpl', 37, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
     
     <div align="center">
      <table width="95%" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td Align="left" vAlign="bottom">
         <a href="<?php echo $this->_tpl_vars['hotel_info_url']; ?>
"><font face="Arial" color="#999999" size="2">
          <b><?php echo $this->_tpl_vars['hotel_info_url_text']; ?>
</b></font>
         </a>
        </td>
       </tr>
      </table>
     </div>

     <div align="center">
      <table width="95%" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td width="1%" bgcolor="#FFCCCC" align="right" nowrap>
         <font face="Arial" color="black" size="2">
          <b>hotel</b>
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['hotel_name']; ?>

         </font>
        </td>

         <td width="1%" bgcolor="#FFCCCC" align="right" nowrap>
         <font face="Arial" color="black" size="2">
          <b>booking fee</b>
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          <?php echo ((is_array($_tmp=$this->_tpl_vars['hotel_bookfee'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "$ %d") : smarty_modifier_string_format($_tmp, "$ %d")); ?>

         </font>
        </td>

        <td width="1%" bgcolor="#FFCCCC" align="right" nowrap>
         <font face="Arial" color="black" size="2">
          <b>add tax</b>
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          <?php echo ((is_array($_tmp=$this->_tpl_vars['hotel_addtax'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%d%%") : smarty_modifier_string_format($_tmp, "%d%%")); ?>

         </font>
        </td>
       </tr>
      </table>
     </div>

     <br />
     <center>
      <span style="font-family: sans-serif; font-weight: bold; color: #5054a7">
       PLEASE NOTE: ALL prices in this rate table are in <?php echo $this->_tpl_vars['currency']; ?>
.
      </span>
     </center>
     <br />


     <div align="center">
      <table width="95%" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <th Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="black" size="2">
          <b>room<br>ref</b>
         </font>
        </th>
        <th Align="center" bgcolor="#FFCCCC">
         <font face="Arial" color="black" size="2">
          <b>room<br>description</b>
         </font>
        </th>
        <th Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="black" size="2">
          <b>room<br>size</b>
         </font>
        </th>

        <?php $_from = $this->_tpl_vars['period_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
        <th Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="black" size="2">
          <?php if ($this->_tpl_vars['entry']['period_label'] != ""): ?>
           <?php echo $this->_tpl_vars['entry']['period_label']; ?>
<br>
          <?php endif; ?>
          <?php echo $this->_tpl_vars['entry']['period_start']; ?>
<br><?php echo $this->_tpl_vars['entry']['period_end']; ?>

         </font>
        </th>
        <?php endforeach; endif; unset($_from); ?>
       </tr>
       <?php $_from = $this->_tpl_vars['room_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['room']):
?>
       <tr>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['room']['room_label']; ?>

         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['room']['room_desc']; ?>

         </font>
        </td>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          <?php echo $this->_tpl_vars['room']['room_maxcap']; ?>

         </font>
        </td>
        <?php $_from = $this->_tpl_vars['room']['room_prices']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['prices']):
?>
        <td align="left" vAlign="top" bgcolor="#FFFFEA" nowrap>
        <?php $_from = $this->_tpl_vars['prices']['pax']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['entry']):
?>
         <?php if ($this->_tpl_vars['key'] != '1'): ?>
          <?php if ($this->_tpl_vars['key'] == '2'): ?>
           <span style="font-family: Arial; font-size:10pt; color: red; font-weight: bold"><?php else: ?><span   style="font-family: Arial; font-size:9pt; color: darkgreen"><?php endif; ?>
           <?php echo $this->_tpl_vars['key']; ?>
: <?php echo $this->_tpl_vars['entry']['price_amount']; ?>
<br />
           </span>
         <?php endif; ?>
        <?php endforeach; endif; unset($_from); ?>
        <?php if ($this->_tpl_vars['prices']['minstay'] != 0): ?>
          <span style="font-family: Arial; font-size:9pt; color: darkred; font-weight: bold"><?php echo $this->_tpl_vars['prices']['minstay']; ?>
 day min</span>
        <?php endif; ?>
        </td>
       <?php endforeach; endif; unset($_from); ?>
       </tr>
      <?php endforeach; endif; unset($_from); ?>
      </table>
     </div>

     <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>