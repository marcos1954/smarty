{strip}
{config_load file="ggv_dayCal.conf"}
{include file="ggv_header.tpl"}
<center>
<table border="0" cellpadding="0" cellspacing="0" width="{#PAGEWIDTH#}">
  <tr>
    <td width="100" valign="top">
    	{include file="ggv_menu.tpl"}
	</td>
    <td width="100%" valign="top">
      <table bgcolor="#FFF4E0" valign="top" width="100%" height="600" border="0"
        cellpadding="20" cellspacing="0">
         <tr>
           <td  valign="top" ><h1><center>Gay Vallarta Events</center></h1>
			<table width="100%" border="0">
	  			<tr>
					<td width="170" height="100" background="Images/sunset_bgrnd.jpg" align="left" valign="bottom">
						<center>
							<span class="eventdaysunset" style="color:yellow;">
		 					Sunset today<br>
		 					at {$sunset_today}.</span>
						</center>
					</td>
					<td width="310" align="center" valign="bottom" nowrap><br />
	 						<a href="{$yesterdayHREF}"><img border="0"   src="Images/leftbutton.gif"  width="10" height="15"></a>
	 						&nbsp;
	 						<span class="dayviewdate">{$dateformatted}</span>
	 						&nbsp;
	 						<a href="{$tommorrowHREF}"><img border="0"   src="Images/rightbutton.gif" width="10" height="15"></a>
							<br /><br />
		 					{$date_picker}
					</td>
		
					<td nowrap width="170" align="right" valign="center">
						<span style="font-family: Arial; font-size: 10pt; font-weight: bold">
						Other Calendar Info</span><span style="font-family: Arial; font-size: 10pt; font-weight: normal"><br>
						{$monthlyCalendarLink}
						<br>
						{$pdfCalendarLink}
						</span>
					</td>
	  			</tr>
			</table>
			<br /><br />
			<table border=0 cellspacing="10"><tr>
			
				<td valign="top" width="40%">
				{if not ($special_events == NULL) }
				  <h4>Special Events Today</h4>
				  {foreach from=$special_events item=evnt}
					{$evnt.eidAnchor}
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.nameEvent}</b>
							{if $evnt.locationEvent != ''}
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
							{/if}
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
						<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

				{if not ($tour_events == NULL) }
				  <h4>Gay Tours Today</h4>
				  {foreach from=$tour_events item=evnt}
					{$evnt.eidAnchor}
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.nameEvent}</b>
							{if $evnt.locationEvent != ''}
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
							{/if}
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
						<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}
				
				{if not ($today_events == NULL) }
				  <h4>Events with No Start Time</h4>
				  {foreach from=$today_events item=evnt}
					{$evnt.eidAnchor}
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.nameEvent}</b>
							{if $evnt.locationEvent != ''}
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
							{/if}
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
						<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}
				
				{if not ($events == NULL) }
				  <h4>Events by Start Time</h4>
				  {foreach from=$events item=evnt}
					{$evnt.eidAnchor}
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.nameEvent}</b>
							{if $evnt.locationEvent != ''}<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ {$evnt.locationEvent}</span>{/if}
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}
				
				{if not ($closed_list == NULL) }
				  <h4>Closed Today</h4>
				  {foreach from=$closed_list item=evnt}
					{$evnt.eidAnchor}
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.locationEvent}</b>
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}
				
				</td><td valign="top" width="40%">

				{if ($bars_events != NULL) }
				  <h4>Specials in the Bars Today</h4>				

				  {foreach from=$bars_events item=evnt}
					{$evnt.eidAnchor}	
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.nameEvent}</b>
							{if $evnt.locationEvent != ''}
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
							{/if}
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}
			
				{if ($bars_events != NULL) || ($happy_events != NULL) }
				  <h4>Today's Happy Hours</h4>				
				  {foreach from=$happy_events item=evnt}
					{$evnt.eidAnchor}
					<table><tr>
						<td class="dayeventname" height="1%" align="left">
							<b>{$evnt.nameEvent}</b>
							{if $evnt.locationEvent != ''}
								<span class="eventdaylocation"><br />  &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
							{/if}
						</td>
					</tr><tr>
						<td class="eventdaytime" valign=top height="99%">
							<div style="margin-left:10pt">
							<b><span class="eventdaycat">{$evnt.catnameEvent}</span></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							{$evnt.moreEventLink} <br />
	 						{if  $evnt.timesEvent != ''} 
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

			</td><td valign="top" width="20%">
			<!-- begin ads -->
				{foreach from=$ads180x400 item=ad}
					{$ad}<br /><br />
				{/foreach}
			<!-- end ads --->
			</td></tr></table>
		</td>
       </tr>
     </table>
    </td>
  </tr>
</table>
</center>
{include file="ggv_footer.tpl"}
{/strip}
{*debug*}   