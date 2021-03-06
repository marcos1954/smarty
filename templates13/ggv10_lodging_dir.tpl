{include file=$headerfilename}
<div id="topcontent" >
	<h1>{$LODGING_DIR_TITLE}</h1>
	{$LODGING_DIR_TEXT}
</div>

<div id="main_content">
	{foreach from=$premium_listings item="entry"}
		<div  class="listing_box"  onclick="location.href='{$entry.lodging_url}';">
			<div class="listinglogo">
			  <a name="{$entry.list_dirref}"></a>
			  {if $entry.lodging_logo_src != ''}
			   <img border="0" src="../Listings/{$entry.lodging_logo_src}" width="{$entry.lodging_logo_width}" height="{$entry.lodging_logo_height}" align="left">
			  {else}
				&nbsp;
			  {/if}
			</div>
			<div class="listing_info">
				{if $entry.list_tagsicons != '' || $entry.EDIT != '' || $entry.list_fb_url != '' || $entry.list_ta_url != '' || $entry.list_ta_url != ''|| $entry.lodging_www_url != ''}
						 
					<div class="tagicons" >
						{if $entry.EDIT != ''}<a href="{$entry.EDIT}">EDIT</a> &nbsp;{/if}
						
					   {$entry.list_tagsicons}
					   {if $entry.list_fb_url}<a  class="trackLink" data-listname="{$entry.hotel_name} : facebook"  href="{$entry.list_fb_url}"><img  class="tagicon" src="/images/facebookIcon.png" title="Listed on Facebook" /></a>{/if}
					   {if $entry.list_tw_url}<a  class="trackLink" data-listname="{$entry.hotel_name} : twitter"  href="{$entry.list_tw_url}"><img  class="tagicon" src="/images/twitter.png" title="Listed on Twitter" /></a>{/if}
					   {if $entry.list_ta_url}<a  class="trackLink" data-listname="{$entry.hotel_name} : tripadvisor"  href="{$entry.list_ta_url}"><img  class="tagicon" src="/images/tripadvisor2.png" title="Reviewed on Tripadvisor" /></a>{/if}
					   {if $entry.lodging_www_url}<a  class="trackLink" data-listname="{$entry.hotel_name} : website"  href="{$entry.lodging_www_url}"><img  class="tagicon" style="margin:1px;"src="/images/www.png" title="Has a Website" /></a>{/if}
		  
					   {if $list_lastupdate != '' && $EDIT != ''}
						   <div style="text-align: center; color: gray; font-size: .8em;" >{$list_lastupdate}</div>
					   {/if}
					</div>
				{/if}
				<p class="listing_name">{$entry.hotel_name}</p>
				<p class="listing_tag">{$entry.hotel_tag}</p>
				 
				{if $entry.listing_from_date != '' && $entry.listing_to_date}
					<p class="tags">{$entry.listing_from_date} until {$entry.listing_to_date}</p>
				{/if}
				 
				{if $entry.list_tags != '' || $entry.features != ''}
					<p class="tags" >
						{if $entry.list_tags != ''}{$entry.list_tags}{/if}
						{if $entry.list_tags != '' && $entry.features != ''}, {/if}
						{if $entry.features != ''}{$entry.features}{/if}
					</p>
				{/if}
				
				{if $entry.lodging_more_url != ''}
					<p style="margin-top: 4px;" ><a class="listlink" href="{$entry.lodging_more_url}">{$entry.lodging_url_text}</a></p>
				{/if}
				
				<p class="descShort">{$entry.lodging_descshort|nl2br}</p>
			</div>
			<br clear="left" />
			<br />
		</div>
	{/foreach}
	<br clear="all"  />
</div>
{include file="ggv10_footer.tpl"}


