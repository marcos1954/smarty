<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>{$PAGE_TITLE|default:"gayguide Vallarta"}</title>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

{$cssExtra}

<link rel="stylesheet" type="text/css" href="{$DIR_WS_BASE}css/GayGuideVallarta.css" media="all" />
<link rel="apple-touch-icon" sizes="57x57" href="apple-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72" href="apple-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="114x114" href="apple-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="144x144" href="apple-icon-144x144.png" />

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/ggv_main.js"></script> 

{$headerExtra}
 
<meta name="google-site-verification" content="oVWtUoxAz0oHmc7Ul2pjLnh5-RC-ej95h71EyU98omc" />
</head>

<body>
<div class="mobileToolbar">
	<div id="undermenu-link">
		<a><img src="/includes/Images/download.png" height=25 width=auto></a>
	</div>
			
	<div class="social_icons_box">
		<ul class="social_icons">
                <li>
                    <a class="twitter" href="https://twitter.com/gayPVR" target="_blank"></a>
                </li>
                <li>
                    <a class="facebook" href="https://www.facebook.com/GayGuidePV" target="_blank"></a>
                </li>
                <li>
                    <a class="youtube" href="http://www.youtube.com/channel/UCa0EkvzFxOjarG4xyJjRDkw" target="_blank"></a>
                </li>
            </ul>
	</div>	
		
	
	
	<div class="lang-links">
		{$LANG_FLAGS}&nbsp;{$translatemenulink}
	</div>
	<div id="app-links">
		<a href="https://www.gayguidevallarta.com/touch">iPhone App</a>  &nbsp;&nbsp;&nbsp;
		<a href="https://www.gayguidevallarta.com/touch">iPad App</a>  &nbsp;&nbsp;&nbsp;
		<a href="https://www.gayguidevallarta.com/touch">Android App</a>
	</div>
</div>

<div id="under_menu" class="{if $frontpage}{$frontpage}{/if}">
	<div id="undermenu-box">
		
		
		
<div class="searchbox">	
{literal}
<style>
.cse .gsc-control-cse, .gsc-control-cse {
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


		
		<div align="center" onclick="location.href='/'" style="padding-top:10px">
			<a ><img src="/m/gPVR.png" width="187" height="115" /></a>
		</div>
		
		<div style="margin: 30px"></div>
		
		<div class="button"  onclick="location.href='/Calendar/index.php?display=day';">
			<a >Today</a>
		</div>
		
		<div class="button"  onclick="location.href='/GayPVMap'">
			<a  >Map</a>
		</div>
		
		<div class="button"  onclick="location.href='/Videos';">
			<a >Videos</a>
		</div>
		
		<div class="button"  onclick="location.href='/FacebookPhotos';">
			<a >Photos</a>
		</div>
		
		<div style="margin-top: 50px;"></div>
		
		<div class="button"  onclick="location.href='/Daylife/';">
			<a  >Daylife</a>
		</div>
		
		<div class="button"  onclick="location.href='/Nightlife/';">
			<a  >Nightlife</a>
		</div>
		
		<div class="button"  onclick="location.href='/Acts/';">
			<a >Shows</a>
		</div>
		
		<div class="button"  onclick="location.href='/Restaurants/';">
			<a >Restaurants</a>
		</div>
		
		<div class="button"  onclick="location.href='/GymSpa/';">
			<a  >Gym &amp; Spa</a>
		</div>
		
		
		<div class="button"  onclick="location.href='/Galleries/';">
			<a  >Galleries</a>
		</div>
		
		<div class="button"  onclick="location.href='/Shopping/';">
			<a  >Shopping</a>
		</div>
		
		<div class="button"  onclick="location.href='/RealEstate/';">
			<a  >Real Estate</a>
		</div>
		
		<div class="button"  onclick="location.href='/Services/';">
			<a  >Services</a>
		</div>
		
		<div style="margin-top: 50px;"></div>

		<div class="button"  onclick="location.href='/Lodging/gay.html?forcemobile=true';">
			<a  >Lodging</a>
		</div>
		
		<div class="button"  onclick="location.href='/Agents/';">
			<a  >Rental Agents</a>
		</div>

		<div class="button"  onclick="location.href='https://www.gayguidevallarta.com/touch';">
			<a  >Web App</a>
		</div>
	
	</div>
</div>

<div id="scrollableBlock" class="{if $frontpage}{$frontpage}{/if}">
	
<div id="main">
	{if $TOPads950x150 != ''}
    	<div id="topBanner">
    	{$TOPads950x150}
    	</div>
    {else}
   		<div id="topBanner">
    	<a href="https://www.gayguidevallarta.com/qr.ggv122c.php">
    		<img height="150" width="950" src="{$DIR_WS_BASE}includes/Images/topBannerAPP.gif" />
    	</a>
   		</div>
     {/if}
	<div id="GayGuideVallarta"></div>
	
	
	
	<div id="GayGuideVallarta_topmenu">
		<div class="topmenu-text">
		  <ul>
		   <li>
			<a href="{$DIR_WS_BASE}" title="Home - Gay Guide Vallarta">Home</a>
		   </li>
		   
		   <li  class="dropdownMenu">
			<a class="dropdownMenuLink" id="directory" >Gay Vallarta</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Gay Vallarta Directory</div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Lodging information for tourists staying in gay Puerto Vallarta."> Lodging</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Daylife at the beach and on gay day tours"> Daylife</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="The Vallarta gay nightlife is rich and varied."> Nightlife</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Shows</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="PV has some fabulous places to eat."> Restaurants</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="Our list of gyms, spas and masseurs."> Gym &amp; Spa</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Fine art galleries abound in Puerto Vallarta"> Art Galleries</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="From beachware to home decorating"> Shopping</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Misc services of interest."> Services</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}RealEstate/" title="Real Estate Offices, Brokers and Mortgages."> Real Estate</a></div>
			</div>
		   </li>
		   
		   <li  class="dropdownMenu">
			<a  class="dropdownMenuLink" href="{$DIR_WS_BASE}Calendar/" >Calendar</a>
		    <div class="menuBlock" >
				<div class="directoryMenuTitle">Events Calendar</div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/" title="Annual Highlights."> Annual Highlights</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?display=day" title="Day Calendar."> Full Day Calendar</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?display=month" title="Monthly Calendar."> Monthly Calendar</a></div>
				<br />
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?id=&code=&display=month&category=2,19,20&Go=Go" title="Show Calendar."> Show Calendar</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?id=&code=&display=month&category=3&Go=Go" title="Tour Calendar."> Tour Calendar</a></div>
			</div>
		   </li>
		   
		   <li  class="dropdownMenu">
			<a  class="dropdownMenuLink"  href="{$DIR_WS_BASE}GayPVMap/" title="Map of Gay Puerto Vallarta">Map</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Gay Vallarta Maps</div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php" title="Map of Gay Puerto Vallarta">Gay Vallarta Map</a></div>
				<br />
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php?cat=bars&catlist=bars" title="Bar Map of Gay Puerto Vallarta">Bar Map</a></div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php?cat=rest&catlist=rest" title="Restaurant Map of Gay Puerto Vallarta">Restaurant Map</a></div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php?cat=hotel&catlist=hotel" title="Hotel Map of Gay Puerto Vallarta">Hotel Map</a></div>
			</div>
		   </li>
		   
		    <li  class="dropdownMenu">
			<a   class="dropdownMenuLink" href="{$DIR_WS_BASE}FacebookPhotos/" >Photos</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Gay Vallarta Photos</div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}FacebookPhotos/" title="Photos of Gay Puerto Vallarta">Facebook Albums</a></div>
			</div>
		   </li>
		   
		   <li  class="dropdownMenu">
			<a   class="dropdownMenuLink" href="{$DIR_WS_BASE}Videos/" >Videos</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Gay Vallarta Videos</div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}Videos/" title="Videos of Gay Puerto Vallarta">You-tube Videos</a></div>
			</div>
		   </li>
		   
		   <li  class="dropdownMenu">
			<a   class="dropdownMenuLink" href="{$DIR_WS_BASE}gayPVguide/" >Guidebook</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Gay Guide Vallarta</div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}gayPVguide/index.php" title="Map of Gay Puerto Vallarta">Print Edition</a></div>
				<br />
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}Advertise/index.php" title="">Advertise</a></div>
				</div>
		   </li>
		  </ul>
		</div>
	</div>

	<br class="clearfloat" />
  	<div id="underheader">
		{*
		 *
		 * non-mobile menu on left side
		 *
		 *
		 *
		 *}
		
		<div id="LeftSide">
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
				<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Agents/" title="Vacation Rental Agencies."> Agents</a></div>
			{/if}
	  			<div class="submenugroup"> GAYGUIDE</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Daylife at the beach and on gay day tours"> Daylife</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="The Vallarta gay nightlife is rich and varied."> Nightlife</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Shows</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="PV has some fabulous places to eat."> Restaurants</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="Our list of gyms, spas and masseurs."> Gym &amp; Spa</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Fine art galleries abound in Puerto Vallarta"> Art Galleries</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="From beachware to home decorating"> Shopping</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Misc services of interest."> Services</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}RealEstate/" title="Real Estate Offices, Brokers and Mortgages."> Real Estate</a></div>
				<br />
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}GeneralInfo/" title="Some orientation on the non-gay part of Vallarta."> General Info</a></div>

	  		</div>
			<div id="GayGuideVallarta_r3_c1"></div>
			<div id="LeftColumnContent" >
				<div class="printEditionText" style="margin: 0 10px; background-color: black; color: white;font-family: sans-serif;padding: 4px;">Print Edition</div>
				<a href="{$DIR_WS_BASE}gayPVguide/" title=""><img style="width: 180px;height: auto;" src="{$DIR_WS_BASE}includes/Images/Cover171.a.180x360.jpg" /></a><br /><br />
			</div>
			{* include file="ggv10_right_content.tpl" *}
			{if not ($ads180x400 == NULL) }
				<div id="ads180x400">
					{foreach from=$ads180x400 item=ad}
						{$ad}
						<br /><br /><br />
					{/foreach}
				</div>
			{/if}
		</div>

		<div class="main_container">
			<div class="searchbox">
				<gcse:search  linkTarget="_self"></gcse:search>
			</div>
			<div id="breadcrumbs">
        		 <p class="breadcrumbs">{$BREAD_CRUMBS_STRING}</p>
			</div>
			<br clear="right"/>
