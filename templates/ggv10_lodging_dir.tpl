{config_load file="ggv_search.conf"}
{include file=$headerfilename}

<div id="topcontent">
			<div id="remote_search_box">
			<div id="remote_search_form"><center>
		     {php}echo  remote_search();{/php}
			</center></div>
			</div>

	        <h1>Puerto Vallarta Lodging</h1>
		    <h2>{$LODGING_DIR_TITLE}</h2>
		    <p>
		     {$LODGING_DIR_TEXT}
		    </p>
		    <br clear="all">
			<br />
			<br />
			<br />
			<br />



     	<table width="745" height="10" border="0" cellpadding="4" cellspacing="0">

		 {assign var=nextside value="left"}
		 {* BEGIN MAIN LOOP OF PREMIUM LISTINGS *}
		 {foreach from=$premium_listings item=entry}
		   {if $nextside == "left"}<tr>{/if}
		   <td valign="top" align="left"  width="350">
		   <div class="hotelbox">
		    <table width=336 border=0 cellspacing=0 cellpadding="3">
		     <tr>
		      <td colspan=2 valign="top" align="left" height="39" class="hotelTag" width="330">
		      <p class="blueback_title">
		     	 <a name="hid{$entry.hotel_id}"></a>
		     	 {$entry.hotel_tag}
		      </p>
			  </td>
			 </tr>
			 <tr>
			 {if $entry.lodging_logo_src ne ''}
			  <td vAlign=top height=130 width=110>
			  <br />
			   <a href="{$entry.lodging_url}">
		        <img border="0" src="../Listings/{$entry.lodging_logo_src}" width="{$entry.lodging_logo_width}" height="{$entry.lodging_logo_height}" align="left">
			   </a>
			  </td>
			 {else}
			  <td height=130 width=110>&nbsp;</td>
			 {/if}

              <td  vAlign="top" align="left"  wrap>
               <p class="listing_name">{$entry.hotel_name}</p>
				<p class="listing_address">
               {$entry.lodging_addr1}{if $entry.lodging_addr2 != ''}<br />{$entry.lodging_addr2}{/if}{if $entry.lodging_addr3 != ''}<br />{$entry.lodging_addr3}{/if}{if $entry.lodging_phone != ''}<br /> Tel. {$entry.lodging_phone}{/if}
				<br />
               {if $entry.lodging_more_url != ''}
     	         <a class="listlink" href="{$entry.lodging_more_url}">{$entry.lodging_url_text}</a>
     	       {/if}

               </p>
              </td>
             </tr>
            </table>

            <p class="listing_description">
            	{$entry.lodging_descshort | nl2br}
            </p>
</div>  <!-- hotelbox -->
		  {if $nextside == "left"}
           </td>
           <td width="10" valign="top" align="left"  height="25">
            &nbsp;
           </td>
		   {assign var=nextside value="right"}
		  {else}
		   </td>
		  </tr>
			{assign var=nextside value="left"}
		  {/if}
		{/foreach}

		{if $nextside == "right"}
		  <td></td>
		 </tr>
		{/if}

		{* basic (non-advertiser) listings *}
		{if $basic_listings}
	  	 <tr>
	  	  <td colspan=3>
	  	    <div id="Listings_other_box">
	  	  	<br /><br />

	  	  	<h2>Other lodgings in this category....</h2>

	  	  	{foreach from=$basic_listings item=entry}
           		<p class="listing_name">
           		{$entry.hotel_name}</p>
           		<p class="listing_address">
           		{$entry.lodging_addr1}{if $entry.lodging_addr2 != ''}, {$entry.lodging_addr3}{/if}{if $entry.lodging_phone != ''}, Tel. {$entry.lodging_phone}{/if}</p>
           		<p class="listing_description">{$entry.lodging_descshort | nl2br}</p>
          	{/foreach}
          </div>

	  	 </td>
	  	</tr>
	   {/if}
      </table>
</div>  <!-- topcontent -->
{include file="ggv10_footer.tpl"}
