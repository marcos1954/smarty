{strip}
{include file=$headerfilename}

{if not ($topcontent == NULL) }
	<div id="topcontent" style="margin-left: 0 !important;" >
		{$topcontent}
	</div>
{/if}

{if not ($main_content == NULL) }
<div id="main_content" style="width: 705px">
	{$rightside}
	{$main_content}
</div>
{/if}
{include file="ggv12_footer.tpl"}
{/strip}