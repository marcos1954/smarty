{include file=$headerfilename}
{if not ($main_content == NULL) }
 <div id="main_content"> 
 {$main_content}
 </div>
{/if}
{include file="m10_footer.tpl"}
{*debug*}