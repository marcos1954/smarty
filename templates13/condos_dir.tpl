{config_load file="ggv_search.conf"}
{include file="ggv_header.tpl"}
<center>
<table border="0" cellpadding="0" cellspacing="0" width="{#PAGEWIDTH#}">
 <tr>
  <td width=100 valign=top nowrap>
  	{include file="ggv_menu.tpl" version="lodging"}
  </td>
{strip}
  <td width=100% valign=top align=left>
   <table bgcolor="#FFF4E0" width="100%" border="0" cellpadding="10" cellspacing="0">
    <tr>
     <td height="650" valign=top align="center">
     {************  MEAT GOES HERE  *************}
     	<table bgcolor="#FFF4E0" width="98%" height="10" border="0" cellpadding="5" cellspacing="0">
		 <tr>
		   <td  valign="top" align="left" colspan="2" width="49%">
		   
		    <div align="left">
		     <table border="0" cellpadding="9" cellspacing="0" width="175" align="right" bordercolorlight="#000000" bordercolordark="#000000" bordercolor="#FFBFFF" background="../images/gayguidesearch_bk.gif">
		      <tr>
		       <td height="75">&nbsp</td>
		      </tr>
		      <tr>
	           <td >
	            {php}include('../Search/remote_search.php');{/php}
		       </td>
	          </tr>
	         </table>
		    </div>
		    
	        <h1 align="left">Puerto Vallarta Lodging</h1>
		    <h2 align="left">{$LODGING_DIR_TITLE}</h2>
		    <p class="main" style="margin-left: 7; margin-right: 7" align="left">
		     {$LODGING_DIR_TEXT}
		    </p><br clear="all">
		   </td>
		 </tr>
		 <tr><td><table border="0" cellspacing=1 width="{#SEARCHWIDTH#}">
		 {assign var=lastid value=""}
		 {* BEGIN MAIN LOOP OF PREMIUM LISTINGS *}
		 {foreach from=$premium_listings item=entry}
		 {if $entry.location_name ne $lastid}
		  {if $lastid ne ""} </table></div><br /> {/if}
		   {assign var=lastid value=$entry.location_name}
		   <tr>
		   <td valign="top" align="left" bgcolor="#FFF4E0" width="{#SEARCHWIDTH#}">	
		   <div class="condobox">	
		    <table width="{#INNERSEARCHWIDTH#}" border="0" cellspacing="0" cellpadding="2">
		     <tr>
		      <td colspan=2 valign="top" align="left" bgcolor="#908CFF" height="12" class="condotitle" width="49%">
				{$entry.hotel_tag}
			  </td>
			 </tr>
			 <tr>
			 {if $entry.lodging_logo_src ne ''}
			  <td vAlign=top  width=110>
			   <a href="{$entry.lodging_logo_src}">
			    <img border="0" 
                  src="{$entry.lodging_logo_src}" 
                  width="{$entry.lodging_logo_width}" 
                  height="{$entry.lodging_logo_height}"
                  align="left">
			   </a>
			  </td>
			 {else}
			  <td width=110>&nbsp;</td>
			 {/if}

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
		    <table width="{#INNERSEARCHWIDTH#}">
		    <tr bgcolor="#908CFF">
		     <th class="condoRh" nowrap>agency</th>
		     <th class="condoRh" nowrap>unit</th>
		     <th class="condoRh" nowrap>max</th>
		     <th class="condoRh">description</th>
		    </tr>
		    {counter name=tabcounter print=no assign=grpid}
         {/if}
                <tr bgcolor={cycle values="`$smarty.config.searchcycleBgColor`" name="`$grpid`"}>
                 <td class="condoZ" nowrap>
                 {if $entry.acct_url ne ""}<a href="{$entry.acct_url}" class="condoZlink">{$entry.acct_name|truncate:10}</a>
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
       </td>
       <!--- end center column --->

       <td valign="top" width="180">
     <div align="center">
     {$AD_ZONE0}
     <br /><br />
     {$AD_ZONE1}
     <br /><br />
     {$AD_ZONE2}
     <br /><br />
     {$AD_ZONE3}
     <br /><br />
     {$AD_ZONE4}
     <br /><br />
     {$AD_ZONE5}
     <br /><br />
     {$AD_ZONE6}
     <br /><br />
     {$AD_ZONE7}
     <br /><br />
     {$AD_ZONE8}
     <br /><br />
     {$AD_ZONE9}
     <br /><br />
     {$AD_ZONE10}
     <br /><br />
     {$AD_ZONE11}
     <br /><br />
     {$AD_ZONE12}
     </div>
     
     {*************  END MEAT  *************}
	 </td>
	</tr>
   </table>
  </td>
 </tr>
</table>  </td>
 </tr>
</table><br clear="all">
</center>
{include file="ggv_footer.tpl"}
{/strip}
{*debug*}