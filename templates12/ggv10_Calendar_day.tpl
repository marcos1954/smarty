{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}
<div id="topcontent">
		<h1>{$H1}</h1>

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
		 					{$sunset_today}.</span>
						</center>
					</td>
					<td width="360" align="center" valign="bottom" nowrap><br />
	 					<a href="{$yesterdayHREF}"><img style="padding-left: 0px;" class="buttons" border="0"   src="Images/leftbutton.gif"  width="10" height="15"></a>
	 						&nbsp;
	 					<span class="dayviewdate">{$dateformatted}</span>
	 						&nbsp;
	 					<a href="{$tommorrowHREF}"><img style="padding-left: 0px;"  class="buttons" border="0"   src="Images/rightbutton.gif" width="10" height="15"></a>
							<br /><br />
		 					{$date_picker}
					</td>

					<td nowrap width="170" align="right" valign="bottom">
						<span style="font-family: Arial; font-size: 10pt; font-weight: bold">
						Other Calendar Info</span><span style="font-family: Arial; font-size: 10pt; font-weight: normal"><br>
						{$monthlyCalendarLink}
						<br>
						{$pdfCalendarLink}
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
				{if not ($special_events == NULL) }
				 <h4>{$transSpecialEvent}</h4>
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
							
	 						{if  $evnt.timesEvent != ''}
	 							<br /><span class="eventdaytime">{$evnt.timesEvent} </span>
	 						{/if}<br />
							{$evnt.moreEventLink} 
                            {if  $evnt.descEvent != ''}
                                <br><span class="eventdaydesc">{$evnt.descEvent}</span>
                            {/if}
						</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

				{if not ($tour_events == NULL) }
				  <h4>{$transGayToursToday}</h4>
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
							 <br />
	 						{if  $evnt.timesEvent != ''}
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							{$evnt.moreEventLink}<br />
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

				{if not ($today_events == NULL) }
				  <h4>{$transEventsNoStartTime}</h4>
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
							<br />
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
				  <h4>{$transEventsByStartTime}</h4>
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
							<br />
							
	 						{if  $evnt.timesEvent != ''}
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							{$evnt.moreEventLink} <br />
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

				{if not ($restaurant_events == NULL) }
				  <h4>{$transRestaurantSpecials}</h4>
				  {foreach from=$restaurant_events item=evnt}
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
							<br />
							
	 						{if  $evnt.timesEvent != ''}
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							{$evnt.moreEventLink} <br />
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}







				{if not ($closed_list == NULL) }
				  <h4>{$transClosedToday}</h4>
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
							<br />
							
	 						{if  $evnt.timesEvent != ''}
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							{$evnt.moreEventLink} <br />
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

	</div>

	<div id="calday_rightcolumn">

				{if ($bars_events != NULL) }
				  <h4>{$transBarSpecialsToday}</h4>

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
							<br />
							
	 						{if  $evnt.timesEvent != ''}
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							{$evnt.moreEventLink} <br />
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

				{if ($bars_events != NULL) || ($happy_events != NULL) }
				  <h4>{$transHappyHoursToday}</h4>
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
							<br />
							
	 						{if  $evnt.timesEvent != ''}
	 							<span class="eventdaytime">{$evnt.timesEvent} <br></span>
	 						{/if}
							{$evnt.moreEventLink} <br />
							<span class="eventdaydesc">{$evnt.descEvent}</span>
							&nbsp;</div>
						</td>
					</tr></table>
				  {/foreach}
				{/if}

	</div> <!-- end right column of center -->
</div>  <!-- end center -->
<!-- end core -->

{if not ($ads180x400 == NULL) }
	<div id="ads180x400">
		<a href="../pdf" title="Print your calendar" ><img src="../includes/Images/print_your_calendar.gif" alt="Print your calendar" /></a>
		<br /><br />
		{foreach from=$ads180x400 item=ad}
			{$ad}
			<br /><br />
		{/foreach}
	</div>
{else}
    <p>
     	<img 	src="{$DIR_WS_BASE}includes/Images/GayGuideVallarta_r2_c3.gif"  id="GayGuideVallarta_r2_c3"  alt="" />
    </p>
{/if}


{include file="ggv10_footer.tpl"}
{*debug*}