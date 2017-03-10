{config_load file="ggv_dayCal.conf"}  
{include file=$headerfilename}
<div id="topcontent" class="dayCalendar">
	<div id="lang" style="display: none;">{$lang}</div>
	<h1>{$H1}</h1>
	     
	<input type="hidden" name="eventDayDate" id="eventDayDateField" value="{$datevalue}" />
    <div id="eventDayDate"></div>	
	
	<div id="eventDaySunset">
		<div id="eventDaySunsetText">{$dateformatted}
			<div id="sunsetInfo">
			{if $lang == 'en'}
				sunset today is at:
			{/if}
			{if $lang == 'es'}
				puesta de sol de hoy:
			{/if}
			{if $lang == 'fr'}
				coucher du soleil aujourd'hui:
			{/if}
			
			{$sunset_today}
			</div>
		</div>
		<div id="eventDaySunsetTease"></div>
		{if $is_mobile == false }
			<img id="eventDaySunsetImage" src="../images/sunset.jpg" />
		{/if}	
	</div>

	<div id="dayCalControlBlock">
		{if $lang == 'en'}
			<ul>
				<li id="day_events_link" >events</li>
				<li id="day_tours_link"  >tours</li>
				<li id="day_promo_link"  >promos</li>
				<li id="day_rest_link"   >restaurant specials</li>
				<li id="day_feliz_link"  >happy hours</li>
				<li id="day_bars_link"   >bar specials</li>
				<li id="day_all_link" class="selected"   >all</li>
			</ul>
		{/if}
		{if $lang == 'es'}
			<ul>
				<li id="day_events_link" >eventos</li>
				<li id="day_tours_link"  >turs</li>
				<li id="day_promo_link"  >promos</li>
				<li id="day_rest_link"   >especiales restaurantes</li>
				<li id="day_feliz_link"  >horas felices</li>
				<li id="day_bars_link"   >especiales bares</li>
				<li id="day_all_link" class="selected"   >todo</li>
			</ul>
		{/if}
		{if $lang == 'fr'}
			<ul>
				<li id="day_events_link" >événements</li>
				<li id="day_tours_link"  >tours</li>
				<li id="day_promo_link"  >promos</li>
				<li id="day_rest_link"   >restaurant les promos</li>
				<li id="day_feliz_link"  >heures heureuses</li>
				<li id="day_bars_link"   >promos de bar</li>
				<li id="day_all_link" class="selected"   >all</li>
			</ul>
		{/if}

	</div>
	<div id="ggv_underline" ></div> 
</div>

<div id="main_content">
	<div class="eventDayColumn">
		{if not ($special_events == NULL) }

			<div id="eventDaySpecialEvents" class="eventDayGroup">
				<h4>{$transSpecialEvent}</h4>
				{foreach from=$special_events item=evnt}
				
					{$evnt.eidAnchor}
					<div class="singleDayCalItem">
				
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>
	
						<div class="eventDayName">
							{$evnt.nameEvent}
						</div>
						
						{if $evnt.locationEvent != ''}
							<div class="eventDayLocation">
								&nbsp;&nbsp;@ {$evnt.locationEvent}
							</div>
						{/if}
			
						<div class="eventDayCat">
							{$evnt.catnameEvent}
						</div>
			
						{if $evnt.timesEvent != ''}
							<div class="eventDayTime">
								{$evnt.timesEvent}
							</div>
						{/if}
			
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
					</div>			
				{/foreach}
			</div>
		{/if}
		
		{if not ($tour_events == NULL) }
		
			<div id="eventDayTours" class="eventDayGroup">
				<h4>{$transGayToursToday}</h4>
				{foreach from=$tour_events item=evnt}
				
					{$evnt.eidAnchor}
					<div class="singleDayCalItem">
				
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>
			
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
						</div>{/if}
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
					</div>
				{/foreach}
			</div>
		{/if}
		
		{if not ($today_events == NULL && $events == NULL) }
			<div id="eventDayStart" class="eventDayGroup">
				<h4>{$transEventsByStartTime}</h4>
				
				{foreach from=$today_events item=evnt}
				
					{$evnt.eidAnchor}
					<div class="singleDayCalItem">
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>
			
						<div class="eventDayName">
							{$evnt.nameEvent}
						</div>
						
						{if $evnt.locationEvent != ''}
							<div class="eventDayLocation">
								&nbsp;&nbsp;@ {$evnt.locationEvent}
							</div>
						{/if}
			
						<div class="eventDayCat">
							{$evnt.catnameEvent}
						</div>
						
						{if $evnt.timesEvent != ''}
							<div class="eventDayTime">
								{$evnt.timesEvent}
							</div>
						{/if} 
						
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
					</div>
				{/foreach}

				{foreach from=$events item=evnt}
				
					{$evnt.eidAnchor}
					<div class="singleDayCalItem">
				
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>
			
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
						</div>{/if} 
						
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
						<div class="eventDayDesc">
							{$evnt.descEvent}
						</div>
						{/if}
					</div>
				{/foreach}
			</div>
		{/if}
		
		{if not ($closed_list == NULL) }
			<div id="eventDayClosed" class="eventDayGroup">
				<h4>{$transClosedToday}</h4>
				{foreach from=$closed_list item=evnt}
				
					{$evnt.eidAnchor}
					<div class="singleDayCalItem">
						
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>
			
						<div class="eventDayName">
							{$evnt.nameEvent}
						</div>
						
						{if $evnt.locationEvent != ''}
							<div class="eventDayLocation">
								&nbsp;&nbsp;@ {$evnt.locationEvent}
							</div>
						{/if}
			
						<div class="eventDayCat">
							{$evnt.catnameEvent}
						</div>
						
						{if $evnt.timesEvent != ''}
							<div class="eventDayTime">
								{$evnt.timesEvent}
							</div>
						{/if} 
						
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
					</div>
				{/foreach}
			</div>
		{/if}

		{if not ($restaurant_events == NULL) }
			<div id="eventDayRest" class="eventDayGroup">
				<h4>{$transRestaurantSpecials}</h4>
				
				{foreach from=$restaurant_events item=evnt}
					{$evnt.eidAnchor}
					<div class="singleDayCalItem">
					
						<div class="logo" >
						{if $evnt.logoEventSrc}
							{if $evnt.list_src_gif_transparent}
								<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
							{else}
								<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
							{/if}
						{/if}
						</div>
			
						<div class="eventDayName">
							{$evnt.nameEvent}
						</div>
						
						{if $evnt.locationEvent != ''}
							<div class="eventDayLocation">
								&nbsp;&nbsp;@ {$evnt.locationEvent}
							</div>
						{/if}
			
						<div class="eventDayCat">
							{$evnt.catnameEvent}
						</div>
						
						{if $evnt.timesEvent != ''}
							<div class="eventDayTime">
								{$evnt.timesEvent}
							</div>
						{/if}
						
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
				
					</div>
				{/foreach}
			</div>
		{/if}
		
		{if ($bars_events != NULL) }

			<div id="eventDayBarSpecials" class="eventDayGroup">
				<h4>{$transBarSpecialsToday}</h4>
				
				{foreach from=$bars_events item=evnt}
					{$evnt.eidAnchor}
					
					<div class="singleDayCalItem">
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>
			
						<div class="eventDayName">
							{$evnt.nameEvent}
						</div>
						
						{if $evnt.locationEvent != ''}
							<div class="eventDayLocation">
								&nbsp;&nbsp;@ {$evnt.locationEvent}
							</div>
						{/if}
			
						<div class="eventDayCat">
							{$evnt.catnameEvent}
						</div>
						
						{if $evnt.timesEvent != ''}
							<div class="eventDayTime">
								{$evnt.timesEvent}
							</div>
						{/if} 
						
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
					</div>
				{/foreach}
			</div>
		{/if}
		
		{if ($bars_events != NULL) || ($happy_events != NULL) }

			<div id="eventDayFeliz" class="eventDayGroup">
				<h4>{$transHappyHoursToday}</h4>
				{foreach from=$happy_events item=evnt}
					{$evnt.eidAnchor}
					
					<div class="singleDayCalItem">
						<div class="logo" >
							{if $evnt.logoEventSrc}
								{if $evnt.list_src_gif_transparent}
									<img  src="{$evnt.logoEventSrc}" width=100 height=auto />
								{else}
									<img  src="/img.io/timthumb.php?w=100&src={$evnt.logoEventSrc}"  />
								{/if}
							{/if}
						</div>

						<div class="eventDayName">
							{$evnt.nameEvent}
						</div>
						
						{if $evnt.locationEvent != ''}
							<div class="eventDayLocation">
								&nbsp;&nbsp;@ {$evnt.locationEvent}
							</div>
						{/if}
			
						<div class="eventDayCat">
							{$evnt.catnameEvent}
						</div>
						
						{if $evnt.timesEvent != ''}
							<div class="eventDayTime">
								{$evnt.timesEvent}
							</div>
						{/if} 
						
						<div class="eventMoreLink">
							{$evnt.moreEventLink}
						</div>
						
						{if $evnt.descEvent != ''}
							<div class="eventDayDesc">
								{$evnt.descEvent}
							</div>
						{/if}
					</div>
				{/foreach}
			</div>
		{/if}
	</div><!-- end right column of center -->
</div><!-- end center -->
<!-- end core -->
{include file="ggv10_footer.tpl"}