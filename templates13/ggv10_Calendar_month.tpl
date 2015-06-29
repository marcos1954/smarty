{*debug*}
{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}

<div id="topcontent" >
<h1 class="month">{$H1_TITLE}</h1>
<h3 class="month">{$pagename}</h3>
	<div>
		<table class="header" border="0" cellpadding="9" cellspacing="0" width="730">
		 <tr>
		 <td width="530" class="header" align="left" nowrap>
		  {$BLURB_checkCatList}
		 </td>
		 <td  width="200"  class="header" align="right">
		  {$pdfCalendarLink}
		 </td></tr>
		</table>
		<br />

		<div class="loader">{$ajaxOutput}</div>

		<br clear="all" />
	</div>
</div>

{include file="ggv10_footer.tpl"}