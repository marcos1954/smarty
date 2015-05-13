{*debug*}
{strip}
{config_load file="ggv_dayCal.conf"}
{include file="ggv_header.tpl"}
<center>
<table border="0" cellpadding="0" cellspacing="0" width="{#PAGEWIDTH#}">
  <tr>
    <td width="100" valign="top">
    	{include file="ggv_menu.tpl"}
	</td>
    <td width="100%" valign="top">
      <table bgcolor="#FFF4E0" valign="top" width="100%" height="600" border="0"
        cellpadding="20" cellspacing="0">
         <tr>
           <td  valign="top" >
             <div align="center">
				<table class="header" border="0" cellpadding="9" cellspacing="0" width="100%">
				<tr><td width="25%" class="header" align="left" wrap>
					Not all calendar items may be listed.  Be sure to check the category list below.
				</td><td  width="50%" align="center" nowrap>
					<h1 class="month"><center>gayguide Vallarta<br>Calendar</center></h1>
					<h3 class="month"><center>{$pagename}</center></h3>
				</td><td  width="25%"  class="header" align="right">
					{$pdfCalendarLink}
				</td></tr></table>
			</div>
           	<form name="jump-category" method="get" action="{$action}">
	 			{$hidden_fields}
	 			<table height="50" width="100%"><tr>
	   			<td  valign="bottom" align="left" nowrap>
           			<span style="font-family: verdana; font-weight: bold; font-size: 9pt">display category</span><br>
					{$select_category_html}
	    			<input type="submit" name="Go" value="Go">
	   			</td>
	   			<td  valign="top" align="center" nowrap>
					<table cellpadding="4"><tr><td>
	    				<a href="{$prev_month_href}"><img border="0"  src="Images/leftbutton.gif"></a>
					</td><td align="center">
	    				<span class="dayviewdate">{$this_month}<br />{$this_year}</span>
					</td><td>
	    				<a href="{$next_month_href}"><img border="0"  src="Images/rightbutton.gif"></a>
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
			{$month_calendar}
		</td>
       </tr>
     </table>
    </td>
  </tr>
</table>
<br clear="all" />
</center>
{include file="ggv_footer.tpl"}
{/strip}