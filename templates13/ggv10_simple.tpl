
{include file=$headerfilename}

{if not ($topcontent == NULL) }
	<div id="topcontent">
		{$topcontent}
	</div>
{/if}

{if not ($main_content == NULL) }
     <div id="main_content">

		{$main_content}

     </div>
{/if}

{include file="ggv10_right_content.tpl"}

{include file="ggv10_footer.tpl"}
{*debug*}