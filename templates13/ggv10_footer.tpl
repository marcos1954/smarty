		<br clear="all" />
		</div>
	</div>
	<br clear="all" />
	<br  />
  </div>
  <div class="translatorcredit">{$translatorcreditline}</div>
  <div class="eeo">
		Gay Guide Vallarta is an Equal Opportunity Employer and Provider: We don't discriminate against any individuals or groups on the basis of ethnicity, national origin, gender, sexual orientation, marital status, age, disabilities, religion or political affiliations.
  </div>
  
{*/strip*}

{if not ( false && $bottomAd == NULL )}
  <div id = "dv" style = "z-index:3 !important; display: none; position:fixed; bottom:0;left:0px;width: 100%; height:0px; ">
	<div style=" width: 950px; margin: 0px auto 0px auto;">
	  {if $bottomAd != ''}
		{$bottomAd}
	  {else}
		<a href="http://www.gayguidevallarta.com/touch">
		  <img  height="150" width="950" src="{$DIR_WS_BASE}includes/Images/topBannerAPP.gif" />
		</a>
	  {/if}
	</div>
  </div>
<!--  
  {if not $NOjquery}
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  {/if}
  -->
  <script type="text/javascript">
	{literal}
	  $().ready(function () {
		if (Math.random() < 0.50) {
		  setTimeout(function () {
			$("#dv").show();
			$("#dv").animate({ height: '150px' }, 1000);
		  }, 2000);
		  setTimeout(function () {
			$("#dv").animate({ height: '0' }, 400, 'swing', function(){
			  $("#dv").hide();
			});
		  }, 8000);	
		}
	  });
	{/literal}
  </script>
{/if}
