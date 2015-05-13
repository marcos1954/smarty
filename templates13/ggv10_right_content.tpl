{strip}
{if ($right_content == NULL) }
	<div id="right_content">
 	<center>
 	<div style="width: 180; margin-left:14px;">
					{foreach from=$TOPads180x400 item=ad}
						{$ad}<br /><br /><br />
					{/foreach}
				</div>

	{if ($NOright_searchbox != TRUE) }
	<div style="margin-right: 10px;" id="remote_search_box">
		<div id="remote_search_form">
	      {php}echo remote_search();{/php}
		</div>
	</div>

	<br clear="all" />
	<br />
	</center>

	<div style="margin-left: 14px;"	>
	<a href="../pdf" title="Print your calendar" ><img src="../includes/Images/print_your_calendar.gif" alt="Print your calendar" /></a>
	<br />
	<br />
	</div>

	{/if}
	<div style="width: 180; margin-left:14px;">
					{foreach from=$ads180x400 item=ad}
						{$ad}<br /><br /><br />
					{/foreach}
				</div>
	</div>
{else}
	<div id="right_content">
		{$right_content}
	</div>
{/if}
{/strip}