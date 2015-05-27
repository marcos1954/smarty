{include file=$headerfilename}
hello
		<div id="Listing_right_column_pix">
			  {if $list_map != ''}
			  	<center><span style="font-size: 9px;">{$list_map_explain}</span></center>

			  	<a href="{$list_mapbig}"><img width="200" height="300" src="{$list_map}" /></a>
			  	<br />
     		  {/if}
			  {if $list_pix1_src != ''}
			  	<img 	border="0" src="{$list_pix1_src}" width="{$list_pix1_width}" height="{$list_pix1_height}" >
			  	<br />
			  {/if}
			  {if $list_pix2_src != ''}
			  	<img 	border="0" src="{$list_pix2_src}" width="{$list_pix2_width}" height="{$list_pix2_height}" >
			  	<br />
			  {/if}
			  {if $list_pix3_src != ''}
			  	<img 	border="0" src="{$list_pix3_src}" width="{$list_pix3_width}" height="{$list_pix3_height}" >
			  	<br />
			  {/if}
			   {if $list_pix4_src != ''}
			  	<img 	border="0" src="{$list_pix4_src}" width="{$list_pix4_width}" height="{$list_pix4_height}" >
			  	<br />
			  {/if} {if $list_pix5_src != ''}
			  	<img 	border="0" src="{$list_pix5_src}" width="{$list_pix5_width}" height="{$list_pix5_height}" >
			  	<br />
			  {/if} {if $list_pix6_src != ''}
			  	<img 	border="0" src="{$list_pix6_src}" width="{$list_pix6_width}" height="{$list_pix6_height}" >
			  	<br />
			  {/if} {if $list_pix7_src != ''}
			  	<img 	border="0" src="{$list_pix7_src}" width="{$list_pix7_width}" height="{$list_pix7_height}" >
			  	<br />
			  {/if} {if $list_pix8_src != ''}
			  	<img 	border="0" src="{$list_pix8_src}" width="{$list_pix8_width}" height="{$list_pix8_height}" >
			  	<br />
			  {/if} {if $list_pix9_src != ''}
			  	<img 	border="0" src="{$list_pix9_src}" width="{$list_pix9_width}" height="{$list_pix9_height}" >
			  	<br />
			  {/if}

		</div>  <!---- end right column pix ---->


     	<div id="main_content">
 		  <div id="Listing_full_content">
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
     					{if $list_tags != ''}
     	                   <p style="font-family: sans-serif; font-style: italic; font-weight: bold; color: #3b3;">{$list_tags}</p>
     	                {/if}
     					<br />
                        {if $list_url != ''}
     	                    <a class="listlink" href="{$list_url}">{$website}</a>&nbsp;&nbsp;
     	                {/if}
     	                {if $list_url_cal != ''}
     	                	<a class="listlink" href="{$list_url_cal}">{$calendar}</a>
     	                {/if}
     				</p>
     			</div>
                <br clear="left" />
     		</div>  <!-- end of Listing_header -->
     		<p>{$list_desclong|nl2br}
     		</p>
     		<br clear="all" />

     		{if $list_rows_cal != array()}
     		<div style="width:90%; margin: auto; padding 10%;">
     	 	<a name="Calendar"></a>
     	 		<h2 >Events Calendar</h2>

 				{foreach from=$list_rows_cal item="entry"}
					<div  style="padding: 10px;border: 1px solid gray; ">

					<strong>{$entry.category_name}</strong>
					<br />
					{if $entry.nameEvent != ''}{$entry.nameEvent}
					<br />{/if}<br />
					{if $entry.timesEvent != ''}<strong>{$entry.timesEvent}</strong>
					<br />{/if}
					{$entry.event_recurs}
					<br />
					{if $entry.moreEventLink != ''}{$entry.moreEventLink}
					<br />{/if}<br />
					{$entry.descEvent}
					<br />
					</div>
					<!--- <hr />   --->
				{/foreach}
				</div>
			{/if}
     	 </div>
     </div>
{include file="ggv10_footer.tpl"}