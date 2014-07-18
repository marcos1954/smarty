{strip}{config_load file="ggv_search.conf"}
{include file=$headerfilename}
<div id="main_content">
 <div class="listing_box">
   <div class="listinglogo">
{if $lodging_logo_src != ''}
    <img border="0" src="../Listings/{$lodging_logo_src}"  width="{$lodging_logo_width}"  height="{$lodging_logo_height}"  align="left">
{else}
 &nbsp;
{/if}
   </div>
   <div class="listing_info">
    <p class="listing_name"  style="margin-top: 0px; padding-top: 0px;">{$hotel_name}</p>
    <p class="listing_address">
    {$lodging_addr1}
    {if $lodging_addr2 != ''}<br /> {$lodging_addr2}{/if}
    {if $lodging_addr3 != ''}<br /> {$lodging_addr3}{/if}
    {if $lodging_phone != ''}<br /> Tel. {$lodging_phone}{/if}
    <br />
    {if $lodging_link_url != ''}<br /><a class="listlink" rel="nofollow" href="{$lodging_link_url}">website</a>&nbsp;&nbsp;{/if}
    </p>
   {if $features ne ""}
   <p>
    <font face="Arial" color="#0099CC" size="1">
    <font size="2">
    <b><i>Property Features:</i></b>
    </font> &nbsp;
    {$features}
    </font>
   </p>
   {/if}
   </div>{* end listing_address *}
  </div>{* end listing_info *}
  <div class="full_listing" style="margin: 0px; padding: 0px 10px 0px 10px;" >
   <p>{$lodging_desclong|nl2br}
   </p>
  </div>{* end full_listing *}

  {if $list_map != ''}
  <br />
  	<H2>Location</H2>
	<center><a href="{$list_mapbig}"><img width="320" height="480" src="{$list_map}" /></a></center>
	<br />
  {/if}

 </div>{* end listing_box *}
</div>{* end main_content *}
{include file="m10_footer.tpl"}
{*debug*}{/strip}