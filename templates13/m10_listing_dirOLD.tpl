{strip}
{include file=$headerfilename}
<div id="main_content">
{if $MAIN_LISTINGS != array()}
 <h2 style="margin-top: 20px;">{$cat_name}</h2>
 {assign var="betweenListing" value="false"}
 {foreach from=$MAIN_LISTINGS item="entry"}
 {if $betweenListing == "true"}
	<br clear="all" /><hr />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}

 <div  class="listing_box">
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
    <br /> {$entry.list_addr2}
  {/if}
  {if $entry.list_addr3 != ''}
    <br /> {$entry.list_addr3}
  {/if}
  {if $entry.list_phone != ''}
    <br /> Tel. <a href="Tel:{$entry.list_phone}">{$entry.list_phone}</a>
  {/if}
  <br />
   </p>
 <p>{$entry.list_descshort|nl2br}
 </p>
 </div>
</div>
{/foreach}
{/if}

{foreach from=$subcat item="sub"}
 {assign var="betweenListing" value="false"}
 <br clear="all" />
 <h2>{$sub.subcat_name}</h2>

 {foreach from=$sub.listing item="entry"}
{if $betweenListing == "true"}
	<br clear="all" /><hr />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
 <div  class="listing_box">
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
     <a href="{$entry.list_more_url}"><img border="0" height="25" width="25" src="/m/more.png" /></a>&nbsp; &nbsp;
    {/if}
    </div>
    <p class="listing_name">{$entry.list_name}</p>
    <p class="listing_address">
    {$entry.list_addr1}
    {if $entry.list_addr2 != ''}
    <br /> {$entry.list_addr2}
    {/if}
    {if $entry.list_addr3 != ''}
    <br /> {$entry.list_addr3}
    {/if}
    {if $entry.list_phone != ''}
    <br /> Tel. <a href="Tel:{$entry.list_phone}">{$entry.list_phone}</a>
    {/if}
    </p>
    <p>{$entry.list_descshort|nl2br}
    </p>
  </div>
</div>
{/foreach}
{/foreach}
<br clear="all"  />
</div>

{include file="m10_footer.tpl"}
{*debug*}
{/strip}