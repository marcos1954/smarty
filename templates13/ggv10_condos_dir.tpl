{config_load file="ggv_search.conf"}
{include file=$headerfilename}
{strip}
<div id="topcontent" style="margin-bottom: 20px;">
	<div style="float: right;" id="remote_search_box">
		<div id="remote_search_form">
			{php}include('../Search/remote_search.php');{/php}
		</div>
	</div>


	        <h1 align="left">Puerto Vallarta Lodging</h1>
		    <h2 align="left">{$LODGING_DIR_TITLE}</h2>
		    <p>
		     {$LODGING_DIR_TEXT}
		    </p>
		    <br clear="all">
</div>
<div id="main_content">

		 <table border="0"  BGCOLOR="#cccccc" cellspacing=0 width="535">
		 {assign var=lastid value=""}
		 {* BEGIN MAIN LOOP OF PREMIUM LISTINGS *}
		 {foreach from=$premium_listings item=entry}
	{if $entry.location_name ne $lastid}
		   {if $lastid ne ""}
				</table></div>
		   </td></tr></table>
		   <br />
		   <table border="0"  BGCOLOR="#cccccc" cellspacing=0 width="535">
		    {/if}

		   {assign var=lastid value=$entry.location_name}

		   <tr>
		   <td valign="top" align="CENTER"  width="530">
		   <div ALIGN="CENTER" class="condobox">
		    <table width="530" border="0" bgcolor="white" cellspacing="0" cellpadding="10">

		    <!--- TAG -->
		    <!--
		     <tr>
		      <td colspan=2 valign="top" align="left" bgcolor="#0D5289" height="12" class="condotitle">
				{$entry.hotel_tag}
			  </td>
			 </tr>
			 -->

			<!--- LOGO -->
			 <tr>
			 {if $entry.lodging_logo_src ne ''}
			  <td vAlign=top  width=110>
			   <a href="{$entry.lodging_logo_src}">
			    <img border="0" src="{$entry.lodging_logo_src}"  width="{$entry.lodging_logo_width}"   height="{$entry.lodging_logo_height}"  align="left">
			   </a>
			  </td>
			 {else}
			  <td width=110>&nbsp;</td>
			 {/if}

			 <!--- NAME & SHORT DESC -->
              <td vAlign=top align=left width=90% wrap>
               <font face="Arial" color="#0099CC" size="5">
               <b>{$entry.location_name}</b></font><br>
                <span class="condoD">
            	 {$entry.lodging_descshort | nl2br}
                </span>
               </font>
              </td>
             </tr>
            </table>

            <!-- TABLE HEADERS FOR UNIT LISTINGS-->
		    <table width="530" bgcolor="white">
		    <tr bgcolor="#006BBD">
		     <th class="condoRh" nowrap>agency</th>
		     <th class="condoRh" nowrap>unit</th>
		     <th class="condoRh" nowrap>max</th>
		     <th class="condoRh" align="left">&nbsp; description</th>
		    </tr>
		    {counter name=tabcounter print=no assign=grpid}
        {/if}
                <tr bgcolor={cycle values="`$smarty.config.searchcycleBgColor`" name="`$grpid`"}>
                 <td class="condoZ" nowrap>
                 {if $entry.acct_url ne ""}<a rel="nofollow" href="{$entry.acct_url}" class="condoZlink">{$entry.acct_name|truncate:10}</a>
                 {else}
                  {$entry.acct_name|truncate:10}
                  {/if}
                 </td>
                 <td class="condoL" nowrap>
                  {if $entry.room_url ne ""}
                   <a href="{$entry.room_url}" class="condoZlink">{$entry.room_name|capitalize|escape}</a>
                  {else}
                   {$entry.room_name|capitalize|escape}
                  {/if}
                 </td>
                 <td class="condoL" align="center" nowrap>{$entry.room_maxcap}</td>
                 <td class="condoD" width=300>{$entry.room_desc|capitalize|escape}</td>

                </tr>

		{/foreach}
		   </table></div>
		  </td>
		 </tr>
		</table>

       <!--- end center column --->

</div>

<div id="right_content">
 	<div style="margin-left: 14px;"	>
	<a href="../pdf" title="Print your calendar" ><img src="../includes/Images/print_your_calendar.gif" alt="Print your calendar" /></a>
	<br />
	<br />
	</div>

	<div style="width: 180; margin-left:14px;">
					{foreach from=$ads180x400 item=ad}
						{$ad}<br /><br />
					{/foreach}
				</div>
	</div>


{include file="ggv10_footer.tpl"}
{/strip}
{*debug*}