{strip}
{config_load file="ggv_search.conf"}
{include file=$headerfilename}
<div id="main_content">
 <h2>{$LODGING_DIR_TITLE}</h2>
 <div style="margin-left: 5px;">
  <p>
  {$LODGING_DIR_TEXT}
  </p>
  <br clear="all">
 </div>
 <hr />
{* BEGIN MAIN LOOP OF PREMIUM LISTINGS *}
{foreach from=$premium_listings item=entry}
 <div  class="listing_box" {if $entry.lodging_url != ''} onclick="location.href='{$entry.lodging_url}';"  style="cursor:pointer;" {/if}>
 <div class="listinglogo">
 {if $entry.lodging_logo_src ne ''}
  <a href="{$entry.lodging_url}">
  <img border="0" src="../Listings/{$entry.lodging_logo_src}" width="{$entry.lodging_logo_width}" height="{$entry.lodging_logo_height}" align="left">
  </a>
{else}
  <img border="0" src="/images/nopix.gif" width="100" height="100" align="left">
{/if}
 </div>
 <div class="listing_info">
   <div class="listmore">
    {if $entry.lodging_url != ''}
    <a href="{$entry.lodging_url}"><img border="0" height="25" width="25" src="/m/more.png"></a>&nbsp; &nbsp;
    {/if}
   </div>
   <p class="blueback_title">
    <a name="hid{$entry.hotel_id}"></a>
    {$entry.hotel_tag}
   </p>
   <p class="listing_name">{$entry.hotel_name}</p>
   <p class="listing_address">
     {$entry.lodging_addr1}
     {if $entry.lodging_addr2 != ''}<br />{$entry.lodging_addr2}{/if}
     {if $entry.lodging_addr3 != ''}<br />{$entry.lodging_addr3}{/if}
     {if $entry.lodging_phone != ''}<br /> Tel. {$entry.lodging_phone}{/if}
   </p>
   <p class="listing_description">
     {$entry.lodging_descshort | nl2br}
   </p>
  </div>
 </div>
 <br clear="all" />
 <hr />
{/foreach}
 <br /><br />
{* basic (non-advertiser) listings *}
{if $basic_listings}



 <h2>Other lodgings in this category....</h2>
 <div id="Listings_other_box">
 <br /><br />
{foreach from=$basic_listings item=entry}
 <p class="listing_name">
  {$entry.hotel_name}</p>
 <p class="listing_address" style="margin-top: 0px; padding-top: 0px;">
  {$entry.lodging_addr1}{if $entry.lodging_addr2 != ''}, {$entry.lodging_addr3}{/if}{if $entry.lodging_phone != ''}, Tel. {$entry.lodging_phone}{/if}</p>
 <p class="listing_description">{$entry.lodging_descshort | nl2br}</p>
 <br clear="all" />
 <hr />
{/foreach}
 </div>
{/if}
</div>
{include file="m10_footer.tpl"}
{/strip}