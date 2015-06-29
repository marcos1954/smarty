{include file=$headerfilename}

{if not ($maincontent == NULL) }
	<div id="main_content" >
		{$maincontent}
	</div>
{/if}

{include file="ggv10_footer.tpl"}
