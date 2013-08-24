{strip}
{include file=$headerfilename}

<div id="topcontent">
		{$TXT_MAIN_DESCRIPTION}
	</div>
	<br clear="all" />
	<br class="clearfloats" />
    <div id="main_content">
     {foreach from=$MAIN_LISTINGS item="entry"}
		<div  class="listing_box"  onclick="location.href='{$entry.list_more_url}';">
		   <div class="listinglogo">
			 <a name="{$entry.list_dirref}"></a>
			 {if $entry.list_src != ''}
			  <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
			 {else}
			   &nbsp;
			 {/if}
		  </div>
		  <div class="listing_info">
			{if $entry.list_tagsicons != '' || $entry.EDIT != ''}
				   <div style="float: right;margin-top:.7em;" >
						{if $entry.EDIT != ''}
						   <a href="{$entry.EDIT}">EDIT</a> &nbsp;
						{/if}
					   {$entry.list_tagsicons}
					   {if $entry.list_fb}<img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" />{/if}
					   {if $entry.list_ta}<img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" />{/if}

					   {if $list_lastupdate != '' && $EDIT != ''}
						   <div style="text-align: center; color: gray; font-size: .8em;" >{$list_lastupdate}</div>
					   {/if}
				   </div>
		   {/if}
		   <p class="listing_name">{$entry.list_name}</p>
		   
		   {if $entry.list_tags != ''}
			  <p class="tags" >{$entry.list_tags}</p>
		   {/if}

		   {if $entry.list_more_url != ''}
			   <p style="margin-top: 4px;" ><a class="listlink" href="{$entry.list_more_url}">{$more_info}</a></p>
		   {/if}

		   <p>{$entry.list_descshort|nl2br}</p>
		  </div>
		  <br clear="left" />
		</div>
     {/foreach}

     {foreach from=$subcat item="sub"}
	 <a id="{$sub.subcat_typecode}"></a>
     <br />
	 <h2>{$sub.subcat_name}</h2>

     {if $sub.subcat_desc != ''} <p>{$sub.subcat_desc}</p>  <br />{/if}

          {foreach from=$sub.listing item="entry"}
			<div  class="sublisting_box"  onclick="location.href='{$entry.list_more_url}';">
			   <div class="listinglogo">
				 <a name="{$entry.list_dirref}"></a>
				 {if $entry.list_src != ''}
				  <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
				 {else}
				   &nbsp;
				 {/if}
			  </div>
			  <div class="listing_info">
			   {if $entry.list_tagsicons != '' || $entry.EDIT != ''}
					   <div style="float: right;margin-top:.7em;" >
							{if $entry.EDIT != ''}
							   <div style="text-align:right; color: gray; font-size: .8em;"><a href="{$entry.EDIT}">EDIT</a> &nbsp;{$entry.list_lastupdate}</div>
							{/if}
						   {$entry.list_tagsicons}
						   {if $entry.list_fb}<img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" />{/if}
						   {if $entry.list_ta}<img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" />{/if}
					   </div>
			   {/if}
			   <p class="listing_name" onclick="location" >{$entry.list_name}</p>
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
			   <p>{$entry.list_descshort|nl2br}</p>
			  </div>
			  <br clear="left" />
			  <br />
			</div>
		  {/foreach}
     {/foreach}
	 <br clear="all"  />
   </div>
{include file="ggv10_right_content.tpl"}
{include file="ggv10_footer.tpl"}
{/strip}
