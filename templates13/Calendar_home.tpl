{*debug*}
{config_load file="ggv_dayCal.conf"}
{include file="ggv_header.tpl"}
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="{#PAGEWIDTH#}"><tr>
<td width=100 valign=top nowrap>
	{include file="ggv_menu.tpl"}
</td>
<td width=100% valign=top align=left>

	<table bgcolor="#FFF4E0" valign="top" width="100%" height="600" border="0" cellpadding="20" cellspacing="0"><tr>
	<td  valign="top" >
		<h1><center>
			Gay Puerto Vallarta
			<br />
			Upcoming Events
		</center></h1>
		<br />
		
		<table width="100%" border="0"><tr>
		<td width="85%" align="left" valign="top">
			<p>The Gay Vallarta annual calendar features 
			many special events both gay and not.  
			We've got everything from circuit parties 
			to the gay and lesbian cruises doing 
			that classic <em>"Love Boat"</em> 
			run to Puerto Vallarta.  The leather and 
			bear crowd visits annually.  
			And, now Vallarta has a blossoming 
			lesbian event calendar, too, with Vallarta Heat,
			a spring lesbian event, as well as 
			Women's Week in the fall.</p>
		
			<p>Vallarta's very busiest times are during
			the USA Thanksgiving holiday late in November, 
			Christmas and New Years weeks, February, 
			and Easter week (locally called Semana Santa).</p>
		
			<p>These are just the upcoming highlights, 
			so check out the other calendar views of 
			our database.</p>
		</td>
		<td nowrap width="15%" align="right" valign="top">
			<span style="font-family: Arial; font-size: 10pt; font-weight: bold">
			Other Detailed<br>Calendar Info
			</span>
			
			<span style="font-family: Arial; font-size: 10pt; font-weight: normal"><br>
			<a href="{$URL_TODAYS_CALENDAR}">Today's Calendar</a><br>
			<a href="{$URL_MONTH_CALENDAR}">Monthly Calendar</a><br>
			<a href="{$URL_PDF_CALENDAR}">Printable Calendar</a>
			</span>
		</td>
		</tr></table>
	
		<table>
		<tr valign="top">
		<td width="80%">
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
						<a class="morelink" href="{$evnt.URL_event_more_info}">more info</a>&nbsp;
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
		<!--- begin second column of main area --->
		<td valign="top" width="200">
			<div>
			
				<table align="center"  border="0" cellspacing="0" cellpadding="5"><tr>
				<td bgcolor="ivory">
					<p style="font-size:8pt; padding:4pt">
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
				</td>
				</tr></table>  
				   
				<br />
				
				<table bgcolor="ivory" width="200"><tr>
				<td align="center">
					<h3>Print your own vacation calendar!</h3>
					<a	href="{$URL_PDF_CALENDAR}" title="get your own printed listing of all the events, specials, and show times during your vacation stay.">
					<p style="font-size:8pt; padding:4pt">
					<b>Put in YOUR vacation dates<br />
					and get OUR event listing<br />
					for YOUR vacation!</b></p></a>
					<a	href="{$URL_PDF_CALENDAR}" 
					  title="get your own printed listing of all the events, specials, and show times during your vacation stay.">
						<img src="/Calendar/Images/thisWeek.gif" >
					</a>
					</p>
				</td>
				</tr></table>
				
				<br />
				<center> 
					{foreach from=$ads180x400 item=ad}
						{$ad}<br /><br />
					{/foreach}
				</center>
			</div>
		</td>
		</tr></table>
		
	</td>
	</tr></table>
	
</td>
</tr></table>
<br clear="all">
</center>
{include file="ggv10_footer.tpl"}