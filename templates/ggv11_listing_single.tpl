{config_load file="ggv_dayCal.conf"}
{strip}
{include file=$headerfilename}
     	<div id="main_content">
 		  <div id="Listing_full_content" style="margin-top: 0">
			<div id="Listing_header">
			  <div class="listinglogo">
                      {if $list_src != ''}
                       <img border="0"
			                src="{$list_src}"
			                width="{$list_width}"
			                height="{$list_height}"
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
							{$list_tagsicons}<hr />
					    {/if}
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

     					<br /><br />
                        {if $list_url != ''}
     	                    <a class="listlink" href="{$list_url}">{$list_url_text}</a>&nbsp;&nbsp;
     	                {/if}
						
						 {if $list_url != ''}
     	                      <br /><br />{$list_closed}
     	                {/if}
						
						

     				</p>
               </div>
               <div class="listing_info">
                 	<p class="listing_name" style="margin-top: 0">{$list_name}</p>
     					{if $list_tags != ''}
     	                   <p class="tags">{$list_tags}</p>
     	                {/if}

                 	<div id="ggv_descshort">{$list_descshort}</div>
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
					<div id="ggv_menu_link" class="linkbox{if $menus == array()} empty{/if}"  onclick="chooseCtlBoxItem('ggv_menu')">{$menu_text|default:"menu"}</a></div>
					<div id="ggv_about_link" class="linkbox{if $list_desclong == ''} empty{/if}"  onclick="chooseCtlBoxItem('ggv_about')">{$about_text|default:"about"}</a></div>
				</div>
	     		<br clear="all" />
	     		<div id="ggv_underline" ></div>

	     		<div id="ggv_flyer"  style="text-align: center;" class="ggv-ctlbox-content">
	     		{if $flyer_url != ''} <img src="http://src.sencha.io/702/1050/http://www.gayguidevallarta.com{$flyer_url}" > {/if}
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
								{if isset($entry.flyer)}<img src="http://src.sencha.io/150/350/http://www.gayguidevallarta.com{$entry.flyer}" /> {/if}
								</div>
								<div class="eventOneInfo">
									<div  class="eventOneCat">{$entry.category_name}</div>
									{if $entry.nameEvent != ''}<div class="eventOneName">{$entry.nameEvent}</div>{/if}
									<br />
									{if $entry.timesEvent != ''}<strong>{$entry.timesEvent}</strong>
									<br />{/if}
									{$entry.event_recurs}
									<br />
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
						No menus on file.
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
						No photos on file.
					</div>
				{/if}
				</div>
			</div>
		</div>
	</div>
{include file="ggv10_footer.tpl"}
{/strip}