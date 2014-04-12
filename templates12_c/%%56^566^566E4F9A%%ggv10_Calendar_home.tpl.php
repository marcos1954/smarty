<?php /* Smarty version 2.6.27, created on 2014-04-07 17:41:02
         compiled from ggv10_Calendar_home.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_Calendar_home.tpl', 3, false),)), $this); ?>

<?php echo smarty_function_config_load(array('file' => "ggv_dayCal.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="topcontent">
	
	<div style="float: right; display: inline; margin-right: 10px; width: 150px; background-color: white; margin-left: 20px; padding: 10px; text-align: center; line-height: 1.8em; border: solid black 1px;">
		<span style="font-family: Arial; font-size: 12pt; font-weight: bold; color: red;">
		<?php echo $this->_tpl_vars['CAL_HOME_MORECALINFO_TITLE']; ?>

		</span>	
		<span style="font-family: Arial; font-size: 10pt; font-weight: normal"><br>
			<a href="<?php echo $this->_tpl_vars['URL_TODAYS_CALENDAR']; ?>
"><?php echo $this->_tpl_vars['TodaysCalendar']; ?>
</a><br>
			<a href="<?php echo $this->_tpl_vars['URL_MONTH_CALENDAR']; ?>
"><?php echo $this->_tpl_vars['MonthlyCalendar']; ?>
</a><br>
			<a href="<?php echo $this->_tpl_vars['URL_PDF_CALENDAR']; ?>
"><?php echo $this->_tpl_vars['PrintableCalendar']; ?>
</a>
		</span>
	</div>
	<h1><?php echo $this->_tpl_vars['H1']; ?>
</h1>
	<h2><?php echo $this->_tpl_vars['H2']; ?>
</h2>	
	<?php echo $this->_tpl_vars['topcontent']; ?>

</div>  <!-- end topcontent -->
		
<div id="Listing_right_column_pix" style="background-color: none;"> 
				
				<div style="margin-left: 14px;"	>
				<a href="../pdf" title="Print your calendar" ><img src="../includes/Images/print_your_calendar.gif" alt="Print your calendar" /></a>
				</div>	
				
				<!---
				<div style="width: 173px; background-color: white; margin-left: 15px;  text-align: left; line-height: 1.1em; border: solid black 1px;">

					<p style="font-size:11px; padding:12px">
					<b>More Detailed Calendar Info</b>
					<br /><br />
					Our calendar system has detailed information on everything we can find about upcoming Vallarta events.  
					From the happy hours and drink specials to the show schedules, gay tours, major holidays, etc. 
					you'll find all the details in our daily and monthly calendars.
					<br /><br />
					You'll find detailed information about today's events
					<a href="<?php echo $this->_tpl_vars['URL_TODAYS_CALENDAR']; ?>
">here</a>.
					<br /><br />
					You'll find a detailed monthly calendar of events  
					<a href="<?php echo $this->_tpl_vars['URL_MONTH_CALENDAR']; ?>
">here</a>.
					<br /><br />
					And, you'll find a detailed and compact printout of everything going on during your vacation
					<a href="<?php echo $this->_tpl_vars['URL_PDF_CALENDAR']; ?>
">here</a>.
					</p>
				</div>
				-->

				<br clear="all" />

				<br />
				<div style="width: 180; margin-left:14px;">
					<?php $_from = $this->_tpl_vars['ads180x400']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['ad']):
?>
						<?php echo $this->_tpl_vars['ad']; ?>
<br />
					<?php endforeach; endif; unset($_from); ?>
				</div>
</div>
		
<div id="main_content"  >
		<table cellspacing="0" cellpadding="0">
		<tr valign="top">
		<td width="510">
			<!----begin loop of items ---->
			<?php if ($this->_tpl_vars['major_events'] == NULL): ?>
				<hr>
				Sorry, no major events in our database.
			<?php endif; ?>
			
			<?php $_from = $this->_tpl_vars['major_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
				<hr>
			
				<table><tr>
				<td width="120" valign="top" rowspan="2">
					<?php if ($this->_tpl_vars['evnt']['logosrc'] != ''): ?>
						<img border="0" src="<?php echo $this->_tpl_vars['evnt']['logosrc']; ?>
" width="<?php echo $this->_tpl_vars['evnt']['logowidth']; ?>
" height="<?php echo $this->_tpl_vars['evnt']['logoheight']; ?>
" align="left">
					<?php endif; ?>
				</td>
				<td class="dayeventname" height="20%" align="left">
					<b><?php echo $this->_tpl_vars['evnt']['event_name']; ?>
</b>
					<?php if ($this->_tpl_vars['evnt']['event_location'] != ''): ?>
						<br><span class="eventdaylocation">  &nbsp;&nbsp;at <?php echo $this->_tpl_vars['evnt']['event_location']; ?>
</span>
					<?php endif; ?>
				</td>
				</tr><tr>
				<td class="eventdaytime" valign=top height="80%">
					<?php if ($this->_tpl_vars['evnt']['event_dates'] != ''): ?>
						<span class="eventtimes"><?php echo $this->_tpl_vars['evnt']['event_dates']; ?>
</span><br /><br />
					<?php endif; ?>
					<?php if ($this->_tpl_vars['evnt']['event_catname'] != ''): ?>
						 <b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['event_catname']; ?>
</span></b> &nbsp;&nbsp;
					<?php endif; ?>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<?php if ($this->_tpl_vars['evnt']['URL_event_more_info'] != ''): ?>
						<a class="morelink" href="<?php echo $this->_tpl_vars['evnt']['URL_event_more_info']; ?>
"><?php echo $this->_tpl_vars['MOREINFO']; ?>
</a>&nbsp;
					<?php endif; ?>
					<br /><br />
					<?php if ($this->_tpl_vars['evnt']['event_description'] != ''): ?>	
						<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['event_description']; ?>
</span>
					<?php endif; ?>
					&nbsp;
				</td>
				</tr></table>
			
			<?php endforeach; endif; unset($_from); ?>
			<!----end loop of items ---->    
			<hr>     

		</td>
		</tr></table>
<br clear="all">
</div> 

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>