{include file=$headerfilename}

<div id="Listing_right_column_pix">
	{if $biz_map != ''  &&  $event_gmap == ''}
		<div id="eventMapStatic">
			<a href="{$biz_mapbig}"><img width="250" height="300" src="{$biz_map}" /></a>
		</div>
	
	{elseif $event_gmap != ''}
		<div id="eventMapStatic">
			{$event_gmap }
		</div>
	{/if}
</div>

<div id="main_content">
	{if $category_name != ''}<div class="eventCat">{$category_name}&nbsp;</div>{/if}

	<div id="eventHeader">
		<div id="logo">
		  {if $event_src != ''}
			<img border="0" src="{$event_src}" width="{$event_width}" height="{$event_height}" >
		  {else}
			&nbsp;
		  {/if}
		</div>
	
		<div id="eventName">
			<p style="text-align: left;" ><font face="Arial" color="#0099CC" size="5"><b>{$biz_name}
			{if $biz_name != $event_name}<br /><br />{$event_name}{/if}</b></font>
		</div>
		
		<div id="eventAddress">
			{$biz_addr1}
			{if $biz_addr2 != ''}
				<br /> {$biz_addr2}
			{/if}
			{if $biz_addr3 != ''}
				<br /> {$biz_addr3}
			{/if}
			{if $biz_phone != ''}
				<br /> Tel. {$biz_phone}
			{/if}
		</div>
		
		<div id="eventURL">
			<a href="{$listinfo_url}">{$list_more_url}</a>
			{if $event_url != ''}
				<a href="{$event_url}">{$Website}</a>
			{/if}
			<a  class="eventCalLink" href="{$event_cal_url}">{$Calendar}</a>
		</div>
		
		<div id="eventDates">
						
			{foreach from=$dates item="dateblock"}
			
				<div class="eventTimes">
					{if $dateblock.event_location}
								<br>
								@ {$dateblock.event_location}
					{/if}
				<br>
				<strong>
					{if $dateblock.day_event == 0}
						{$dateblock.event_times}
					{else} 
						{$dateblock.all_day_event}
					{/if}
				</strong> 
				&nbsp;
				{$dateblock.event_recurs}
				<br>
				</div>
			{/foreach}
			
		</div>
		<div id="eventDescShort">{$event_desc_short|nl2br}</div>
	</div>
	<br>
				
	{if $event_video != ''}
		<br clear="right">
		<div>{$event_video}</div>		
	{/if}	
	<div id="eventDescLong">
		{$event_desclong|nl2br}
	</div>
	{if $event_flyer_src != ''}
		<div id="eventFlyerPix">
			  <img border="0"  src="{$event_flyer_src}"  />
		</div>
	{/if}
	<br clear="all">

</div>
{include file="ggv10_footer.tpl"}