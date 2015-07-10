{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}
     	<div id="main_content">
 		  <div id="Listing_full_content" style="margin-top: 0">
			<div id="Listing_header">
			  <div class="listinglogo">
                      {if $list_src != ''}
					    {if $list_src_gif_transparent }
						<img src="{$list_src}" width=100 height=auto align="left" />
						{else}
						<img src="/img.io/timthumb.php?w=100&src={$list_src}" align="left" />
						{/if}
                      {else}
                         &nbsp;
                      {/if}
               </div>
               <div id="Listing_header_right">
					
               		<div class="tagicons">
					    {if $list_tagsicons != ''}
							{$list_tagsicons}
					    {/if}
						{if $list_fb_url != ''}
							  <a href="{$list_fb_url}"><img class="tagicon" src="/images/facebookIcon.png" width=auto title="Facebook" /></a>
						{/if}
						
						{if $list_tw_url != ''}
							  <a href="{$list_tw_url}"><img class="tagicon" src="/images/twitter.png" title="Twitter" /></a>
						{/if}
						
						{if $list_ta_url != ''}
							  <a href="{$list_ta_url}"><img class="tagicon" src="/images/tripadvisor2.png" title="Reviewed on Tripadvisor" /></a>
						{/if}
                        
                        {if $list_url != ''}
                              <a href="{$list_url}"><img class="tagicon" style="margin:1px;" src="/images/www.png" title="Has a Website" /></a>
                        {/if}
					</div>
					
                    {if $list_addr1 != '' || $list_addr2 != '' || $list_addr3 != '' || 	$list_phone != '' || $list_cell != '' || $list_intlphone != '' }
					<div class="links" ><span>{$locationPhones|default:'location & phone'}</span></div>
					
					<p  class="listing_address">
     					{$list_addr1}
     					{if $list_addr2 != ''}
     						<br /> {$list_addr2}
     					{/if}
     					{if $list_addr3 != ''}
     						<br /> {$list_addr3}
     					{/if}
     					{if $list_phone != ''}
     						<br /> Tel. {$list_phone}
     					{/if}
						{if $list_cell != ''}
     						<br /> Cel. {$list_cell}
     					{/if}
						{if $list_intlphone != ''}
     						<br /> US/Can. {$list_intlphone}
     					{/if}
                    </p>
                    {/if}
                    
                    {if $list_url != '' || $list_fb_url != '' || $list_tw_url != '' || $list_ta_url != '' || 	$list_ol_url != ''  }
					
					<div class="links" ><span>{$websitesListings|default:'website & listings'}</span></div>
					{/if}		 

                        {if $list_url != ''}
     	                    <a class="listlink" rel="nofollow" href="{$list_url}">{$list_url_text}</a>
     	                {/if}
						{if $list_fb_url != ''}
     	                    <a class="listlink" href="{$list_fb_url}">{$list_fb_text}</a>
     	                {/if}
						
						{if $list_tw_url != ''}
     	                    <a class="listlink" href="{$list_tw_url}">{$list_tw_text}</a>
     	                {/if}
						
						{if $list_ta_url != ''}
     	                    <a class="listlink" href="{$list_ta_url}">{$list_ta_text}</a>
     	                {/if}
                        
                        {if $list_ol_url != ''}
     	                    <a class="listlink" href="{$list_ol_url}">{$list_ol_text}</a>
     	                {/if}
						
					    {if $list_closed != ''}
     	                      <br /><br />{$list_closed}
     	                {/if}

						{if $EDIT != ''}
							  <div class="links" ><span>last update</span></div>
							  
							  <div style="text-align: left; color: gray; font-size: .8em;" >
										<div style="float:right">
												  <a href="{$EDIT}">EDIT</a>
										</div>
										{$list_lastupdate}
							  </div>	
				        {/if}

	
			   </div>
               <div class="listing_info">
                 	<p class="listing_name" style="margin-top: 0">{$list_name}</p>
     					{if $list_tags != ''}
     	                   <p class="tags">{$list_tags}</p>
     	                {/if}

                 	<div id="ggv_descshort">{$list_descshort}</div>
     			</div>
     		</div>  <!-- end of Listing_header -->
	        

			<div id="ggv_combobox">
	     		<div id="ggv_control">
					<div id="ggv_flyer_link" class="linkbox{if $flyer_url == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_flyer')">{$flyer_text|default:"flyer"}</a></div>
					<div id="ggv_videos_link" class="linkbox{if !$list_video } empty{/if}"  onclick="chooseCtlBoxItem('ggv_videos')">{$video_text|default:"video"}</a></div>
					<div id="ggv_photos_link" class="linkbox{if $pix == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_photos')">{$photos_text|default:"photos"}</a></div>
					<div id="ggv_mapa_link"	class="linkbox{if $list_map == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_mapa')">{$map_text|default:"map"}</a></div>
 				    <div id="ggv_events_link" class="linkbox{if $list_rows_cal == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_events')">{$events_text|default:"events"}</a></div>
					<div id="ggv_cal_link" class="linkbox{if $list_rows_cal == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_cal')">{$calendar_text|default:"calendar"}</a></div>
					<div id="ggv_menu_link" class="linkbox{if $menus == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_menu')">{$menu_text|default:"menu"}</a></div>
					<div id="ggv_about_link" class="linkbox{if $list_desclong == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_about')">{$about_text|default:"about"}</a></div>
					<!--<div id="ggv_fb_link" class="linkbox{if $list_fb_url_href == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_fb')">{$fb_text|default:"news feed"}</a></div>-->
				</div>
	     		<div id="ggv_underline" ></div>

	     		<div id="ggv_flyer"  style="text-align: center;" class="ggv-ctlbox-content">
	     		{if $flyer_url != ''}
						{if $flyer_width < 722 && $flyer_width > 100 }
					  <img src="{$flyer_url}" />
						{else}
					  <img src="/img.io/timthumb.php?w=722&src={$flyer_url}" />
						{/if}
				{/if}
	     		</div>
				
				<div id="ggv_about"  class="ggv-ctlbox-content">
	     			<div class="borderbox">
		     			<p>{$list_desclong|nl2br}</p>
		     			<br clear="all" />
	     			</div>
				</div>

				<div id="ggv_events"  class="ggv-ctlbox-content">
					<div class="eventBox">
		     	 	<a name="Calendar"></a>
		     	 	<h2 >Events Calendar</h2>
	     			{if $list_rows_cal != array()}
		 				{foreach from=$list_rows_cal item="entry"}

							<div  class="eventOne">
								<div class="eventOneFlyer">
								{if isset($entry.flyer)}<img data-src="/img.io/timthumb.php?w=250&src={$entry.flyer}" /> {/if}
								</div>
								<div class="eventOneInfo">
									<div  class="eventOneCat">{$entry.category_name}</div>
 
									{if $entry.nameEvent != ''}<div class="eventOneName">{$entry.nameEvent}</div>{/if}
                                    <div class="dates">
									  
                                    {if $entry.moreEventLink != ''}<br />{$entry.moreEventLink}
									<br />{/if}
									<br /><i>
									{$entry.descEvent}
									</i><br /><br />
									
                                    
                                    {foreach from=$entry.dates item="dateblock"}

                                        {if $dateblock.timesEvent != ''}{/if}<strong>{$dateblock.timesEvent}</strong> 
                                          &nbsp;
                                        {$dateblock.event_recurs}
										  &nbsp;
										
										{if $dateblock.locationEvent != ''} @ {$dateblock.locationEvent}{/if}
                                        <br /><br />

                                    {/foreach}
                                    </div>
									<div class="oflowmsg" style="display: none; ">
									  <a href="{$entry.moreEventLinkHref}">..... SEE MORE DATES</a>
									</div>
								</div>
								<div  class="eventOneDesc">
									{$entry.descEventLong|nl2br}
								</div>
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
						{if $picture.width < 702 }
					   <li><a href="{$picture.src}" ><img data-src="{$picture.src}" /></a></li> 
						{else}
					  <li><a href="{$picture.src}" ><img data-src="/img.io/timthumb.php?w=702&src={$picture.src}" /></a></li>
						{/if}
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
						
						  {if $picture.width < 722 }
						 <li><a href="{$picture.src}" ><img data-src="{$picture.src}" /></a></li> 
						  {else}
						<li><a href="{$picture.src}" ><img data-src="/img.io/timthumb.php?w=722&src={$picture.src}" /></a></li>
						  {/if}
						  
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
                
				<div id="ggv_videos"  class="ggv-ctlbox-content" data="{$list_video}"></div>

			</div>
		</div>
	</div>
{include file="ggv10_footer.tpl"}
