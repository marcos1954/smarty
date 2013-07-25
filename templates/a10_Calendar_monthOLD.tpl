{*debug*}
{config_load file="ggv_dayCal.conf"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{$headerExtra}
</head>
<body>
{strip}
	<div>
      <table valign="top" width="{$tablewidth}" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td  valign="top" >
           		<form name="jump-category" >
	 			{$hidden_fields}
	 			<table height="50" width="100%"><tr>
	   			<td  valign="bottom" align="left"  nowrap>
           			<span style="font-family: verdana; font-weight: bold; font-size: 9pt">{$BLURB_displayCatList}</span><br>
					{$select_category_html}
	   			</td>
	   			<td  valign="bottom" align="center"  nowrap>
					<table cellpadding="4"><tr><td>
	    				<span link="{$prev_month_href}" class="ajaxlink"><img height=24 width=24   style="padding-left: 0px;" border="0"  src="./rewind.png"></span>
					</td><td align="center">
	    				<span class="dayviewdate">{$this_month} {$this_year}</span>
					</td><td>
	    				<span link="{$next_month_href}" class="ajaxlink"><i><img height=24 width=24  style="padding-left: 0px;"  border="0"  src="./forward.png"></span>
					</td></tr></table>
	   			</td>
	   			<td  width="200" valign="bottom" align="right" nowrap>
					<div style="float:left; display:none; padding: 6px 5px  0px 0 ;" id="loading"><img src="ajax-loader.gif" /></div>
					{$select_date_html}
	   			</td>

	  			</tr></table>
				</form>
			</td></tr></table>
			{$month_calendar}
	<br clear="all" />{/strip}
	</div>

