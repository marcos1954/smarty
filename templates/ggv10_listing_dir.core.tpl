{strip}
<div id="topcontent">
		{$TXT_MAIN_DESCRIPTION}
	</div>
	<br clear="all" />
	<br class="clearfloats" />

    <div id="main_content">

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
     					{if $entry.list_more_url != ''}
     	                    <a class="listlink" href="{$entry.list_more_url}">{$more_info}</a>&nbsp; &nbsp;
     	                {elseif $entry.list_www_url != ''}
     	                    <a class="listlink" href="{$entry.list_www_url}" >{$more_info}</a>&nbsp; &nbsp;
     	                {/if}
                        {if $entry.list_cal_url != ''}
     	                    <a class="listlink" href="{$entry.list_cal_url}">{$calendar}</a>
     	                {/if}
     				</p>
     				<p>{$entry.list_descshort|nl2br}
     				</p>
                   </div>
                   <br clear="left" />
     			 </div>



     {/foreach}




     {foreach from=$subcat item="sub"}
     <br /><h2>{$sub.subcat_name}</h2>

     {if $sub.subcat_desc != ''} <p>{$sub.subcat_desc}</p>  <br />{/if}

          {foreach from=$sub.listing item="entry"}

                 <div  class="sublisting_box">
                	<div class="listinglogo">
                	  <a name="{$entry.list_dirref}"></a>
                      {if $entry.list_src != ''}
                       <img border="0" src="{$entry.list_src}" width="{$entry.list_width}" height="{$entry.list_height}" align="left">
                      {else}
                        &nbsp;
                      {/if}
                   </div>
                   <div class="listing_info">
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
     					{if $entry.list_more_url != ''}
     	                    <a class="listlink" href="{$entry.list_more_url}">{$more_info}</a>&nbsp; &nbsp;
     	                {elseif $entry.list_www_url != ''}
     	                    <a class="listlink" href="{$entry.list_www_url}" >{$more_info}</a>&nbsp; &nbsp;
     	                {/if}
                        {if $entry.list_cal_url != ''}
     	                    <a class="listlink" href="{$entry.list_cal_url}">{$calendar}</a>
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
{/strip}