<?php /* Smarty version 2.6.27, created on 2014-01-29 11:23:12
         compiled from a10_Calendar_month.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'a10_Calendar_month.tpl', 2, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_dayCal.conf"), $this);?>

<html>
<head>
<?php echo $this->_tpl_vars['headerExtra']; ?>

</head>
<body>
<?php echo '<div style="width: '; ?><?php echo $this->_tpl_vars['tablewidth']; ?><?php echo '"><div style="text-align: center; "><form name="jump-category" >'; ?><?php echo $this->_tpl_vars['hidden_fields']; ?><?php echo '<div id="catselectdiv" style="float: left;">'; ?><?php echo $this->_tpl_vars['select_category_html']; ?><?php echo '</div><div style="float: right;"><div style="float:left;  width: 36px; padding: 6px 5px  0px 0 ;" ><img id="loading" style="display:none;" src="'; ?><?php echo $this->_tpl_vars['loading']; ?><?php echo '" /></div>'; ?><?php echo $this->_tpl_vars['select_date_html']; ?><?php echo '</div><div id="ggv_cal_controlbar" style="width: '; ?><?php echo $this->_tpl_vars['tablewidth']; ?><?php echo 'px !important;"><span link="'; ?><?php echo $this->_tpl_vars['prev_month_href']; ?><?php echo '" class="ajaxlink"><img height=24 width=24   style="padding-left: 0px;" border="0"  src="http://www.gayguidevallarta.com/Calendar/Images/rewind.png"></span><span class="dayviewdate">&nbsp;'; ?><?php echo $this->_tpl_vars['this_month']; ?><?php echo ' '; ?><?php echo $this->_tpl_vars['this_year']; ?><?php echo '&nbsp;</span><span link="'; ?><?php echo $this->_tpl_vars['next_month_href']; ?><?php echo '" class="ajaxlink"><img height=24 width=24  style="padding-left: 0px;"  border="0"  src="http://www.gayguidevallarta.com/Calendar/Images/forward.png"></span></div></form>'; ?><?php echo $this->_tpl_vars['month_calendar']; ?><?php echo '</div></div>'; ?>