
{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}

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
	
<div id="main_content"  >
		<table cellspacing="0" cellpadding="0" class="calHome">
		<tr valign="top">
		<td width="100%">
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
				<td class="dayeventname" height="20%" align="left">
					<b>{$evnt.event_name}</b>
					{if $evnt.event_location != ''}
						<br><span class="eventdaylocation">  &nbsp;&nbsp;at {$evnt.event_location}</span>
					{/if}
				</td>
				</tr><tr>
				<td class="eventdaytime" valign=top height="80%">
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
{include file="ggv10_footer.tpl"}