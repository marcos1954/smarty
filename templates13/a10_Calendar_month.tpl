{config_load file="ggv_dayCal.conf"}
<html>
<head>
{$headerExtra}
</head>
<body>

<div style="width: {$tablewidth}">
	<div style="text-align: center; ">
		<form name="jump-category" >
		{$hidden_fields}
      		<div id="catselectdiv" style="float: left;">
					{$select_category_html}
			</div>
		    <div style="float: right;">
				<div style="float:left;  width: 36px; padding: 6px 5px  0px 0 ;" >
					<img id="loading" style="display:none;" src="{$loading}" />
				</div>
				{$select_date_html}
			</div>
			<div id="ggv_cal_controlbar" style="width: {$tablewidth}px !important;">
				<span link="{$prev_month_href}" class="ajaxlink">
					<img height=24 width=24   style="padding-left: 0px;" border="0"  src="http://www.gayguidevallarta.com/Calendar/Images/rewind.png">
				</span>
				<span class="dayviewdate">&nbsp;{$this_month} {$this_year}&nbsp;</span>
				<span link="{$next_month_href}" class="ajaxlink">
					<img height=24 width=24  style="padding-left: 0px;"  border="0"  src="http://www.gayguidevallarta.com/Calendar/Images/forward.png">
				</span>
			</div>
		</form>
		{$month_calendar}
	</div>
</div>
</body>
</html>
