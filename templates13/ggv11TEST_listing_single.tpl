
{include file=$headerfilename}


<!--
		<div id="Listing_right_column_pix">
			  {if $list_map != ''}
			  	<center><span style="font-size: 9px;">{$list_map_explain}</span></center>

			  	<a href="{$list_mapbig}"><img width="200" height="300" src="{$list_map}" /></a>
			  	<br />
     		  {/if}
			  {if $list_pix1_src != ''}
			  	<img 	border="0" src="{$list_pix1_src}" width="{$list_pix1_width}" height="{$list_pix1_height}" >
			  	<br />
			  {/if}
			  {if $list_pix2_src != ''}
			  	<img 	border="0" src="{$list_pix2_src}" width="{$list_pix2_width}" height="{$list_pix2_height}" >
			  	<br />
			  {/if}
			  {if $list_pix3_src != ''}
			  	<img 	border="0" src="{$list_pix3_src}" width="{$list_pix3_width}" height="{$list_pix3_height}" >
			  	<br />
			  {/if}
			   {if $list_pix4_src != ''}
			  	<img 	border="0" src="{$list_pix4_src}" width="{$list_pix4_width}" height="{$list_pix4_height}" >
			  	<br />
			  {/if} {if $list_pix5_src != ''}
			  	<img 	border="0" src="{$list_pix5_src}" width="{$list_pix5_width}" height="{$list_pix5_height}" >
			  	<br />
			  {/if} {if $list_pix6_src != ''}
			  	<img 	border="0" src="{$list_pix6_src}" width="{$list_pix6_width}" height="{$list_pix6_height}" >
			  	<br />
			  {/if} {if $list_pix7_src != ''}
			  	<img 	border="0" src="{$list_pix7_src}" width="{$list_pix7_width}" height="{$list_pix7_height}" >
			  	<br />
			  {/if} {if $list_pix8_src != ''}
			  	<img 	border="0" src="{$list_pix8_src}" width="{$list_pix8_width}" height="{$list_pix8_height}" >
			  	<br />
			  {/if} {if $list_pix9_src != ''}
			  	<img 	border="0" src="{$list_pix9_src}" width="{$list_pix9_width}" height="{$list_pix9_height}" >
			  	<br />
			  {/if}

		</div>  ---- end right column pix ---->



     	<div id="main_content">

 		  <div id="Listing_full_content">




	<br clear="all" />


				<div id="ggv_cal"  class="ggv-ctlbox-content">
					<div id="loader" class="loader" >{$ajaxOutput}</div>
				</div>


			<br clear="all"


			</div>
</div>
	</div>
{include file="ggv10_footer.tpl"}
