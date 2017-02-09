{config_load file="ggv_search.conf"}
{include file=$headerfilename}

<div id="topcontent" style="margin-bottom: 20px;">
	<h1 align="left">Puerto Vallarta Lodging</h1>
	<h2 align="left">{$LODGING_DIR_TITLE}</h2>
	<p>
	 {$LODGING_DIR_TEXT}
	</p>
	<br clear="all">
</div>
<div id="main_content">		
	<div class="condo-results">
		{assign var=lastid value=""}
		{* BEGIN MAIN LOOP OF PREMIUM LISTINGS *}
		{foreach from=$premium_listings item=entry}
			{if $entry.location_name ne $lastid}
				{if $lastid ne ""}
							</table>
						</div> {* end of condoUnits *}

					</div> {* end of condobox *}

			</div> {*  end of condo-results*}
			<div class="condo-results">

				{/if}

				{assign var=lastid value=$entry.location_name}

						<div class="condobox">
							<div class="condoHdr">
							
							
								<div class="condoLogo">
								{if $entry.lodging_logo_src ne ''}

								  <img border="0" src="../Listings/{$entry.lodging_logo_src}"  width="{$entry.lodging_logo_width}"   height="{$entry.lodging_logo_height}" align="left">

								{else}

								{/if}
                                </div>
								
								<div class="condoDescLocation">
								<h4>{$entry.location_name}</h4>
								 {$entry.lodging_descshort | nl2br}
								</div>

							
							</div> {* end of condoHdr *}


						<div class="condoUnits">
							<!-- TABLE HEADERS FOR UNIT LISTINGS-->
							<table width="100%" bgcolor="white">
								<tr bgcolor="#006BBD">
								 <th class="condoRh agency" nowrap>agency</th>
								 <th class="condoRh" nowrap>unit</th>
								 <th class="condoRh maximumPax" nowrap>max</th>
								 <th class="condoRh" align="left">&nbsp; description</th>
								</tr>
								
			{counter name=tabcounter print=no assign=grpid}
			{/if}
								<tr bgcolor={cycle values="`$smarty.config.searchcycleBgColor`" name="`$grpid`"}>
								 <td class="agency" nowrap>
								 {if $entry.acct_url ne ""}
								   <a  class="condoZlink trackLink" data-listname="{$entry.acct_name} {$entry.room_name} : website" rel="nofollow" href="{$entry.acct_url}" >{$entry.acct_name|truncate:10}</a>
								 {else}
								  {$entry.acct_name|truncate:10}
								  {/if}
								 </td>
								 <td class="room-name" nowrap>
								  {if $entry.room_url ne ""}
								   <a href="{$entry.room_url}" >{$entry.room_name|capitalize|escape}</a>
								  {else}
								   {$entry.room_name|capitalize|escape}
								  {/if}
								 </td>
								 <td class="maximumPax" align="center" nowrap>{$entry.room_maxcap}</td>
								 <td class="condoRoomDesc" width=300>{$entry.room_desc|capitalize|escape}</td>
								</tr>
	{/foreach}
							</table>
						</div> {* end of condoUnits *}
			</div> {* end of condobox *}

		</div> {*  end of condo-results*}
       <!--- end center column --->

</div> {* end of main_content *}
{include file="ggv10_footer.tpl"}
{*debug*}