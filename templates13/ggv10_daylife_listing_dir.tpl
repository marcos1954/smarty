
{include file=$headerfilename}

	<div id="main_content">
		{$TXT_MAIN_DESCRIPTION}

	<br clear="all" />
	<br class="clearfloats" />

	<br />

     {foreach from=$MAIN_LISTINGS item="entry"}

                 <div  class="listing_box">
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
                            <div style="float: right;margin-top:.7em;" >
								 {if $entry.EDIT != ''}
								 	{if $entry.list_lastupdate != '0000-00-00 00:00:00'}
										<div style="text-align:right; color: gray; font-size: .8em;">{$entry.list_lastupdate}</div>
									{/if}
									<a href="{$entry.EDIT}">EDIT</a> &nbsp;
								 {/if}
								{$entry.list_tagsicons}
								{if $entry.list_fb}<img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" />{/if}
                                {if $entry.list_ta}<img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" />{/if}
                                {if $entry.list_ol}<img src="/images/icon_delivery.png" height=22 width=auto title="Delivery" />{/if}
                                {if $entry.list_www}<img style="margin:1px;"src="/images/www.png" height=20 width=auto title="Has a Website" />{/if}
                               
							</div>
					{/if}
                 	<p class="listing_name">{$entry.list_name}</p>
	
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
     				<p>{$entry.list_descshort|nl2br}
     				</p>
                   </div>
                   <br clear="left" />
     			 </div>
     {/foreach}

     {foreach from=$subcat item="sub"}
	 <a id="{$sub.subcat_typecode}"></a>
     <br /><h2>{$sub.subcat_name}</h2>

     {if $sub.subcat_desc != ''} <p>{$sub.subcat_desc}</p>  <br />{/if}



          {foreach from=$sub.listing item="entry"}

                 <div  class="sub listing_box">
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
							<div style="float: right;margin-top:.7em;" >
								 {if $entry.EDIT != ''}
								 	{if $entry.list_lastupdate != '0000-00-00 00:00:00'}
										<div style="text-align:right; color: gray; font-size: .8em;">{$entry.list_lastupdate}</div>
									{/if}
									
									<a href="{$entry.EDIT}">EDIT</a> &nbsp;
								 {/if}
								{$entry.list_tagsicons}
								{if $entry.list_fb}<img src="/images/facebookIcon.png" height=22 width=auto title="Listed on Facebook" />{/if}
                                {if $entry.list_ta}<img src="/images/tripadvisor2.png" height=22 width=auto title="Reviewed on Tripadvisor" />{/if}
                                {if $entry.list_ol}<img src="/images/icon_delivery.png" height=22 width=auto title="Delivery" />{/if}
                                {if $entry.list_www}<img style="margin:1px;"src="/images/www.png" height=20 width=auto title="Has a Website" />{/if}
					  					</div>
					{/if}
                 	<p class="listing_name">{$entry.list_name}</p>

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
     				</p>
     				<p>{$entry.list_descshort|nl2br}
     				</p>
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
