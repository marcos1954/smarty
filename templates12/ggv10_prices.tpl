{config_load file="ggv_search.conf"}
{include file=$headerfilename}


<div id="Listing_right_column">
<br />
<div style="border: solid gray 1px;"
          <table align="center"  border="0" cellspacing="0" cellpadding="5">
           <tr>
            <td bgcolor="ivory" align="center" valign="top">
             <h4>{$vacationCalendarHeader}</h4>
             {$vacation_calendar}
            </td>
           </tr>
           <tr><td bgcolor="ivory">

	<br />
     <p style="text-align: left; font-size:8pt; padding:4pt">
     {$VacationDatesExplain}
    </p>
     </tr></table>
</div>
     <br /><center>
     <!--
     <img src="../Search/images/hotel_mock_sidead.gif">
     <br /><br />
     <img src="../Search/images/hotel_mock_sidead2.gif">
     <br /><br />
     -->

    <!-----------------BEGIN AD ZONE ---------------->
    {$AD_ZONE}
    <br /><br />
    {$AD_ZONE1}
    <br /><br />
    {$AD_ZONE2}
    <br /><br />
    {$AD_ZONE3}
    <br /><br />
    {$AD_ZONE4}
    <br /><br />
    {$AD_ZONE5}
    <br /><br />
    {$AD_ZONE6}
    <br /><br />
    {$AD_ZONE7}

    <!-----------------END AD ZONE ---------------->

     </center>

</div>


<div id="main_content">
     {************  MEAT GOES HERE  *************}
     <form method="POST" action="" target="_self" name="f1">
      <div align="center">
      <br />
      <div id="searchControlBox">

       <table border="0"  cellpadding="1" cellspacing="0" width="{#SEARCHWIDTH#}">
       	<tr><td colspan="7" class="srchFrmHdr">
       	Enter Your Vacation Dates
       	</td></tr>
        <tr><!-- labels on form panel -->
         <td width="10%">&nbsp;</td>
         <td class="srchFrm1">{$ArrivalDateInPVR}</td>
         <td class="srchFrm1">{$nights}</td>
         <td class="srchFrm1">{$adults}</td>
         <td class="srchFrm1" colspan=2 align="right" nowrap>
          <a href="{$ADV_FORM_URL}">
           {$ADV_FORM_TXT}
          </a>
         </td>
         <td width="10%">&nbsp;</td>
        </tr>

        <tr>
         <td>&nbsp;</td>
         <td align="center" nowrap>
          <SELECT NAME="month" ONCHANGE="populate(this.form,this.selectedIndex);">
          {html_options options=$months selected=$mm}
          </SELECT>
          <SELECT NAME="day">
                  <OPTION>&nbsp;</OPTION>
          </SELECT>
          <SELECT NAME="year" ONCHANGE="populate(this.form,this.form.month.selectedIndex);">
          {html_options options=$years selected=$yy}
          </SELECT>
<SCRIPT LANGUAGE="JavaScript">
{literal}
<!-- Begin
{
    selectedIndex = {/literal}{$dd_minus_one}{literal};

	timeAX = new Date(document.f1.year.options[document.f1.year.selectedIndex].text, document.f1.month.options[document.f1.month.selectedIndex].value,1);
	timeDifferenceX = timeAX - 86400000;
	timeBX = new Date(timeDifferenceX);
	var DaysInMonthX = timeBX.getDate();
	for (var i = 0; i < document.f1.day.length; i++) {
		document.f1.day.options[0] = null;
	}
	for (var i = 0; i < DaysInMonthX; i++) {
		document.f1.day.options[i] = new Option(i+1);
	}
	document.f1.day.options[{/literal}{$dd_minus_one}{literal}].selected = true;
}
function getYearsX() {
	// You can easily customize what years can be used
	var YearsX = new Array(2011,2012,2013)

	for (var i = 0; i < document.f1.year.length; i++) {
		document.f1.year.options[0] = null;
	}
	timeCX = new Date();
	currYearX = timeCX.getFullYear();
	for (var i = 0; i < YearsX.length; i++) {
		document.f1.year.options[i] = new Option(YearsX[i]);
	}
	document.f1.year.options[document.f1.year.selectedIndex].selected=true;
}
//  End -->
{/literal}
</script>
           &nbsp;
           </td>
           <td>
            <select size="1" name="stay_numDays">
            {html_options options=$day_choices selected=$numDays}
            </select>
           </td>
           <td>
            <select size="1" name="stay_numAdults">
            {html_options options=$pax_choices selected=$numAdults}
            </select>
           </td>

           <td align="right"><input type="submit" name="Fetch" Value=" Search " STYLE="font-family: Arial; font-size: 9pt; color: #FFFFFF; font-weight: bold; background-color: red"></td>
           <td></td>
         </tr>
         <tr>
          <td class="srchCurrency" colspan="7" align="center" valign="top">
          {html_radios name="R1" options=$currency1 selected=$ucurrency separator="&nbsp;"}
          <br />
          {html_radios name="R1" options=$currency2 selected=$ucurrency separator="&nbsp;"}

         {if $adv_form eq 0}
          </td>
         </tr>
         {else}
           <br />
           <hr noshade color="lightgray" width="90%">
          </td>
         </tr>
         <tr>
          <td colspan="7">
           <table>

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

       </tr> </table>
          </td>
         </tr>
         {/if}

       <tr>
        <td class="srchFrm1"  valign="center" align="center" colspan="7">
            <hr noshade color="lightgray" width="90%">
       		{html_checkboxes name="srchtype" options=$lodgingtypes selected=$srchtypeselected separator="&nbsp;"}
        	<input type="hidden" name="srchlisted" value="1">

        </td>
       </tr>
     </table>
     </div>
      <input type="hidden" name="advanced"      value="{$adv_form}">
      <input type="hidden" name="adv_currency"  value="{$ucurrency}">
      <br />


       <input type="hidden" name="PG_CNT" value="{$max_pages}">
       <h2><center>
       {$PricesForAccomodations}
        <br>
        <span class="srchRh2">
        {$numAdults} {$adults} &nbsp; - &nbsp; {$numDays} {$nights} &nbsp; - &nbsp; {$Arrival}: {$date_check_in}
         &nbsp; - &nbsp; {$Departure}: {$date_check_out}
        </span>
       <center></h2>

       <table width="{#SEARCHWIDTH#}" align="center">
        <tr>
         <td width="30%" align="left" valign="bottom">
         {if $sortby eq 0}

          <font face="Arial" color="#999999" size="1">
           {$ResortResultsBy} <br />
            <font face="Arial" color="red" size="2"><b>
            {$Price}
             </b></font>
           <br />
            <a href="?sort=1">
             <font face="Arial" color="#999999" size="2"><b>
              {$Location}
             </b></font>
            </a>
          </font>

          {else}

           <font face="Arial" color="#999999" size="1">
           {$ResortResultsBy} <br />
           <a href="?sort=0">
            <font face="Arial" color="#999999" size="2"><b>
             {$Price}
             </b></font>
           </a>
           <br />
             <font face="Arial" color="red" size="2"><b>
             {$Location}
             </b></font>
          </font>

          {/if}

         </td>
         <td width="40%" class="srchCUR"  align="center" valign="top">
         <div style="color: red;">
         {$LISTINGS_SORTED_BY}:&nbsp;
          {if $sortby eq 0}{$Price}{else}{$Location}{/if}</div>
         {$all_prices_in_currency}
         <br />
         {$includeAllTaxes}
         <br />&nbsp;
         </td>
         <td width="30%" class="srchPAGENUMS" align="right" valign="bottom">
         {$Page} {$page_num} / {$max_pages}
         </td>
        </tr>
       </table>


       <table width="{#SEARCHWIDTH#}" align="center">
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


{*----   MAIN LOOP CONTROLS  ---------------------------------------------------------------*}
{assign var=lastid value=""}
{foreach name=mainloop from=$room_price_data item=entry  }
{if $entry.hotel_id ne $lastid}
 {if $lastid ne ""} </table> {/if}
  {assign var=lastid value=$entry.hotel_id}
{*----   MAIN LOOP - header for each hotel  ------------------------------------------------*}
         <br />
         <table align="center" border="0" cellpadding="2" cellspacing="0" width="{#SEARCHWIDTH#}" bgcolor="#33AA77">
          <tr>
           <td width="10">&nbsp;</td>
           <td class="srchHdr3" width="220" align="left">
             <a href="{$entry.hotelinfo_URL}" class="srchHname">

               {$entry.hotel_name}

             </a>
           </td>
           <td></td>
           <td class="srchHdr1" width="160" align="right"  bgcolor="#FFF9F5">
            &nbsp;
           </td>
           <td class="srchHdr1" width="60" align="right" bgcolor="#FFF9F5">
                      </td>
          </tr>
          <tr>

           <td>&nbsp;</td>
           <td class="srchHdr2" colspan="2" valign="top" align="left">
             &nbsp;&nbsp;&nbsp;
             <a href="{$entry.hotelinfo_URL}" class="srchHlink">more info</a>
             &nbsp;&nbsp;&nbsp;
              <a href="{$entry.hotelrate_URL}" class="srchHlink">rate table</a>
              &nbsp;&nbsp;&nbsp;
               <a href="{$entry.hotellink_URL}" class="srchHlink">website</a>
             </td>
             <td  colspan="2" class="srchHdr1" align="right">
              {$numAdults} Adult{if $numAdults ne 1}s{/if}              &nbsp;/&nbsp;
              {$numDays} Night{if $numDays ne 1}s{/if}              &nbsp;
             </td>
            </tr>
           </table>

           <table  align="center" border="0" cellpadding="3" cellspacing="0" width="{#SEARCHWIDTH#}">
           {counter name=tabcounter print=no assign=grpid}

           {/if}

            <tr  bgcolor="{cycle values="`$smarty.config.searchcycleBgColor`" name="`$grpid`"}"  >
             <td class="srchL" width="80" valign="center" align="right" nowrap>
              {$entry.room_label|upper}:
             </td>
             <td class="srchD" width="80%" valign="top" align="left">
              {$entry.room_desc|capitalize|escape}
             </td>
             <td class="srchA" width="20%" vAlign="center" align="right" nowrap>
             {$entry.price}
             </td>
            </tr>


{/foreach}
		     </table>

		<br />
		<table width="{#SEARCHWIDTH#}" align="center">
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
       <table width="{#SEARCHWIDTH#}" align="center">
        <tr>
         <td class="srchPAGENUMS" align="left" valign="bottom" >
         &nbsp;
         </td>
         <td></td>
         <td class="srchPAGENUMS" align="right" valign="bottom">
           {$Page} {$page_num} / {$max_pages}
         </td>
        </tr>
       </table>
       </div>
       </form>

		   <!--- end center column --->
		   </div>



     {*************  END MEAT  *************}


{include file="ggv10_footer.tpl"}
{*debug*}