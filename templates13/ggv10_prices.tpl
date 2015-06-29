{config_load file="ggv_search.conf"}
{include file=$headerfilename}

<div id="main_content" class="lodging_prices">
	
	{include file="searchControlBox.tpl"}
	{include file="searchMainLoop.tpl"}
	{include file="searchControlBottom.tpl"}

</div>

{include file="ggv10_footer.tpl"}
{*debug*}