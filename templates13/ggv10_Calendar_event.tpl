{*debug*}
{config_load file="ggv_search.conf"}
{include file=$headerfilename}
 	<div id="Listing_right_column_pix">
 				<p>
 					{if $biz_map != ''}
			  			<a href="{$biz_mapbig}"><img width="200" height="300" src="{$biz_map}" /></a>
			  			<br />
     		  		{/if}
					{if $event_video == ''}
						{if $event_pix1_src != ''}
							<img border="0" src="{$event_pix1_src}">
						{/if}
						{if $event_pix2_src != ''}
							<br />
							<img border="0" src="{$event_pix2_src}">
						{/if}
						{if $event_pix3_src != ''}
							<br />
							<img border="0" src="{$event_pix3_src}">
						{/if}
					{/if}
			  	</p>
			  	<p>&nbsp;</p>
	</div>

    <div id="main_content">
			 <table align="center" cellspacing="20">
			 <tr><td valign="top">
	 		  {if $event_src != ''}
		     	<img border="0" src="{$event_src}" width="{$event_width}" height="{$event_height}" align="left">
		   	  {else}
		     	&nbsp;
		   	  {/if}
			  </td><td>
				<p style="text-align: left;" ><font face="Arial" color="#0099CC" size="5"><b>{$biz_name}
				{if $biz_name != $event_name}<br /><br />{$event_name}{/if}</b></font>
				<br /><br />
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
     			<br />
     			<br /><a href="{$listinfo_url}"><small>{$list_more_url}</small></a>
				{if $event_url != ''}
					<br /><a href="{$event_url}"><small>{$Website}</small></a>
				{/if}
				<br>
				<a  href="{$event_cal_url}"><small>{$Calendar}</small></a>
				<br />
				{if $category_name != ''}<br><span class="eventcategory">{$category_name}&nbsp;</span><br>{/if}
                
                {foreach from=$dates item="dateblock"}
                
                    <span class="eventtimes">
                    <br>
                        @ {$dateblock.event_location}
                    <br>
                    <strong>
                        {if $dateblock.day_event == 0}
                            {$dateblock.event_times}
                        {else} 
                            {$dateblock.all_day_event}
                        {/if}</strong> 
                    &nbsp;
                    {$dateblock.event_recurs}
                    <br>
                    </span>
                
                
                
                {/foreach}
                
				</p>
				<p class="eventdescshort">{$event_desc_short|nl2br}</p>
			  </td></tr>
			  </table>

			  <br clear="left">
						
			  {if $event_video != ''}
			  <br clear="all">
			  <div>{$event_video}</div>		
			  {/if}	
			  <p class="eventdesclong">
			  {$event_desclong|nl2br}
			  </p>
			  {if $event_flyer_src != ''}
			  <br />
			  		<p><center>
			  		<img border="0"  src="{$event_flyer_src}"  width="{$event_flyer_width}"  height="{$event_flyer_height}"  align="center"></center>
			  		</p>
			  		{/if}
			  <br clear="all">

	 </div>


{include file="ggv10_footer.tpl"}