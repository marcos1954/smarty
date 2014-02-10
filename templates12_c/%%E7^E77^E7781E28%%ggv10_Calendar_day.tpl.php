<?php /* Smarty version 2.6.27, created on 2014-02-05 10:16:02
         compiled from ggv10_Calendar_day.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'config_load', 'ggv10_Calendar_day.tpl', 1, false),)), $this); ?>
<?php echo smarty_function_config_load(array('file' => "ggv_dayCal.conf"), $this);?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['headerfilename'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id="topcontent">
		<h1><?php echo $this->_tpl_vars['H1']; ?>
</h1>

		<div style="padding: 0px 0px 0px 20px;">
			<table  border="0">
	  			<tr>
					<td width=170 height=160 align="center" nowrap valign="top">
						<div ><img style="padding: 0 !important;" src="Images/Lobby-Sunset-Rain.jpg" width=170 height=130 /></div>
						<center>
							<span class="eventdaysunset" style="color:black;">
								View Sunset today at
						<br />
								Signature Lounge
		 					<br />
		 					<?php echo $this->_tpl_vars['sunset_today']; ?>
.</span>
						</center>
					</td>
					<td width="360" align="center" valign="bottom" nowrap><br />
	 					<a href="<?php echo $this->_tpl_vars['yesterdayHREF']; ?>
"><img style="padding-left: 0px;" class="buttons" border="0"   src="Images/leftbutton.gif"  width="10" height="15"></a>
	 						&nbsp;
	 					<span class="dayviewdate"><?php echo $this->_tpl_vars['dateformatted']; ?>
</span>
	 						&nbsp;
	 					<a href="<?php echo $this->_tpl_vars['tommorrowHREF']; ?>
"><img style="padding-left: 0px;"  class="buttons" border="0"   src="Images/rightbutton.gif" width="10" height="15"></a>
							<br /><br />
		 					<?php echo $this->_tpl_vars['date_picker']; ?>

					</td>

					<td nowrap width="170" align="right" valign="bottom">
						<span style="font-family: Arial; font-size: 10pt; font-weight: bold">
						Other Calendar Info</span><span style="font-family: Arial; font-size: 10pt; font-weight: normal"><br>
						<?php echo $this->_tpl_vars['monthlyCalendarLink']; ?>

						<br>
						<?php echo $this->_tpl_vars['pdfCalendarLink']; ?>

						</span>
					</td>
	  			</tr>
			</table>
		</div>
</div>


<br clear="all" />
<br class="clearfloats" />


<div id="main_content">
	<div id="calday_leftcolumn">
				<?php if (! ( $this->_tpl_vars['special_events'] == NULL )): ?>
				 <h4><?php echo $this->_tpl_vars['transSpecialEvent']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['special_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?>
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span>
							<?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
						<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

				<?php if (! ( $this->_tpl_vars['tour_events'] == NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transGayToursToday']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['tour_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?>
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span>
							<?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
						<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

				<?php if (! ( $this->_tpl_vars['today_events'] == NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transEventsNoStartTime']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['today_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?>
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span>
							<?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
						<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

				<?php if (! ( $this->_tpl_vars['events'] == NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transEventsByStartTime']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?><span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span><?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

				<?php if (! ( $this->_tpl_vars['restaurant_events'] == NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transRestaurantSpecials']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['restaurant_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?><span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span><?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>







				<?php if (! ( $this->_tpl_vars['closed_list'] == NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transClosedToday']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['closed_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</b>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

	</div>

	<div id="calday_rightcolumn">

				<?php if (( $this->_tpl_vars['bars_events'] != NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transBarSpecialsToday']; ?>
</h4>

				  <?php $_from = $this->_tpl_vars['bars_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?>
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span>
							<?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

				<?php if (( $this->_tpl_vars['bars_events'] != NULL ) || ( $this->_tpl_vars['happy_events'] != NULL )): ?>
				  <h4><?php echo $this->_tpl_vars['transHappyHoursToday']; ?>
</h4>
				  <?php $_from = $this->_tpl_vars['happy_events']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['evnt']):
?>
					<?php echo $this->_tpl_vars['evnt']['eidAnchor']; ?>

					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b><?php echo $this->_tpl_vars['evnt']['nameEvent']; ?>
</b>
							<?php if ($this->_tpl_vars['evnt']['locationEvent'] != ''): ?>
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ <?php echo $this->_tpl_vars['evnt']['locationEvent']; ?>
</span>
							<?php endif; ?>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat"><?php echo $this->_tpl_vars['evnt']['catnameEvent']; ?>
</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<?php echo $this->_tpl_vars['evnt']['moreEventLink']; ?>
 <br />
	 						<?php if ($this->_tpl_vars['evnt']['timesEvent'] != ''): ?>
	 							<span class="eventdaytime"><?php echo $this->_tpl_vars['evnt']['timesEvent']; ?>
 <br></span>
	 						<?php endif; ?>
							<span class="eventdaydesc"><?php echo $this->_tpl_vars['evnt']['descEvent']; ?>
</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  <?php endforeach; endif; unset($_from); ?>
				<?php endif; ?>

	</div> <!-- end right column of center -->
</div>  <!-- end center -->
<!-- end core -->

<?php if (! ( $this->_tpl_vars['ads180x400'] == NULL )): ?>
	<div id="ads180x400">
		<a href="../pdf" title="Print your calendar" ><img src="../includes/Images/print_your_calendar.gif" alt="Print your calendar" /></a>
		<br /><br />
		<?php $_from = $this->_tpl_vars['ads180x400']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['ad']):
?>
			<?php echo $this->_tpl_vars['ad']; ?>

			<br /><br />
		<?php endforeach; endif; unset($_from); ?>
	</div>
<?php else: ?>
    <p>
     	<img 	src="<?php echo $this->_tpl_vars['DIR_WS_BASE']; ?>
includes/Images/GayGuideVallarta_r2_c3.gif"  id="GayGuideVallarta_r2_c3"  alt="" />
    </p>
<?php endif; ?>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "ggv10_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>