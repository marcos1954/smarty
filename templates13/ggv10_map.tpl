{include file=$headerfilename}

{if not ($topcontent == NULL) }
	<div id="topcontent" class="gmap">
		{$topcontent}
	</div>
{/if}


{include file="ggv10_footer.tpl"}
{*debug*}