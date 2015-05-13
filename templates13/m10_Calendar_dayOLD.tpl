{strip}{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}
<style>{literal}
#menu  div {
box-align: center;
}
#menu a {
color: white;
text-decoration: none;
}
#menu ul {
margin: 0px auto 0px 10px;
padding: 0px auto 0px 10px;

}
#menu ul li {
	background-color: darkgreen;
	text-align: center;
	list-style-type: none;
	margin: 0px;
	padding: auto;
	font-size: 14px;
	font-weight: bold;
	color: white;
	float:left;
	width: 23%;
	border: 1px solid white;
}
#menu ul li a {display:block;}
{/literal}
</style>
<div id="main_content">
 <br />
 <div id="menu" style="height: 25px;  width: 100%;margin: 0px; padding: 0px;">
 <ul style="width: 90%; margin: auto; padding:10px;">
 <li >
 	<a href="{$this_url}&sort=time" >time</a>
 </li>
 <li>
 	<a href="{$this_url}&sort=events" >events</a>
 </li>
 <li >
 	<a href="{$this_url}&sort=drinks" >drinks</a>
 </li>
 <li>
 	<a href="{$this_url}&sort=all" >all</a>
 </li>
 </ul></div>

 <!-- <h2 style="clear: both;">{$H1}</h2>  --><br />
 <div style="text-align: center; padding: 30px 0px 10px 0px;">
 <a href="{$yesterdayHREF}"><img style="padding-left: 0px; vertical-align: middle;" class="buttons" border="0"   src="Images/leftbutton.gif"  width="20" height="30"></a>
 &nbsp;
 <span style="font-size: 24px; font-weight: bold;">{$dateformatted}</span>
 &nbsp;
 <a href="{$tommorrowHREF}"><img style="padding-left: 0px; vertical-align: middle;"  class="buttons" border="0"   src="Images/rightbutton.gif" width="20" height="30"></a>
<br />
 {$transSunsetToday} {$sunset_today}
</div>

<div>
{* SPECIAL EVENTS *}
{if not ($special_events == NULL) }
 {assign var="betweenListing" value="false"}
 <h2 style="margin: 10px 0px 0px 0px; ">{$transSpecialEvent}</h2>
 {foreach from=$special_events item=evnt}
  {if $betweenListing == "true"}
	<br clear="all" /><hr style="padding: 0px 0px 0px 0px;" />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>
  {/foreach}
 {/if}
{* TOUR EVENTS *}
 {if not ($tour_events == NULL) }
  {assign var="betweenListing" value="false"}
 <h2 style="margin: 10px 0px 0px 0px; ">{$transGayToursToday}</h2>
 {foreach from=$tour_events item=evnt}
  {if $betweenListing == "true"}
	<br clear="all" /><hr  />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>
  {/foreach}
 {/if}
{* ALL DAY EVENTS *}
{if not ($today_events == NULL) }
 {assign var="betweenListing" value="false"}
 <h2 style="margin: 10px 0px 0px 0px; ">{$transEventsNoStartTime}</h2>
 {foreach from=$today_events item=evnt}
  {if $betweenListing == "true"}
	<br clear="all" /><hr  />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>
  {/foreach}
 {/if}
{* BY TIME EVENTS *}
{if not ($events == NULL) }
 {assign var="betweenListing" value="false"}
  <h2  style="margin: 10px 0px 0px 0px; padding: 0px;" >{$transEventsByStartTime}</h2>
  {foreach from=$events item=evnt}
   {if $betweenListing == "true"}
	<br clear="all" /><hr  />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>
  {/foreach}
 {/if}
{* BAR SPECIAL EVENTS *}
 {if not ($bars_events == NULL) }

  {assign var="betweenListing" value="false"}
  <h2  style="margin: 10px 0px 0px 0px; padding: 0px;" >{$transBarSpecialsToday}</h2>
  {foreach from=$bars_events item=evnt}
   {if $betweenListing == "true"}
	<br clear="all" /><hr  />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>
  {/foreach}
 {/if}
 {* HAPPY HOUR EVENTS *}
  {if not ($happy_events == NULL) }
   {assign var="betweenListing" value="false"}
  <h2  style="margin: 10px 0px 0px 0px; padding: 0px;" >{$transHappyHoursToday}</h2>
  {foreach from=$happy_events item=evnt}
   {if $betweenListing == "true"}
	<br clear="all" /><hr  />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>
  {/foreach}
 {/if}

  {* RESTAURANT SPECIAL EVENTS *}
  {if not ($restaurant_events == NULL) }
   {assign var="betweenListing" value="false"}
  <h2  style="margin: 10px 0px 0px 0px; padding: 0px;" >{$transRestSpecialsToday}</h2>
  {foreach from=$restaurant_events item=evnt}
   {if $betweenListing == "true"}
	<br clear="all" /><hr  />
 {else}
 	{assign var="betweenListing" value="true"}
 {/if}
   <div  style="padding-left: 0px; margin-top: 0px; padding-top: 10px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore" style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
     <a href="{$evnt.moreEventLink}"><img valign="top" border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
    <span style="font-size: 14px;"><strong>&nbsp;{$evnt.catnameEvent}</strong></span>
    <div style="padding-left: 10px; margin-top: 0px; padding-top: 0px;">
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div></div>

  {/foreach}
 {/if}

 {if false && not ($closed_list == NULL) }
  <h2>{$transClosedToday}</h2>
  {foreach from=$closed_list item=evnt}
   <div  style="padding-left: 15px;">
    {if $evnt.moreEventLink != ''}
     <div class="listmore">
     <a href="{$evnt.moreEventLink}"><img border="0" height="25" width="25" src="/m/more.png"></a>
     </div>
    {/if}
	<b><span class="eventdaycat">{$evnt.nameEvent}</span></b>
	{if $evnt.locationEvent != ''}
	 <span class="eventdaylocation"> &nbsp;&nbsp;@ {$evnt.locationEvent}</span>
	{/if}
	<br />
	{if  $evnt.timesEvent != ''}
	 <span class="eventdaytime">{$evnt.timesEvent} <br></span>
	{/if}
	<span class="eventdaydesc">{$evnt.descEvent}</span>
	&nbsp;
   </div>
   <hr />
  {/foreach}
 {/if}
 </div>
</div>
{include file="m10_footer.tpl"}{/strip}