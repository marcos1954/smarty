<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title></title>
</head>

<body>
	<form method="post" action="{$action}" name="f1" id="f1">
		<input id="hid" type="hidden" name="id" value="{$hotel_id}">

		<div id="lodgingPrices-date-status">
			<div id="vacation_calendar"  {if $monthcount == 2}class="doublemonth"{/if}>{$vacation_calendar}</div>

			<div {if $monthcount == 2}class="main doublemonth"{else}class="main" {/if} >
				<span class="name">{$hotel_name1}</span>
				<br><br>
				check-in: {$stay_checkin}
				<br>
				check-out: {$stay_checkout}
				<br>
				staying {$stay_numDays} nights
				<br>
				{$stay_numAdults} adults
				<div class="currency" >
					{$all_prices_in_currency}
				</div>
				<a class="change-dates" href="" >change vacation dates </a>
			</div>
		</div>

		<div class="dateform">
			<div class="numDays"> stay number of nights: <input id="numDays" size="2" value="{$stay_numDays}" name="stay_numDays"></div>
			<div class="numAdults"> number of adults: <input id="numAdults" size="2" value="{$stay_numAdults}" name="stay_numAdults"></div>

			<div class="label"> select your check-in date: </div>
			<input type="hidden" name="lodgingStartDate" id="lodgingStartDateField" value="{$stay_checkin}" />
			<div id="lodgingStartDate" class="start_date"></div>
			
			<div class="label"> select your currency: </div>
			<div class="radiobuttons">
				{html_radios name="R1" options=$currency1 selected=$ucurrency separator="&nbsp;"}
				{html_radios name="R1" options=$currency2 selected=$ucurrency separator="&nbsp;"}
			</div>

			<div class="submit"><input type="button" class="submit1" name="Fetch" value="refresh"></div>
		</div>
	</form>

	<div id="lodgingPrices">
		{foreach from=$room_info_data item=entry}

		<div class="results">
			<div class="pricebox">
				<div class="total">
					{$entry.room_total}
				</div>

				<div class="avg">
					{if $entry.room_avail != 'booked'}
					<span>per&nbsp;day:</span> {$entry.room_avg_price}
					{else}
					<span>already booked</span>
					{/if}
				</div>
			</div>

			<div class="roomlabel">
				<span>room type:</span> {$entry.room_label}
				<span>&nbsp;  {$entry.room_avail}</span>
			</div>

			<div class="desc">
				<span>room desc:</span> {$entry.room_desc}
			</div>
		</div>{/foreach}
	</div>
</body>
</html>
