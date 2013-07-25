{*debug*}
{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}


<div id="topcontent" >
<h1 class="month">{$H1_TITLE}</h1>
<h3 class="month">{$pagename}</h3>
	<div>
      <table valign="top" width="730" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td  valign="top" >

				<table class="header" border="0" cellpadding="9" cellspacing="0" width="730">
				<tr><td width="530" class="header" align="left" nowrap>
					{$BLURB_checkCatList}
				
				</td><td  width="200"  class="header" align="right">
					{$pdfCalendarLink}
				</td></tr></table>

           		<form name="jump-category" method="get" action="{$action}">
	 			{$hidden_fields}
	 			
	 			<table height="50" width="730"><tr>
	   			<td  valign="bottom" align="left" nowrap>
           			<span style="font-family: verdana; font-weight: bold; font-size: 9pt">{$BLURB_displayCatList}</span><br>
					{$select_category_html}
	    			<input type="submit" name="Go" value="Go">
	   			</td>
	   			
	   			<td  valign="top" align="center" nowrap>
					<table cellpadding="4"><tr><td>
	    				<a href="{$prev_month_href}"><img style="padding-left: 0px;" border="0"  src="Images/leftbutton.gif"></a>
					</td><td align="center">
	    				<span class="dayviewdate">{$this_month}<br />{$this_year}</span>
					</td><td>
	    				<a href="{$next_month_href}"><img style="padding-left: 0px;"  border="0"  src="Images/rightbutton.gif"></a>
					</td></tr></table>
	   			</td>
	   			
           	   	<td  align="right" valign="bottom" nowrap>
	   				<select name="month" size="1">
	    				{html_options options=$month_list selected=$month_selected}
	    			</select>&nbsp;
	    			<select name="year" size="1">
	    				{html_options options=$year_list selected=$year_selected}
					</select>&nbsp;
	    			<input type="submit" name="Go" value="Go">
	   			</td>
	  			</tr></table>
				</form>
			</td></tr></table>
			<br />
			{$month_calendar}
			
			
	<br clear="all" />
	</div>
</div> <!-- topcontent -->

{include file="ggv10_footer.tpl"}
