<html>
<head></head>
<body>
   
<form method="POST" action="{$action}" name="f1">
    <input id="hid" type="hidden" name="id" value="{$hotel_id}">
     <div align="center">
       <center>
       <table border="0"  cellpadding="2" cellspacing="0">
         <tr>
           <td colspan="3">
            <font face="Verdana" size="1">
             <b>arrival date in Puerto Vallarta</b>
            </font>
           </td>
           <td>
            <font face="Verdana" size="1">
             <b>nights</b>
            </font>
           </td>
           <td>
            <font face="Verdana" size="1">
             <b>adults</b>
            </font>
           </td>
           <td>
           </td>
         </tr>
         <tr>
			<td colspan="3">
			 <SELECT id=month NAME="month" ONCHANGE="populate(this.form,this.selectedIndex);">
			   {html_options options=$months selected=$mm}
             </select>
             <SELECT id=days NAME="day">
                {html_options options=$days selected=$dd}
             </select>
             <SELECT id=year NAME="year" ONCHANGE="populate(this.form,this.form.month.selectedIndex);">
              {html_options options=$years selected=$yy}
             </SELECT>



           &nbsp;&nbsp;&nbsp;
          </td>
          <td>
           <select id=numDays size="1" name="stay_numDays">
            {html_options options=$day_choices selected=$stay_numDays}
           </select>
          </td>
          <td>
           <select id=numAdults size="1" name="stay_numAdults">
            {html_options options=$pax_choices selected=$stay_numAdults}
           </select>
          </td>
          <td>
           <input type="button"
                  onclick="fetchLodgingInfo();"
                name="Fetch"
                Value="Search"
                STYLE="font-family: Arial; font-size: 9pt; color: #FFFFFF; font-weight: bold; background-color: red">
          </td>
         </tr>
        </table>
       </center>
      </div>

      <div align="center">
       <table width="500" border="0" cellspacing="3" cellpadding="2" >
        <tr>
         <td align="center" valign="top">
          <b>
           <font size = 1 face="Verdana" color="#808000">
            {html_radios name="R1" options=$currency1 selected=$ucurrency separator="&nbsp;"}
            <br>
            {html_radios name="R1" options=$currency2 selected=$ucurrency separator="&nbsp;"}
           </font>
          </b>
         </td>
        </tr>
       </table>
      </div>
     </form>
<!--
     <div align="center">
      <table width="700" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td colspan="2">
         <p>{$sayshownrentedornot}
         </p>
         </td>
       </tr>
       <tr>
        <td Align="left" vAlign="bottom">
         <a href="{$rate_table_url}">
          <font face="Arial" color="#999999" size="2">
           <b>{$rate_table_url_text}</b>
          </font>
         </a>
        </td>
        <td Align="right" vAlign="bottom">
         <font face="Arial" color="#008000" size="2">
          {$all_prices_in_currency}
         </font>
        </td>
       </tr>
      </table>
     </div>
---->
     <div align="center">
      <table width="700" border="0" cellspacing="3" >
       <tr>
        <td class="label center">room ref</td>
        <td class="label left">room description</td>
        <td class="label center amount" > avg day price<br>with tax</td>
        <td class="label center amount" >total price<br>with tax</td>
       </tr>

       {foreach from=$room_info_data item=entry}
       
       <tr>
        <td class="data center">{$entry.room_label}</td>
        <td class="data left">{$entry.room_desc}</td>
        <td class="data right">{$entry.room_avg_price}</td>
        <td class="data right">{$entry.room_total}</td>
       </tr>
       {/foreach}
       
      </table>
     </div>
</body>
</html>
