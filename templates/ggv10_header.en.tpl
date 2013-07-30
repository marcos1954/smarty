{strip}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>{$PAGE_TITLE|default:"gayguide Vallarta"}</title>
<link rel="stylesheet" type="text/css" href="{$DIR_WS_BASE}includes/GayGuideVallarta.css" media="all" />
{#extraCSS#}
{$headerExtra}
<script language="JavaScript1.2" src="../includes/ggv.js" type="text/javascript"></script>
<meta name="google-site-verification" content="oVWtUoxAz0oHmc7Ul2pjLnh5-RC-ej95h71EyU98omc" />
</head>
<body>
<div class="mobileToolbar">
	<a href="http://i.gpvr.mx">Download Gay Guide App</a> &nbsp;&nbsp;&nbsp;
	<a href="http://i.gpvr.mx">iPhone App</a>  &nbsp;&nbsp;&nbsp;
	<a href="http://i.gpvr.mx">iPad App</a>  &nbsp;&nbsp;&nbsp;
	<a href="http://i.gpvr.mx">Android App</a>
</div>
	
<div id="main">
	{if $TOPads950x150 != ''}
    	<div id="topBanner">
    	{$TOPads950x150}
    	</div>
    {else}
   		<div id="topBanner">
    	<a href="http://www.gayguidevallarta.com/qr.ggv122c.php">
    		<img height="150" width="950" src="{$DIR_WS_BASE}includes/Images/topBannerAPP.gif" />
    	</a>
   		</div>
     {/if}
	<div id="GayGuideVallarta_r1_c1">
    	<div id="tagline">Puerto Vallarta's official gay guide</div>
    	<div id="GayGuideVallarta_topmenu">
        	<a href="{$DIR_WS_BASE}" title="Home - Gay Guide Vallarta">Gay Vallarta</a>
        	&nbsp;&nbsp;|&nbsp;&nbsp;
        	<a href="{$DIR_WS_BASE}Calendar/" title="Gay Vallarta's Calendar">Calendar</a>
        	&nbsp;&nbsp;|&nbsp;&nbsp;
        	<a href="{$DIR_WS_BASE}GayPVMap/" title="Maps of Gay Puerto Vallarta">Map</a>
        	&nbsp;&nbsp;|&nbsp;&nbsp;
        	<a href="{$DIR_WS_BASE}ggv_links.php" title="List of all gay Vallarta businesses, agents, groups and links to their websites">Links</a>
        	&nbsp;&nbsp;|&nbsp;&nbsp;
        	<a href="{$DIR_WS_BASE}gayPVguide/" title="Our printed edition.  Download or find advertising information.">Guidebook</a>
        	&nbsp;&nbsp;|&nbsp;&nbsp;<a href="{$DIR_WS_BASE}/?forcemobile=true" title="mobile version of our website">Mobile</a>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	{$LANG_FLAGS}&nbsp;&nbsp;&nbsp;{$translatemenulink}
        </div>
    </div>
	<br class="clearfloat" />
  	<div id="underheader">


		<div id="colwrap1">
	  		<div id="GayGuideVallarta_sidemenu">
	  		{if $whatmenu eq "short"}
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Lodging information for tourists staying in gay Puerto Vallarta."> Lodging</a></div>
	  		{else}
	  			<div class="submenugroup"> LODGING</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Search/" title="Find all lodging by price for given dates."> Prices</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Gay oriented and gay owned places to stay in Puerto Vallarta."> Gay</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/resorts.html" title="Resort options."> Resorts</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/hotels.html" title="Hotel scale places."> Hotels</a></div>
	  			<!-- <div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/bnb.html"> B&amp;Bs</a></div>  -->
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/budget.html" title="The most cost effective places."> Budget</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/condos.html" title="Hundreds of condos conviently located."> Condos</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/villas.html" title="Villas fit for celebrities and groups."> Villas</a></div>
	  			<!-- <div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/agents.html"> Agents</a></div>  -->
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/sidetrips.html" title="Great places to visit in this region of Mexico."> Regional</a></div>
			{/if}
	  			<div class="submenugroup"> GAYGUIDE</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Daylife at the beach and on gay day tours"> Daylife</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="Vallarta's gay nightlife is rich and varied."> Nightlife</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="PV has some fabulous places to eat."> Restaurants</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="Our list of gyms, spas and masseurs."> Gym &amp; Spa</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Fine art galleries abound in Puerto Vallarta"> Art Galleries</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="From beachware to home decorating"> Shopping</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Misc services of interest."> Services</a></div>
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}GeneralInfo/" title="Some orientation on the non-gay part of Vallarta."> General Info</a></div>
	  		</div>
			<div id="GayGuideVallarta_r3_c1">
			</div>
			<div id="LeftColumnContent" ><center>

				 <a href="{$DIR_WS_BASE}gayPVguide/" title="">
					<img src="{$DIR_WS_BASE}includes/Images/GetPrintEdition.jpg" />
				</a>
				<br />
				 <a href="{$DIR_WS_BASE}Admin/">
					<img width="75" height="75" border="0" src="{$DIR_WS_BASE}images/IGGWlogo.gif" />
				 </a>
			</center></div>
		</div>


		<div id="main_container">
			<div style="width:300px; height: 30px;float: right">

				{literal}
<style>
.cse .gsc-control-cse, .gsc-control-cse {
background-color: rgb(255, 249, 245)!important;
border: none;
}
</style>
<script>
(function() {
  var cx = '016564231495750127829:fnjmdswjnro';
  var gcse = document.createElement('script'); gcse.type = 'text/javascript';
  gcse.async = true;
  gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
      '//www.google.com/cse/cse.js?cx=' + cx;
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(gcse, s);
})();
</script>
<gcse:search  linkTarget="_self"></gcse:search>
				{/literal}

			</div>
			<div id="breadcrumbs">
        		<p class="breadcrumbs">
                {$BREAD_CRUMBS_STRING}
				</p>
			</div>
			<br clear="right" />
			{/strip}