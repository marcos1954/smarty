{config_load file="ggv_dayCal.conf"}
{*strip*}
{include file=$headerfilename}

     	<div id="main_content">
 		  <div id="Listing_full_content" style="margin-top: 0">
			<div id="Listing_header">
			  <div class="listinglogo">
                      {if $lodging_logo_src != ''}
                       <img border="0"
			                src="../Listings/{$lodging_logo_src}"
			                width="{$lodging_logo_width}"
			                height="{$lodging_logo_height}"
			                align="left">
                      {else}
                         &nbsp;
                      {/if}
               </div>
               <div id="Listing_header_right">
					
               		<p class="listing_address">
						{if $EDIT != ''}
					       <a href="{$EDIT}">EDIT</a> &nbsp;
				        {/if}
					    {if $list_tagsicons != ''}
							{$list_tagsicons}
					    {/if}
						{if $list_fb_url != ''}
							  <img src="/images/facebookIcon.png" height=24 width=auto title="Facebook" />
						{/if}
						{if $list_ta_url != ''}
							  <img src="/images/tripadvisor2.png" height=24 width=auto title="Reviewed on Tripadvisor" />
						{/if}
					</p>
						
					<div class="links" ><span>{$locationPhones|default:'location & phone'}</span></div>
					
					<p  class="listing_address">
     					{$lodging_addr1}
     					{if $lodging_addr2 != ''}
     						<br /> {$lodging_addr2}
     					{/if}
     					{if $lodging_addr3 != ''}
     						<br /> {$lodging_addr3}
     					{/if}
     					{if $lodging_phone != ''}
     						<br /> Tel. {$lodging_phone}
     					{/if}
						{if $list_cell != ''}
     						<br /> Cel. {$list_cell}
     					{/if}
						{if $list_intlphone != ''}
     						<br /> US/Can. {$list_intlphone}
     					{/if}
                   </p>
					<div class="links" ><span>{$websitesListings|default:'website & listings'}</span></div>
							 

                        {if $lodging_link_url != ''}
     	                    <a class="listlink" href="{$lodging_link_url}">website</a>&nbsp;&nbsp;
     	                {/if}
						{if $list_fb_url != ''}
     	                    <a class="listlink" href="{$list_fb_url}">{$list_fb_text}</a>&nbsp;&nbsp;
     	                {/if}
						
						{if $list_ta_url != ''}
     	                    <a class="listlink" href="{$list_ta_url}">{$list_ta_text}</a>&nbsp;&nbsp;
     	                {/if}
						
					    {if $list_closed != ''}
     	                      <br /><br />{$list_closed}
     	                {/if}

						{if $list_lastupdate != '0000-00-00 00:00:00' && $EDIT != ''}
							  <div class="links" ><span>last update</span></div>
									<div style="text-align: center; color: gray; font-size: .8em;" >{$list_lastupdate}</div>
     	                {/if}
	
			   </div>
               <div class="listing_info">
                 	<p class="listing_name" style="margin-top: 0">{$hotel_name}</p>
					<p class="tags">
     					{if $list_tags != ''}
     	                   {$list_tags}
     	                {/if}
						{if $list_tags != '' && $features != ''}, {/if}
						
						{if $features != ''}
     	                   {$features}
     	                {/if}
					</p>
                 	<div id="ggv_descshort">{$lodging_descshort}</div>
     			</div>
                <br clear="all" />
     		</div>  <!-- end of Listing_header -->
	<br clear="all" />

			<div id="ggv_combobox">
	     		<div id="ggv_control">
					<div id="ggv_flyer_link" class="linkbox{if $flyer_url == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_flyer')">{$flyer_text|default:"flyer"}</a></div>
					<div id="ggv_photos_link" class="linkbox{if $pix == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_photos')">{$photos_text|default:"photos"}</a></div>
					<div id="ggv_mapa_link"	class="linkbox{if $list_map == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_mapa')">{$map_text|default:"map"}</a></div>
 				    <div id="ggv_events_link" class="linkbox{if $list_rows_cal == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_events')">{$events_text|default:"events"}</a></div>
					<div id="ggv_cal_link" class="linkbox{if $list_rows_cal == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_cal')">{$calendar_text|default:"calendar"}</a></div>
					<div id="ggv_rooms_link" class="linkbox"  onclick="chooseCtlBoxItem('ggv_rooms')">{$room_text|default:"prices"}</a></div>
					<div id="ggv_about_link" class="linkbox{if $lodging_desclong == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_about')">{$about_text|default:"about"}</a></div>
					<div id="ggv_fb_link" class="linkbox{if $list_fb_url_href == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_fb')">{$fb_text|default:"news feed"}</a></div>
				</div>
	     		<br clear="all" />
	     		<div id="ggv_underline" ></div>

	     		<div id="ggv_flyer"  style="text-align: center;" class="ggv-ctlbox-content">
	     		{if $flyer_url != ''} <img src="http://src.sencha.io/702/1050/http://www.gayguidevallarta.com{$flyer_url}" > {/if}
	     		</div>
				
				<div id="ggv_about"  class="ggv-ctlbox-content">
	     			<div class="borderbox">
		     			<p>{$lodging_desclong|nl2br}</p>
		     			<br clear="all" />
	     			</div>
				</div>

	     		<div id="ggv_fb"  class="ggv-ctlbox-content">
	     			
							  
<div style="margin: 5px  0 10px  25px ; float: right; clear: right; height: 500px !important" class="fb-like-box" data-href="{$list_fb_url_href}" data-width="730" data-height="500" data-show-faces="false" data-stream="true" data-header="true"></div>

<div id="fb-root"></div>
<script type="text/javascript">
{literal}
(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
		  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
{/literal}
</script>
	     			
	     		</div>

				<div id="ggv_events"  class="ggv-ctlbox-content">
					<div class="eventBox">
		     	 	<a name="Calendar"></a>
		     	 	<h2 >Events Calendar</h2>
	     			{if $list_rows_cal != array()}
		 				{foreach from=$list_rows_cal item="entry"}
                        
                        
                        
							<div  class="eventOne">
								<div class="eventOneFlyer">
								{if isset($entry.flyer)}<img src="http://www.gayguidevallarta.com/img.io/timthumb.php?w=150&src={$entry.flyer}" /> {/if}
								</div>
								<div class="eventOneInfo">
									<div  class="eventOneCat">{$entry.category_name}</div>
 
									{if $entry.nameEvent != ''}<div class="eventOneName">{$entry.nameEvent}</div>{/if}
									<br />
                                    
                                    
                                    {foreach from=$entry.dates item="dateblock"}
                                        <br />
                                        {$dateblock.locationEvent}
                                        <br />
                                        {if $dateblock.timesEvent != ''}{/if}<strong>{$dateblock.timesEvent}</strong>
                                        <br />
                                        {$dateblock.event_recurs}
                                        <br />
                                    
                                    
                                    {/foreach}
									{if $entry.moreEventLink != ''}<br />{$entry.moreEventLink}
									<br />{/if}<br /><i>
									{$entry.descEvent}
									</i><br />
								</div>
								<div  class="eventOneDesc">
									{$entry.descEventLong}
								</div>
								<br clear="left" />
							</div>
                        
                        
                            
						{/foreach}

					{else}
						<div class="borderbox">
							Nothing currently in this calendar.
						</div>
					{/if}
					</div>
				</div>

				<div id="ggv_mapa" class="ggv-ctlbox-content"></div>

				<div id="ggv_cal"  class="ggv-ctlbox-content">
					<div id="loader" class="loader" ></div>
				</div>

				<div id="ggv_menu" class="ggv-ctlbox-content">

				{if $menus != array() }
					<div  class="ggv_arrows" >
						<a class="ggv_arrow_left"></a>
						<a class="ggv_arrow_right"></a>
					</div>
					<div class="slider-nav-menu"></div>
					 <div id="slider-menu" class="flexslider">
					  <ul class="slides">
					  {foreach from=$menus item=picture}
					   {if $picture != ''}
					   		<li><img src="http://src.sencha.io/702/1050/http://www.gayguidevallarta.com{$picture.src}" /></li>
					   {/if}
					  {/foreach}
					  </ul>
					</div>
				{else}
					<div class="borderbox">
						{$noMenus|default:'No menus on file.'}
					</div>
				{/if}
				</div>

				<div id="ggv_photos"  class="ggv-ctlbox-content">
				{if $pix != array() }
					<div  class="ggv_arrows"  >
						<a class="ggv_arrow_left"></a>
						<a class="ggv_arrow_right"></a>
					</div>

					<div class="slider-navcontrols"></div>
					<div id="slider" class="flexslider">
					  <ul class="slides">
					  {foreach from=$pix item=picture}
					  {if $picture != ''}
					  <li><img src="http://src.sencha.io/722/1050/http://www.gayguidevallarta.com{$picture.src}" /></li>
					  {/if}
					  {/foreach}
					  </ul>
					</div>

				{else}
					<div class="borderbox">
						{$noPhotos|default:'No photos on file.'}
					</div>
				{/if}
				</div>
				
			<div id="ggv_rooms" class="ggv-ctlbox-content">
				<div id="lodging_ajax"></div>
			  </div>
			</div>

			
		</div>
	</div>
{include file="ggv10_footer.tpl"}
{*/strip*}