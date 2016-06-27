{include file=$headerfilename}
<div id="topcontent" >
		
		{if $gmap}
				<div class="gmap_insert"  >
						<iframe src="/Mapa/gmap.php?cat={$gmap_cat}&target=_parent&bgcolor=%23FFFfFf"
								name="map"
								width="100%"
								style="float:right;"
								marginwidth="0"
								height="100%"
								scrolling="no"
								frameborder="0">
						</iframe>
				</div>
		{/if}

		{$TXT_MAIN_DESCRIPTION}
	</div>

    <div id="main_content">
		<div class="cat_name" >
				{$cat_name}
		</div>
		<div id="subcat-buttons" >
				{foreach from=$subcat item="sub"}
				 <div id="button_{$sub.subcat_typecode}" class="button" onclick="location.hash = '#{$sub.subcat_typecode}'; window.scrollBy(0,-50)" >{$sub.subcat_name}</div>		
				{/foreach}
		</div>

		{if $cat_name_prime != ''}
				<h2>{$cat_name_prime}</h2>
		{/if}
		
		{foreach from=$MAIN_LISTINGS item="entry"}
		<div  class="listing_box"  >
		   <div class="listinglogo">
			 <a name="{$entry.list_dirref}"></a>
			 {if $entry.list_src != ''}
			  <img src="/img.io/timthumb.php?w=100&src={$entry.list_src}" align="left" />
			 {else}
			   &nbsp;
			 {/if}
		  </div>
		  <div class="listing_info">
			{if $entry.list_tagsicons != '' || $entry.EDIT != '' || $entry.list_fb != '' || $entry.list_ta != '' || $entry.list_ti != '' || $entry.list_ol != ''|| $entry.list_www != ''}
				<div class="tagicons" >
					 {if $entry.EDIT != ''}
						<a href="{$entry.EDIT}">EDIT</a> &nbsp;
					 {/if}
					{$entry.list_tagsicons}
					{if $entry.list_fb}<a href="{$entry.list_fb}"><img  class="tagicon"  src="/images/facebookIcon.png"  title="Listed on Facebook" /></a>{/if}
					{if $entry.list_tw}<a href="{$entry.list_tw}"><img  class="tagicon"  src="/images/twitter.png" title="Listed on Twitter" /></a>{/if}
					{if $entry.list_ta}<a href="{$entry.list_ta}"><img  class="tagicon"  src="/images/tripadvisor2.png" title="Reviewed on Tripadvisor" /></a>{/if}
					{if $entry.list_www}<a href="{$entry.list_www_url}"><img  class="tagicon"  style="margin:1px;"src="/images/www.png" title="Has a Website" /></a>{/if}
					
					
					{if $entry.list_ti}<a href="{$entry.list_ti}"><img  class="tagicon"  src="/images/tickets.png" title="Get Tickets Online" /></a>{/if}
					
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
		</div>
     {/foreach}
		<a class="scrollToTop" href='#'>scroll to top</a>
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
				 
				  {if $entry.list_src_gif_transparent }
						<img src="{$entry.list_src}" width=100 height=auto align="left" />
				    {else}
						<img src="/img.io/timthumb.php?w=100&src={$entry.list_src}" align="left" />
				  {/if}
				 {else}
				   &nbsp;
				 {/if}
			  </div>
			  <div class="listing_info">
			   {if $entry.list_tagsicons != '' || $entry.EDIT != '' || $entry.list_fb != '' || $entry.list_ta != '' || $entry.list_ti != '' || $entry.list_ol != ''|| $entry.list_www != ''}
				   <div class="tagicons">
							{if $entry.EDIT != ''}
							   <div style="text-align:right; color: gray; font-size: .8em;"><a href="{$entry.EDIT}">EDIT</a> &nbsp;{$entry.list_lastupdate}</div>
							{/if}
						   {$entry.list_tagsicons}
                       {if $entry.list_fb}<a href="{$entry.list_fb}"><img   class="tagicon" src="/images/facebookIcon.png" title="Listed on Facebook" /></a>{/if}
					   {if $entry.list_tw}<a href="{$entry.list_tw}"><img   class="tagicon" src="/images/twitter.png" title="Listed on Twitter" /></a>{/if}
					   {if $entry.list_ta}<a href="{$entry.list_ta}"><img   class="tagicon" src="/images/tripadvisor2.png" title="Reviewed on Tripadvisor" /></a>{/if}
                       {if $entry.list_www}<a href="{$entry.list_www_url}"><img   class="tagicon" style="margin:1px;"src="/images/www.png" title="Has a Website" /></a>{/if}
					   
					   				
						{if $entry.list_ti}<a href="{$entry.list_ti}"><img  class="tagicon"  src="/images/tickets.png" title="Get Tickets Online" /></a>{/if}
					   
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
			</div>
		  {/foreach}
		  <a class="scrollToTop" href='#'>scroll to top</a>
     {/foreach}
   </div>
	
{include file="ggv10_footer.tpl"}



