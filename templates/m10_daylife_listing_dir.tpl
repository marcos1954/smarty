{strip}
{include file=$headerfilename}
	<div id="main_content">
	 <br class="clearfloats" />
      {assign var="betweenListing" value="false"}
      {foreach from=$MAIN_LISTINGS item="entry"}
          {if $betweenListing == "true"}
	      <br clear="all" /><hr />
          {else}
 	       {assign var="betweenListing" value="true"}
          {/if}
  <div  class="listing_box"  {if $entry.list_more_url != ''} onclick="location.href='{$entry.list_more_url}';"  style="cursor:pointer;" {/if}>
   <div class="listinglogo">
    <a name="{$entry.list_dirref}" {if $entry.list_more_url != ''}href="{$entry.list_more_url}"{/if}>
   {if $entry.list_src != ''}
   <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
   {else}
   <img border="0" src="/images/nopix.gif" width="100" height="100" align="left">
   {/if}</a>
   </div>
   <div class="listing_info">
   <div class="listmore">
    {if $entry.list_more_url != ''}
    <a href="{$entry.list_more_url}"><img border="0" height="25" width="25" src="/m/more.png"></a>&nbsp; &nbsp;
    {/if}
   </div>
    <p class="listing_name">{$entry.list_name}</p>
    <p class="listing_address">
    {$entry.list_addr1}
    {if $entry.list_addr2 != ''}
    , {$entry.list_addr2}
    {/if}
    {if $entry.list_addr3 != ''}
    , {$entry.list_addr3}
    {/if}
    {if $entry.list_phone != ''}
    	<br /> Tel. {$entry.list_phone}
    {/if}

    </p>
    <p>{$entry.list_descshort|nl2br}
    	</p>
    </div>
   </div>
   {/foreach}


     {foreach from=$subcat item="sub"}
    <h2>{$sub.subcat_name}</h2>
     <div>
     {if $sub.subcat_desc != ''} <p style="padding-left: 10px;">{$sub.subcat_desc}</p>  <hr />{/if}
      </div>
      {assign var="betweenListing" value="false"}
          {foreach from=$sub.listing item="entry"}


          {if $betweenListing == "true"}
	      <br clear="all" /><hr />
          {else}
 	       {assign var="betweenListing" value="true"}
          {/if}
                 <div  class="sublisting_box" {if $entry.list_more_url != ''} onclick="location.href='{$entry.list_more_url}';"  style="cursor:pointer;" {/if}>
                	<div class="listinglogo">
                	  <a name="{$entry.list_dirref}" {if $entry.list_more_url != ''}href="{$entry.list_more_url}"{/if}>
   {if $entry.list_src != ''}
   <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
   {else}
   <img border="0" src="/images/nopix.gif" width="100" height="100" align="left">
   {/if}</a>
                   </div>
                   <div class="listing_info">
                   <div class="listmore">
    {if $entry.list_more_url != ''}
    <a href="{$entry.list_more_url}"><img border="0" height="25" width="25" src="/m/more.png"></a>&nbsp; &nbsp;
    {/if}
   </div>
         	<p class="listing_name">{$entry.list_name}</p>
     				<p class="listing_address">
     					{$entry.list_addr1}
     					{if $entry.list_addr2 != ''}
     						, {$entry.list_addr2}
     					{/if}
     					{if $entry.list_addr3 != ''}
     						, {$entry.list_addr3}
     					{/if}
     					{if $entry.list_phone != ''}
     						<br /> Tel. {$entry.list_phone}
     					{/if}
     					<br />

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
 <hr />
 </div>
{include file="m10_footer.tpl"}
{/strip}