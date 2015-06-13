<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>{$PAGE_TITLE|default:"gayguide Vallarta"}</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

{$cssExtra}
<link rel="stylesheet" type="text/css" href="{$DIR_WS_BASE}css/GayGuideVallarta.css" media="all" />

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>
<script language="JavaScript" type="text/javascript" src="/js/ggv_main.js"></script> 

{$headerExtra}

<link rel="apple-touch-icon" sizes="57x57" href="apple-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72" href="apple-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="114x114" href="apple-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="144x144" href="apple-icon-144x144.png" />

<meta name="google-site-verification" content="oVWtUoxAz0oHmc7Ul2pjLnh5-RC-ej95h71EyU98omc" />
</head>

<body>
<div class="mobileToolbar">
	<div id="undermenu-link">
		<a><img src="/includes/Images/download.png" height=25 width=auto></a>
	</div>
		<div class="lang-links">
		{$LANG_FLAGS}&nbsp;{$translatemenulink}
	</div>
	<div id="app-links">
		<a href="http://i.gpvr.mx">Download Gay Guide App</a> &nbsp;&nbsp;&nbsp;
		<a href="http://i.gpvr.mx">iPhone App</a>  &nbsp;&nbsp;&nbsp;
		<a href="http://i.gpvr.mx">iPad App</a>  &nbsp;&nbsp;&nbsp;
		<a href="http://i.gpvr.mx">Android App</a>
	</div>

</div>
<div id="under_menu" class="{if $frontpage}{$frontpage}{/if}">
	<div id="undermenu-box">
		
	
		<div align="center" style="padding-top:10px">
			<a href="/"><img src="/m/gPVR.png" width="187" height="115" /></a>
		</div>
	
		
		
		<div style="margin: 30px"></div>
		<div class="button"  onclick="location.href='/Calendar/index.php?display=day';">
			<a href="/Calendar/index.php?display=day" >Today</span>
		</div>
		
		<div class="button"  onclick="location.href='/Mapa/gmap.php?cat=bars,rest,shop,hotel,atm,other&lang=en&cookieprefix=mGGV&target=_top';">
			<a href="/Mapa/gmap.php?cat=bars,rest,shop,hotel,atm,other&lang=en&cookieprefix=mGGV&target=_top" >Map</span>
		</div>
		
		<div class="button"  onclick="location.href='/Videos';">
			<a href="/Videos" >Videos</span>
		</div>
		
		<div class="button"  onclick="location.href='/Photos';">
			<a href="/Photos" >Photos</span>
		</div>
		
		<div style="margin-top: 50px;"></div>
		
		
		<div class="button"  onclick="location.href='/Daylife/?forcemobile=true';">
			<a href="/Daylife/" >Daylife</span>
		</div>
		
		<div class="button"  onclick="location.href='/Nightlife/?forcemobile=true';">
			<a href="/Nightlife/" >Nightlife</span>
		</div>
		
		<div class="button"  onclick="location.href='/Acts/?forcemobile=true';">
			<a href="/Acts/" >Shows</span>
		</div>
		
		<div class="button"  onclick="location.href='/Restaurants/?forcemobile=true';">
			<a href="/Restaurants/" >Restaurants</span>
		</div>
		
		<div class="button"  onclick="location.href='/GymSpa/?forcemobile=true';">
			<a href="/GymSpa/" >Gym &amp; Spa</span>
		</div>
		
		<div class="button"  onclick="location.href='/Shopping/?forcemobile=true';">
			<a href="/Shopping/" >Shopping</span>
		</div>
		
		<div class="button"  onclick="location.href='/Services/?forcemobile=true';">
			<a href="/Services/" >Services</span>
		</div>
		
		<div style="margin-top: 50px;"></div>
		
		<div class="button"  onclick="location.href='/index.php?menu=true';">
			<a href="/index.php?menu=true" >Gay PVR Intro</span>
		</div>
		
		<div class="button"  onclick="location.href='/Lodging/gay.html?forcemobile=true';">
			<a href="/Lodging/gay.html" >Lodging</span>
		</div>
		
		<div class="button"  onclick="location.href='/?forcemobile=false';">
			<a href="/?forcemobile=false" >Full Site</span>
		</div>
		
		<div class="button"  onclick="location.href='http://i.gpvr.mx';">
			<a href="http://i.gpvr.mx" >Web App</span>
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
    	<a href="http://www.gayguidevallarta.com/qr.ggv122c.php">
    		<img height="150" width="950" src="{$DIR_WS_BASE}includes/Images/topBannerAPP.gif" />
    	</a>
   		</div>
     {/if}
	<div id="GayGuideVallarta"></div>
	
	<div id="GayGuideVallarta_topmenu">
		<div class="topmenu-text">
			<a href="{$DIR_WS_BASE}" title="Home - Gay Guide Vallarta">Gay Vallarta</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="{$DIR_WS_BASE}Calendar/" title="Gay Vallarta's Calendar">Calendar</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="{$DIR_WS_BASE}GayPVMap/" title="Maps of Gay Puerto Vallarta">Map</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			
			
			<a href="{$DIR_WS_BASE}Photos/" title="Photos of Gay Puerto Vallarta">Photos</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			
						
			<a href="{$DIR_WS_BASE}Videos/" title="Photos of Gay Puerto Vallarta">Videos</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			
				
						
			<a href="{$DIR_WS_BASE}Social/" title="Gay Puerto Vallarta">Social</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			
			<a href="{$DIR_WS_BASE}gayPVguide/" title="Our printed edition.  Download or find advertising information.">Guidebook</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			
			<a href="{$DIR_WS_BASE}Advertise/" title=".">Advertise</a>
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
			{/if}
	  			<div class="submenugroup"> GAYGUIDE</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Daylife at the beach and on gay day tours"> Daylife</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="Vallarta's gay nightlife is rich and varied."> Nightlife</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Shows</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="PV has some fabulous places to eat."> Restaurants</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="Our list of gyms, spas and masseurs."> Gym &amp; Spa</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Fine art galleries abound in Puerto Vallarta"> Art Galleries</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="From beachware to home decorating"> Shopping</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Misc services of interest."> Services</a></div>
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}GeneralInfo/" title="Some orientation on the non-gay part of Vallarta."> General Info</a></div>

	  		</div>
			<div id="GayGuideVallarta_r3_c1"></div>
			<div id="LeftColumnContent" >
				<a href="{$DIR_WS_BASE}gayPVguide/" title=""><img style="width: 180px;height: auto;" src="{$DIR_WS_BASE}includes/Images/GetPrintEdition.jpg" /></a>
			</div>
			{include file="ggv10_right_content.tpl" }
		</div>

		<div class="main_container">
			<div id="searchbox">
				{include file="googleSearch.tpl" }
			</div>
			<div id="breadcrumbs">
        		<p class="breadcrumbs">{$BREAD_CRUMBS_STRING}</p>
			</div>
			<br clear="right"/>
