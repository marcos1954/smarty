{strip}
{include file=$headerfilename}
     	<div id="main_content">
 		  <div id="Listing_full_content">
     	    <hr style="margin: 6px 0px 6px 0px;" />
			<div id="Listing_header">
			  <div class="listinglogo">
                      {if $list_src != ''}
                       <img border="0"
			                src="{$list_src}"
			                width="{$list_width}"
			                height="{$list_height}"
			                align="left">
                      {else}
                        &nbsp;
                      {/if}
               </div>
               <div class="listing_info">
                 	<p class="listing_name">{$list_name}</p>
     				<p class="listing_address">
     					{$list_addr1}
     					{if $list_addr2 != ''}
     						<br /> {$list_addr2}
     					{/if}
     					{if $list_addr3 != ''}
     						<br /> {$list_addr3}
     					{/if}
     					{if $list_phone != ''}
     						<br /> Tel. {$list_phone}
     					{/if}
     					<br />
                        {if $list_url != ''}
     	                    <a class="listlink" href="{$list_url}">{$website}</a>&nbsp;&nbsp;
     	                {/if}
     	               {if $list_rows_cal != array()}
     	                	<a class="listlink" href="#Calendar">{$calendar}</a>
     	                {/if}
     				</p>

     			</div>
                <br clear="left" />
     		</div>  <!-- end of Listing_header -->

     		<div class="full_listing" style="padding: 0px 10px 0px 10px;" >
     		<p>{$list_desclong|nl2br}
     		</p>
     	 	</div>

     	 	{if $list_rows_cal != array()}
     	 	<a name="Calendar"></a>
     	 		<h2>Events Calendar</h2>
 				{foreach from=$list_rows_cal item="entry"}
					<div  style="padding: 10px;"  {if $entry.moreEventLinkHref != ''} onclick="location.href='{$entry.moreEventLinkHref}';"  style="cursor:pointer;" {/if}>
 					{if $entry.moreEventLinkHref != ''}
    					 <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     						<a href="{$entry.moreEventLinkHref}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     					</div>
    				{/if}
					<strong>{$entry.category_name}</strong>
					<br />
					{if $entry.nameEvent != ''}{$entry.nameEvent}
					<br />{/if}<br />
					{if $entry.timesEvent != ''}<strong>{$entry.timesEvent}</strong>
					<br />{/if}
					{$entry.event_recurs}
					<br />

					<br />
					{$entry.descEvent}
					<br />
					</div>
					<hr />
				{/foreach}
			{/if}
     	</div>
     	{if $list_map != ''}
     	<br />
     	<H2>Location</H2>
			 <center><a href="{$list_mapbig}"><img width="320" height="480" src="{$list_map}" /></a></center>
			 <br />
     	{/if}
     </div>
     <!------- end of core ------->
{/strip}
{include file="m10_footer.tpl}