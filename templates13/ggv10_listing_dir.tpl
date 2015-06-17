{include file=$headerfilename}

<div id="topcontent" >
		{$TXT_MAIN_DESCRIPTION}
	</div>

    <div id="main_content">
     {foreach from=$MAIN_LISTINGS item="entry"}
		<div  class="listing_box"  >
		   <div class="listinglogo">
			 <a name="{$entry.list_dirref}"></a>
			 {if $entry.list_src != ''}
			  <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
			 {else}
			   &nbsp;
			 {/if}
		  </div>
		  <div class="listing_info">
			{if $entry.list_tagsicons != '' || $entry.EDIT != '' || $entry.list_fb != '' || $entry.list_ta != '' || $entry.list_ol != ''|| $entry.list_www != ''}
				   <div class="tagicons" >
						{if $entry.EDIT != ''}
						   <a href="{$entry.EDIT}">EDIT</a> &nbsp;
						{/if}
					   {$entry.list_tagsicons}
                       {if $entry.list_fb}<a href="{$entry.list_fb}"><img  class="tagicon"  src="/images/facebookIcon.png"  title="Listed on Facebook" /></a>{/if}
                       {if $entry.list_tw}<a href="{$entry.list_tw}"><img  class="tagicon"  src="/images/twitter.png" title="Listed on Twitter" /></a>{/if}
					   {if $entry.list_ta}<a href="{$entry.list_ta}"><img  class="tagicon"  src="/images/tripadvisor2.png" title="Reviewed on Tripadvisor" /></a>{/if}
					   <!--{if $entry.list_ol}<img src="/images/icon_delivery.png" height=22 width=auto title="Delivery" />{/if}-->
                       {if $entry.list_www}<a href="{$entry.list_www_url}"><img  class="tagicon"  style="margin:1px;"src="/images/www.png" title="Has a Website" /></a>{/if}
					   
					   {if $list_lastupdate != '' && $EDIT != ''}
						   <div style="text-align: center; color: gray; font-size: .8em;" >{$list_lastupdate}</div>
					   {/if}
				   </div>
		   {/if}
		   <p class="listing_name">{$entry.list_name}</p>
		   
		   {if $entry.listing_from_date != '' && $entry.listing_to_date}
				<p class="tags">{$entry.listing_from_date} until {$entry.listing_to_date}</p>
		   {/if}
		   
		   {if $entry.list_tags != ''}
			  <p class="tags" >
				{if $entry.list_tags != ''}
						{$entry.list_tags}
				{/if}
			  	{if $entry.list_tags != '' && $entry.features != ''}, {/if}
						
				{if $entry.features != ''}
				   {$entry.features}
				{/if}
			  </p>
		   {/if}

		   {if $entry.list_more_url != ''}
			   <p style="margin-top: 4px;" ><a class="listlink" href="{$entry.list_more_url}">{$more_info}</a></p>
		   {/if}

		   <p class="descShort">{$entry.list_descshort|nl2br}</p>
		  </div>
		  <br clear="left" />
		  <br />
		</div>
     {/foreach}

     {foreach from=$subcat item="sub"}
	 <a id="{$sub.subcat_typecode}"></a>
     <br />
	 <h2>{$sub.subcat_name}</h2>

     {if $sub.subcat_desc != ''} <p>{$sub.subcat_desc}</p>  <br />{/if}

          {foreach from=$sub.listing item="entry"}
		    {if $entry.listing_nodates == 'noevents' }
				{php}continue;{/php}
		    {/if}
			<div  class="sub listing_box"  >
			   <div class="listinglogo">
				 <a name="{$entry.list_dirref}"></a>
				 {if $entry.list_src != ''}
				  <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
				 {else}
				   &nbsp;
				 {/if}
			  </div>
			  <div class="listing_info">
			   {if $entry.list_tagsicons != '' || $entry.EDIT != '' || $entry.list_fb != '' || $entry.list_ta != '' || $entry.list_ol != ''|| $entry.list_www != ''}
				   <div class="tagicons">
							{if $entry.EDIT != ''}
							   <div style="text-align:right; color: gray; font-size: .8em;"><a href="{$entry.EDIT}">EDIT</a> &nbsp;{$entry.list_lastupdate}</div>
							{/if}
						   {$entry.list_tagsicons}
                       {if $entry.list_fb}<a href="{$entry.list_fb}"><img   class="tagicon" src="/images/facebookIcon.png" title="Listed on Facebook" /></a>{/if}
					   {if $entry.list_tw}<a href="{$entry.list_tw}"><img   class="tagicon" src="/images/twitter.png" title="Listed on Twitter" /></a>{/if}

					   {if $entry.list_ta}<a href="{$entry.list_ta}"><img   class="tagicon" src="/images/tripadvisor2.png" title="Reviewed on Tripadvisor" /></a>{/if}
					  <!-- {if $entry.list_ol}<img src="/images/icon_delivery.png" height=22 width=auto title="Delivery" />{/if} -->
                       {if $entry.list_www}<a href="{$entry.list_www_url}"><img   class="tagicon" style="margin:1px;"src="/images/www.png" title="Has a Website" /></a>{/if}
					   
				    </div>
			   {/if}
			   <p class="listing_name" onclick="location" >{$entry.list_name}</p>

				{if $entry.listing_from_date != '' && $entry.listing_to_date}
					 <p class="tags">{$entry.listing_from_date} - {$entry.listing_to_date}</p>
				{/if}
		   
			   {if $entry.list_tags != ''}
				  <p class="tags" >{$entry.list_tags}</p>
			   {/if}
			   {if $entry.list_tagsicons != '' || $entry.list_more_url != ''}
				   <p style="margin-top: 4px;" >
				   {if $entry.list_more_url != ''}
					   <a class="listlink" href="{$entry.list_more_url}">{$more_info}</a>
				   {/if}
				   </p>
			   {/if}
			   <p class="descShort">{$entry.list_descshort|nl2br}</p>
			  </div>
			  <br clear="left" />
			  <br />
			</div>
		  {/foreach}
     {/foreach}
	 <br clear="all"  />
   </div>
{*include file="ggv10_right_content.tpl"*}
{include file="ggv10_footer.tpl"}



