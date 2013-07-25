{*debug*}

{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}

{*strip*}
<div id="topcontent">
	
	<div style="float: right; display: inline; margin-right: 10px; width: 150px; background-color: white; margin-left: 20px; padding: 10px; text-align: center; line-height: 1.8em; border: solid black 1px;">
		<span style="font-family: Arial; font-size: 12pt; font-weight: bold; color: red;">
		{$CAL_HOME_MORECALINFO_TITLE}
		</span>	
		<span style="font-family: Arial; font-size: 10pt; font-weight: normal"><br>
			<a href="{$URL_TODAYS_CALENDAR}">{$TodaysCalendar}</a><br>
			<a href="{$URL_MONTH_CALENDAR}">{$MonthlyCalendar}</a><br>
			<a href="{$URL_PDF_CALENDAR}">{$PrintableCalendar}</a>
		</span>
	</div>
	<h1>{$H1}</h1>
	<h2>{$H2}</h2>	
	{$topcontent}
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
					<a href="{$URL_TODAYS_CALENDAR}">here</a>.
					<br /><br />
					You'll find a detailed monthly calendar of events  
					<a href="{$URL_MONTH_CALENDAR}">here</a>.
					<br /><br />
					And, you'll find a detailed and compact printout of everything going on during your vacation
					<a href="{$URL_PDF_CALENDAR}">here</a>.
					</p>
				</div>
				-->

				<br clear="all" />

				<br />
				<div style="width: 180; margin-left:14px;">
					{foreach from=$ads180x400 item=ad}
						{$ad}<br />
					{/foreach}
				</div>
</div>
		
<div id="main_content"  >
		<table cellspacing="0" cellpadding="0">
		<tr valign="top">
		<td width="510">
			<!----begin loop of items ---->
			{if $major_events == NULL}
				<hr>
				Sorry, no major events in our database.
			{/if}
			
			{foreach from=$major_events item=evnt}
				<hr>
			
				<table><tr>
				<td width="120" valign="top" rowspan="2">
					{if $evnt.logosrc != ''}
						<img border="0" src="{$evnt.logosrc}" width="{$evnt.logowidth}" height="{$evnt.logoheight}" align="left">
					{/if}
				</td>
				<td class="dayeventname" height="1%" align="left">
					<b>{$evnt.event_name}</b>
					{if $evnt.event_location != ''}
						<span class="eventdaylocation">  &nbsp;&nbsp;at {$evnt.event_location}</span>
					{/if}
				</td>
				</tr><tr>
				<td class="eventdaytime" valign=top height="99%">
					{if $evnt.event_dates != ''}
						<span class="eventtimes">{$evnt.event_dates}</span><br /><br />
					{/if}
					{if $evnt.event_catname != ''}
						 <b><span class="eventdaycat">{$evnt.event_catname}</span></b> &nbsp;&nbsp;
					{/if}
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					{if $evnt.URL_event_more_info != ''}
						<a class="morelink" href="{$evnt.URL_event_more_info}">{$MOREINFO}</a>&nbsp;
					{/if}
					<br /><br />
					{if $evnt.event_description != ''}	
						<span class="eventdaydesc">{$evnt.event_description}</span>
					{/if}
					&nbsp;
				</td>
				</tr></table>
			
			{/foreach}
			<!----end loop of items ---->    
			<hr>     

		</td>
		</tr></table>
<br clear="all">
</div> 
{*/strip*}

{include file="ggv10_footer.tpl"}