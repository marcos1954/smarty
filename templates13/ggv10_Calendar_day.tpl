{config_load file="ggv_dayCal.conf"}
{include file=$headerfilename}
<div id="topcontent" class="dayCalendar">
	<h1>{$H1}</h1>
	
	<div id="dayCalControlBlock">
		<ul>
			<li id="day_events_link" >events</li>
			<li id="day_tours_link"  >tours</li>
			<li id="day_promo_link"  >promos</li>
			<li id="day_rest_link"   >restaurant specials</li>
			<li id="day_feliz_link"  >happy hours</li>
			<li id="day_bars_link"   >bar specials</li>
			<li id="day_all_link" class="selected"   >all</li>
		</ul>
		 
	</div>
	<div id="ggv_underline" ></div> 
</div>

<div id="main_content">
	<div class="eventDayColumn">
		{if not ($special_events == NULL) }

		<div id="eventDaySpecialEvents" class="eventDayGroup">
			<h4>{$transSpecialEvent}</h4>{foreach from=$special_events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if} {if not ($tour_events == NULL) }

		<div id="eventDayTours" class="eventDayGroup">
			<h4>{$transGayToursToday}</h4>{foreach from=$tour_events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if} {if not ($today_events == NULL) }

		<div id="eventDayNoStart" class="eventDayGroup">
			<h4>{$transEventsNoStartTime}</h4>
			
			{foreach from=$today_events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if}
		
		{if not ($events == NULL) }

		<div id="eventDayStart" class="eventDayGroup">
			<h4>{$transEventsByStartTime}</h4>{foreach from=$events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if} {if not ($closed_list == NULL) }

		<div id="eventDayClosed" class="eventDayGroup">
			<h4>{$transClosedToday}</h4>{foreach from=$closed_list item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if}

		{if not ($restaurant_events == NULL) }
		<div id="eventDayRest" class="eventDayGroup">
			<h4>{$transRestaurantSpecials}</h4>{foreach from=$restaurant_events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if} {if ($bars_events != NULL) }

		<div id="eventDayBarSpecials" class="eventDayGroup">
			<h4>{$transBarSpecialsToday}</h4>{foreach from=$bars_events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if} {if ($bars_events != NULL) || ($happy_events != NULL) }

		<div id="eventDayFeliz" class="eventDayGroup">
			<h4>{$transHappyHoursToday}</h4>{foreach from=$happy_events item=evnt} {$evnt.eidAnchor}

			<div class="eventDayName">
				{$evnt.nameEvent}
			</div>{if $evnt.locationEvent != ''}

			<div class="eventDayLocation">
				&nbsp;&nbsp;@ {$evnt.locationEvent}
			</div>{/if}

			<div class="eventDayCat">
				{$evnt.catnameEvent}
			</div>{if $evnt.timesEvent != ''}

			<div class="eventDayTime">
				{$evnt.timesEvent}
			</div>{/if} {$evnt.moreEventLink} {if $evnt.descEvent != ''}

			<div class="eventDayDesc">
				{$evnt.descEvent}
			</div>{/if} {/foreach}
		</div>{/if}
	</div><!-- end right column of center -->
</div><!-- end center -->

<!-- end core -->

{if not ($ads180x400 == NULL) }
	<div id="ads180x400">
		<a href="../pdf" title="Print your calendar" ><img src="../includes/Images/print_your_calendar.gif" alt="Print your calendar" /></a>
		<br /><br />
		{foreach from=$ads180x400 item=ad}
			{$ad}
			<br /><br />
		{/foreach}
	</div>
{/if}


{include file="ggv10_footer.tpl"}
{*debug*}