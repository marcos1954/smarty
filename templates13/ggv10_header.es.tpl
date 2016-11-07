{*strip*}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=cp-8859-1" />
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
<script language="JavaScript" type="text/javascript" src="../js/ggv_main.js"></script> 

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



		<div align="center" style="padding-top:10px" onclick="location.href='/';">
			<a ><img src="/m/gPVR.png" width="187" height="115" /></a>
		</div>
		
		<div style="margin: 30px"></div>
		
		<div class="button"  onclick="location.href='/Calendar/index.php?display=day';">
			<a  >Que Pasa Hoy</a>
		</div>
		
		<div class="button"  onclick="location.href='/GayPVMap'">
			<a >Mapa PVR Gay</a>
		</div>
		
		<div class="button"  onclick="location.href='/Videos';">
			<a  >Videos</a>
		</div>
		
		<div class="button"  onclick="location.href='/FacebookPhotos';">
			<a >Fotos</a>
		</div>
		
		<div style="margin-top: 50px;"></div>
		
		<div class="button"  onclick="location.href='/Daylife/';">
			<a  >Vida Diurna</a>
		</div>
		
		<div class="button"  onclick="location.href='/Nightlife/';">
			<a  >Vida Nocturna</a>
		</div>
		
		<div class="button"  onclick="location.href='/Acts/';">
			<a  >Espectaculos</a>
		</div>
		
		<div class="button"  onclick="location.href='/Restaurants/';">
			<a  >Restaurantes</a>
		</div>
		
		<div class="button"  onclick="location.href='/GymSpa/';">
			<a  >Gimnasio &amp; Spa</a>
		</div>
		
		
		<div class="button"  onclick="location.href='/Galleries/';">
			<a  >Gallerias</a>
		</div>
		
		<div class="button"  onclick="location.href='/Shopping/';">
			<a  >Compras</a>
		</div>
		
		<div class="button"  onclick="location.href='/RealEstate/';">
			<a  >Bienes Raíces</a>
		</div>
		
		<div class="button"  onclick="location.href='/Services/';">
			<a  >Servicios</a>
		</div>
		
		<div style="margin-top: 50px;"></div>
		
		<div class="button"  onclick="location.href='/Lodging/gay.html?forcemobile=true';">
			<a  >Lodging</a>
		</div>
		
		<div class="button"  onclick="location.href='/Agents/';">
			<a  >Agentes de Renta</a>
		</div>
		
		<div class="button"  onclick="location.href='http://i.gpvr.mx';">
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
			<a href="{$DIR_WS_BASE}" title="Inicio - Gay Guide Vallarta">Inicio</a>
			</li>
			
			<li  class="dropdownMenu">
			<a class="dropdownMenuLink"  id="directory"  >Gay Vallarta</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Directorio de PV</div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Lodging information for tourists staying in gay Puerto Vallarta."> Alojamientos</a></div>
				<br />
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Daylife at the beach and on gay day tours">Vida diurna</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="Vallarta's gay nightlife is rich and varied.">Vida nocturna</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Espectáculos</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="PV has some fabulous places to eat."> Restaurantes</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="Our list of gyms, spas and masseurs."> Gimnasio y Spa</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Fine art galleries abound in Puerto Vallarta"> Galer&iacute;as de Arte</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="From beachware to home decorating"> Compras</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Misc services of interest."> Servicios</a></div>
	  			<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}RealEstate/" title="Real Estate Offices, Brokers and Mortgages."> Bienes Raíces</a></div>
			</div>
			</li>
			
			<li  class="dropdownMenu">
			<a  class="dropdownMenuLink" href="{$DIR_WS_BASE}Calendar/" >Calendario</a>
		    <div class="menuBlock" >
				<div class="directoryMenuTitle">Calendario de Eventos</div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/" title="Aspectos destacados anuales."> Destacados Anuales</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?display=day" title="Calendario completo Día."> Día</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?display=month" title="Calendario mensual."> Mensual</a></div>
				<br />
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?id=&code=&display=month&category=2,19,20&Go=Go" title="Calendario de espectáculos."> Espectáculos</a></div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}Calendar/index.php?id=&code=&display=month&category=3&Go=Go" title="Calendario de espectáculos."> Excursiónes</a></div>
			</div>
		   </li>
			
			<li  class="dropdownMenu">
			<a  class="dropdownMenuLink"  href="{$DIR_WS_BASE}GayPVMap/" title="Map of Gay Puerto Vallarta">Mapa</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Mapas de Vallarta</div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php" title="Mapa de Puerto Vallarta Gay">Mapa Gay Vallarta</a></div>
				<br />
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php?cat=bars&catlist=bars" >Mapa de Barres</a></div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php?cat=rest&catlist=rest" >Mapa de Restaurantes</a></div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}GayPVMap/index.php?cat=hotel&catlist=hotel" >Mapa de Hoteles</a></div>
			</div>
		   </li>

		    <li  class="dropdownMenu">
			<a   class="dropdownMenuLink" href="{$DIR_WS_BASE}FacebookPhotos/" >Fotos</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Fotos de Vallarta Gay </div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}FacebookPhotos/" title="Fotos de Puerto Vallarta Gay">Álbumes de Facebook</a></div>
			</div>
		   </li>
			
					   
			<li  class="dropdownMenu">
			<a   class="dropdownMenuLink" href="{$DIR_WS_BASE}Videos/" >Videos</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Videos de Vallarta Gay</div>
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}Videos/" title="Videos de Puerto Vallarta Gay">Videos de You-tube</a></div>
			</div>
		   </li>


		   <li  class="dropdownMenu">
			<a   class="dropdownMenuLink" href="{$DIR_WS_BASE}gayPVguide/" >Guía</a>
			<div class="menuBlock" >
				<div class="directoryMenuTitle">Gay Guide Vallarta</div>
				<div class="popdirentry"> &#187; <a href="{$DIR_WS_BASE}gayPVguide/" title="Nuestra edici&iacute;n impresa. Descargar o encontrar informaci&oacute;n de publicidad.">Gu&iacute;a  Impresa</a></div>
				<br />
				<div class="popdirentry"> &#187; <a   href="{$DIR_WS_BASE}Advertise/index.php" title="">Info de Publicidad</a></div>
				</div>
		   </li>
		</div>
    </div>
	
	<br class="clearfloat" />
  	<div id="underheader">
		
		<div id="LeftSide">
	   		<div id="GayGuideVallarta_sidemenu">
	  		{if $whatmenu eq "short"}
	  			<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Lodging information for tourists staying in gay Puerto Vallarta."> Alojamientos</a></div>
	  		{else}
	  			<div class="submenugroup"> Alojamientos</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Search/" title="Find all lodging by price for given dates."> Precios</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/gay.html" title="Gay oriented and gay owned places to stay in Puerto Vallarta."> Gay</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/resorts.html" title="Resort options."> Resorts</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/hotels.html" title="Hotel scale places."> Hoteles</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/budget.html" title="The most cost effective places."> Presupuesto</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/condos.html" title="Hundreds of condos conviently located."> Condos</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/villas.html" title="Villas fit for celebrities and groups."> Villas</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Lodging/sidetrips.html" title="Great places to visit in this region of Mexico."> Regional</a></div>
				<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Agents/" title="Agencias de alquiler."> Agentes</a></div>
			{/if}
	  			<div class="submenugroup"> GUIA GAY</div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Daylife/" title="Daylife at the beach and on gay day tours">Vida diurna</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Nightlife/" title="Vallarta's gay nightlife is rich and varied.">Vida nocturna</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Acts/" title="Vallarta's featured Entertainers."> Espectáculos</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Restaurants/" title="PV has some fabulous places to eat."> Restaurantes</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}GymSpa/" title="Our list of gyms, spas and masseurs."> Gimnasio y Spa</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Galleries/" title="Fine art galleries abound in Puerto Vallarta"> Galer&iacute;as de Arte</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Shopping/" title="From beachware to home decorating"> Compras</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}Services/" title="Misc services of interest."> Servicios</a></div>
	  			<div class="submenuentry"> &#187; <a href="{$DIR_WS_BASE}RealEstate/" title="Real Estate Offices, Brokers and Mortgages."> Bienes Raíces</a></div>
				<div class="mainmenuentry"> &#187; <a href="{$DIR_WS_BASE}GeneralInfo/" title="Some orientation on the non-gay part of Vallarta."> Info Gral.</a></div>
	  		</div>
			
			<div id="GayGuideVallarta_r3_c1"></div>
			<div id="LeftColumnContent" >
				<a href="{$DIR_WS_BASE}gayPVguide/" title=""><img style="width: 180px;height: auto;" src="{$DIR_WS_BASE}includes/Images/GetPrintEdition.jpg" /></a>
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
			<br clear="right"/>
