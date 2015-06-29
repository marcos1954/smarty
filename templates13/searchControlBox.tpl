<h2>
	{$PricesForAccomodations}
	<br />
	<span class="srchRh2">
		{$numAdults} {$adults} &nbsp; - &nbsp; {$numDays} {$nights} &nbsp; - &nbsp; {$Arrival}: {$date_check_in}
	</span>
</h2>


<form method="post" action="" target="_self" name="f1" id="f1">
	
    <div id="searchControlBox">
		<div id="lodgingPrices-date-status">
			<div id="vacation_calendar" {if $monthcount == 2}class="doublemonth"{/if} >{$vacation_calendar}</div>
			<div {if $monthcount == 2}class="main doublemonth"{else}class="main" {/if}>
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
			
			<div class="submit">
				<input type="button" class="submit2" name="Fetch" value="Cancel">
				<input type="submit" class="submit1" name="Fetch" value="Done">
			</div>

		</div>

        <table id="pricesAdvForm">
            <tr>
                <td class="srchFrm1" align="right">
                  max to gay beach
                </td>
                <td class="srchFrm1" width="17%" align="right">
                    {$maxbeach}
                </td>
                <td class="srchFrm1" align="right">
                    min day price
                </td>
                <td class="srchFrm1" width="30" align="right">
                    <input type="text" value="{$minday}" name="minday" size="5">
                </td>
                <td class="srchFrm1" align="right">
                 min total
                </td>
        
                <td class="srchFrm1" width="40" align="right">
                    <input type="text" value="{$mintotal}" name="mintotal" size="5">
                </td>
            </tr>
            <tr>
                <td class="srchFrm1" align="right">
                  max to gay bars
                </td>
               <td class="srchFrm1" width="17%" align="right">
               {$maxbars}
               </td>
               <td class="srchFrm1" align="right">
                 max day price
               </td>
              
               <td class="srchFrm1" width="30" align="right">
                 <input type="text" value="{$maxday}" name="maxday" size="5">
               </td>
               <td class="srchFrm1" align="right">
                 max total
               </td>
               <td class="srchFrm1" width="40" align="right">
                 <input type="text" value="{$maxtotal}" name="maxtotal" size="5">
               </td>
            </tr>
        </table>

        <div id="pricesLodgingTypes">
            {html_checkboxes name="srchtype" options=$lodgingtypes selected=$srchtypeselected separator="&nbsp;"}
            <input type="hidden" name="srchlisted" value="1">
        </div>
    
        <input type="hidden" name="advanced"      value="{$adv_form}">
        <input type="hidden" name="adv_currency"  value="{$ucurrency}">
        <input type="hidden" name="PG_CNT" value="{$max_pages}">
<div id="pricesAjaxResults">
        <table id="pricesSortControl">
            <tr>
                <td class="pSCleft">
                    {if $sortby eq 0}
                        {$ResortResultsBy}
                        <br />&nbsp;
                        {$Price}
                        <br />&nbsp;
                        <a href="?sort=1">
                            {$Location}
                        </a>
                    {else}
    
                        {$ResortResultsBy}
                        <br />&nbsp;
                        <a href="?sort=0">
                            {$Price}
                        </a>
                        <br />&nbsp;
                        {$Location}
                    {/if}
                </td>
                
                <td class="pSCcenter">
                    <div class="pSCsortLabel">
                        {$LISTINGS_SORTED_BY}:&nbsp;
                        {if $sortby eq 0}{$Price}{else}{$Location}{/if}
                    </div>
                    {$all_prices_in_currency}
                    <br />
                    {$includeAllTaxes}
                </td>
                
                <td class="pSCright">
                    {$Page} {$page_num} / {$max_pages}
                </td>
            </tr>
        </table>    
    
        <table class="pageBalls">
            <tr>
                <td width="50%">
                    <hr noshade color="red">
                </td>
                <td nowrap>
                    {$paging}
                </td>
                <td width="50%">
                    <hr noshade color="red">
                </td>
            </tr>
        </table>

