{strip}{config_load file="ggv_search.conf"}
{include file=$headerfilename}
<div id="main_content">
<br />
<div style="float:left; width: 110px; padding: 0px 0px 10px 5px;">
{if $event_src != ''}
<img border="0" src="{$event_src}" width="{$event_width}" height="{$event_height}" align="left">
{else}
&nbsp;
{/if}
</div>

<div style="padding-left: 115px;">
<div style="font-size: 14px;"><strong>{$biz_name}</strong></div>

{if $biz_addr1  ||  $biz_phone}
 {if $biz_addr1 != ''} {$biz_addr1}<br />{/if}
 {if $biz_addr2 != ''} {$biz_addr2}<br />{/if}
 {if $biz_addr3 != ''} {$biz_addr3}<br />{/if}
 {if $biz_phone != ''} Tel. {$biz_phone}<br />{/if}
{/if}
<br />
<a href="{$listinfo_url}"><small>{$list_more_url}</small></a>
{if $event_url != ''}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="{$event_url}"><small>{$Website}</small></a>{/if}
<br />


</div>
<div style="clear: both; padding: 20px 5px 10px 5px;">
<div style="font-size: 16px;"><strong><span style="color: red;">{$event_name}</span></strong></div>

{if $category_name != ''}<span class="eventcategory">{$category_name}&nbsp;</span>{/if}
<br />
<span class="eventtimes">
{if !$all_day_event}{$event_times}&nbsp;{/if}
{if $event_location  != ''} @ {$event_location}{/if}
<br />
{if $all_day_event}<br />All Day Event<br /><br />{/if}
{$event_recurs}
</span>

<p class="eventdescshort">{$event_desc_short|nl2br}</p>
<p class="eventdesclong">
{$event_desclong|nl2br}
</p>
</div>
<br />
{if $biz_map != ''}
<center><a href="{$biz_mapbig}"><img width="200" height="300" src="{$biz_map}" /></a></center>
<br />
{/if}

{include file="m10_footer.tpl"}
{/strip}