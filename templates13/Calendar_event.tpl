{strip}
{config_load file="ggv_search.conf"}
{include file="ggv_header.tpl"}
<center>
<table border="0" cellpadding="0" cellspacing="0" width="{#PAGEWIDTH#}">
 <tr>
  <td width=100 valign=top nowrap>
  	{include file="ggv_menu.tpl"}
  </td>
  <td width=100% valign=top align=left>
   <table bgcolor="#FFF4E0" width="100%" border="0" cellpadding="25" cellspacing="0">
    <tr>
     <td height="600" valign=top>
      <div align="CENTER">
		 <table width="480" border="0" cellspacing="0" cellpadding="0" ><tr><td>
			 <br>
			 <table align="center">
			 <tr><td valign="top">
	 		  {if $event_src != ''}
		     	<img border="0" src="{$event_src}" width="{$event_width}" height="{$event_height}" align="left">
		   	  {else}
		     	&nbsp;
		   	  {/if}
			  </td><td>
				<p><font face="Arial" color="#0099CC" size="5"><b>{$event_name}</b></font>
				<br />
				{if $event_url != ''}<br /><a href="{$event_url}"><small>{$event_url_text}</small></a>{/if}
				<br />
				<br><a  href="{$event_cal_url}"><small>{$event_cal_url_text}</small></a>
				<br /><br />
				<font face="Arial" color="#808080" size="2">
				{if $category_name != ''}<br><span class="eventcategory">{$category_name}&nbsp;</span>{/if}
				{if !$all_day_event}<span class="eventtimes">{$event_times}&nbsp;</span>{/if}
				{if $event_location  != ''} at {$event_location}{/if}
				<br><br>
				{if $all_day_event}<br>All Day Event<br><br>{/if}
				{$event_recurs}
				</p>
				<p class="eventdescshort">{$event_desc_short|nl2br}</p>
			  </td></tr>
			  </table>
			  <br clear="left">
			  <p><font face="Verdana" color="#000000" size="2"><div align="center"><center>
				<table border="0" cellpadding="0" cellspacing="2" width="210" align="right">
				<tr><td>
			  		{if $event_pix1_src != ''}<img border="0" src="{$event_pix1_src}" width="{$event_pix1_width}" height="{$event_pix1_height}" align="left"></td></tr><tr><td>{/if}
			  		{if $event_pix2_src != ''}<img border="0" src="{$event_pix2_src}" width="{$event_pix2_width}" height="{$event_pix2_height}" align="left"></td></tr><tr><td>{/if}
			  		{if $event_pix3_src != ''}<img border="0" src="{$event_pix3_src}" width="{$event_pix3_width}" height="{$event_pix3_height}" align="left"></td></tr><tr><td>{/if}
			  		&nbsp;
				</td></tr>
				</table>
			  </center></div></font></p>
			  <p class="eventdesclong">
			  {$event_desclong|nl2br}
			  </p>
			  <br clear="all">
		</td></tr></table>
	 </div>
     <!---  end main body goes here ----->
	</td>
	</tr>
   </table>
  </td>
 </tr>
</table>
<br clear="all">
{include file="ggv_footer.tpl"}
{/strip}
{*debug*}