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

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>
<script language="JavaScript" type="text/javascript" src="/js/ggv_main.js"></script> 

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
                    <a class="youtube" href="https://www.youtube.com/channel/UCa0EkvzFxOjarG4xyJjRDkw" target="_blank"></a>
                </li>
            </ul>
	</div>		
		
	<div class="lang-links">
		{$LANG_FLAGS}&nbsp;{$translatemenulink}
	</div>
	<div id="app-links">
		<a href="http://i.gpvr.mx">iPhone App</a>  &nbsp;&nbsp;&nbsp;
		<a href="http://i.gpvr.mx">iPad App</a>  &nbsp;&nbsp;&nbsp;
		<a href="http://i.gpvr.mx">Android App</a>
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


		
		<div align="center" style="padding-top:10px"  onclick="location.href='/';">
			<a href="/"><img src="/m/gPVR.png" width="187" height="115" /></a>
		</div>
		
		<div style="margin: 30px"></div>
		
		<div class="button"  onclick="location.href='/Calendar/index.php?display=day';">
			<a  >Calendrier</a>
		</div>
		
		<div class="button"  onclick="location.href='/GayPVMap'">
			<a  >Carte</a>
		</div>
		
		<div class="button"  onclick="location.href='/Videos';">
			<a  >Videos</a>
		</div>
		
		<div class="button"  onclick="location.href='/FacebookPhotos';">
			<a  >Photos</a>
		</div>
		
		<div style="margin-top: 50px;"></div>
		
		<div class="button"  onclick="location.href='/Daylife/';">
			<a  >Vie Quotidienne</a>
		</div>
		
		<div class="button"  onclick="location.href='/Nightlife/';">
			<a  >Vie Nocturne</a>
		</div>
		
		<div class="button"  onclick="location.href='/Acts/';">
			<a  >Spectacles</a>
		</div>
		
		<div class="button"  onclick="location.href='/Restaurants/';">
			<a  >Restaurants</a>
		</div>
		
		<div class="button"  onclick="location.href='/GymSpa/';">
			<a  >Gym et Spa</a>
		</div>
		
		
		
		<div class="button"  onclick="location.href='/Galleries/';">
			<a  >Galerie d'Arts</a>
		</div>
		
		
		<div class="button"  onclick="location.href='/Shopping/';">
			<a  >Magasinage</a>
		</div>
		
		<div class="button"  onclick="location.href='/Services/';">
			<a  >Services</a>
		</div>
		
		<div style="margin-top: 50px;"></div>

		<div class="button"  onclick="location.href='/Lodging/gay.html?forcemobile=true';">
			<a  >Logement</a>
		</div>

		<div class="button"  onclick="location.href='http://i.gpvr.mx';">
			<a  >Web App</a>
		</div>
	
	</div>
</div>

<div id="scrollableBlock" class="{if $frontpage}{$frontpage}{/if}">

<div id="main">{if $TOPads950x150 != ''}
    	<div id="topBanner">
    	{$TOPads950x150}
    	</div>
    {else}
   		<div id="topBanner">
    	<a href="http://gpvr.mx/touch">
    		<img height="150" width="950" src="{$DIR_WS_BASE}includes/Images/topBannerAPP.gif" />
    	</a>
   		</div>
     {/if}
	 
	<div id="GayGuideVallarta"></div>
	
    <div id="GayGuideVallarta_topmenu">
		<div class="topmenu-text">
			<ul>
				<li>
        	<a href="{$DIR_WS_BASE}" title="Accueil - GuideGay Vallarta">Vallarta Gay</a>
				</li>
				
				
				<li  class="dropdownMenu">
			<a  class="dropdownMenuLink" id="directory">R&eacute;pertoire</a>
			<div  class="menuBlock" >
				<div class="directoryMenuTitle">R&eacute;pertoire PV</div>

	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Renseignements de logements touristiques � gay Puerto Vallarta"> Logement</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Vie quotidienne de la plage et de randonn�s gaies">Vie Quotidienne</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="La vie nocturne gaie de Vallarta est riche et diversifi�e">Vie Nocturne</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Spectacles</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="De nombreux et fantastiques endroits � manger"> Restaurants</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="�num�rations de gyms, spas et masseurs"> Gym et Spa</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Galerie d�art � travers Puerto Vallarta"> Galerie d'Arts</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="De v�tements pour la plage au d�cor r�sidentiel "> Magasinage</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Diff�rents services d�int�r�ts"> Services</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}GeneralInfo/" title="Une orientation de la partie non-gay de Vallarta"> Info G&eacute;n&eacute;raux</a></div>

			</div>
			
			
				</li><li>
        	<a href="{$DIR_WS_BASE}Calendar/" title="Calendrier d'activit�s gaies de Vallarta">Calendrier</a>
				</li><li>
        	<a href="{$DIR_WS_BASE}GayPVMap/" title="Cartes de gay Puerto Vallarta">Carte</a>
				</li><li>


			
			<a href="{$DIR_WS_BASE}FacebookPhotos/" title="Photos of Gay Puerto Vallarta">Photos</a>
				</li><li>
			
						
			<a href="{$DIR_WS_BASE}Videos/" title="Photos of Gay Puerto Vallarta">Videos</a>
				</li><li>

        	<a href="{$DIR_WS_BASE}gayPVguide/" title="Notre publication.  T�l�charger ou obtenez notre information publicitaire">Guide</a>
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
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Renseignements de logements touristiques � gay Puerto Vallarta"> Logement</a></div>
	  		{else}
	  			<div class="submenugroup"> Logement</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Search/" title="Find all lodging by price for given dates."> Precios</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Gay oriented and gay owned places to stay in Puerto Vallarta."> Gay</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/resorts.html" title="Resort options."> Resorts</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/hotels.html" title="Hotel scale places."> Hoteles</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/budget.html" title="The most cost effective places."> Presupuesto</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/condos.html" title="Hundreds of condos conviently located."> Condos</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/villas.html" title="Villas fit for celebrities and groups."> Villas</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/sidetrips.html" title="Great places to visit in this region of Mexico."> Regional</a></div>
			    <div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Agents/" title="Vacation Rental Agencies."> Agents</a></div>
			{/if}
	  			<div class="submenugroup"> GUIDE GAY</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Vie quotidienne de la plage et de randonn�s gaies">Vie Quotidienne</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="La vie nocturne gaie de Vallarta est riche et diversifi�e">Vie Nocturne</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Spectacles</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="De nombreux et fantastiques endroits � manger"> Restaurants</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="�num�rations de gyms, spas et masseurs"> Gym et Spa</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Galerie d�art � travers Puerto Vallarta"> Galerie d'Arts</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="De v�tements pour la plage au d�cor r�sidentiel "> Magasinage</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Diff�rents services d�int�r�ts"> Services</a></div>
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}GeneralInfo/" title="Une orientation de la partie non-gay de Vallarta"> Info G&eacute;n&eacute;raux</a></div>
	  		</div>
			<div id="GayGuideVallarta_r3_c1"></div>

			<div id="LeftColumnContent" >
				 <a href="{$DIR_WS_BASE}gayPVguide/" title=""><img src="{$DIR_WS_BASE}includes/Images/GetPrintEdition.jpg" /></a>
			</div>
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
			<br clear="right" />
