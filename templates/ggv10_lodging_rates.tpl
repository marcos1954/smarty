{include file=$headerfilename}
     {*********************  MEAT GOES HERE  *********************}

     <div align="center">
      <table width="95%" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td Align="left" vAlign="bottom">
         <a href="{$hotel_info_url}"><font face="Arial" color="#999999" size="2">
          <b>{$hotel_info_url_text}</b></font>
         </a>
        </td>
       </tr>
      </table>
     </div>

     <div align="center">
      <table width="95%" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td width="1%" bgcolor="#FFCCCC" align="right" nowrap>
         <font face="Arial" color="black" size="2">
          <b>hotel</b>
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          {$hotel_name}
         </font>
        </td>

         <td width="1%" bgcolor="#FFCCCC" align="right" nowrap>
         <font face="Arial" color="black" size="2">
          <b>booking fee</b>
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          {$hotel_bookfee|string_format:"$ %d"}
         </font>
        </td>

        <td width="1%" bgcolor="#FFCCCC" align="right" nowrap>
         <font face="Arial" color="black" size="2">
          <b>add tax</b>
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          {$hotel_addtax|string_format:"%d%%"}
         </font>
        </td>
       </tr>
      </table>
     </div>

     <br />
     <center>
      <span style="font-family: sans-serif; font-weight: bold; color: #5054a7">
       PLEASE NOTE: ALL prices in this rate table are in {$currency}.
      </span>
     </center>
     <br />


     <div align="center">
      <table width="95%" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <th Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="black" size="2">
          <b>room<br>ref</b>
         </font>
        </th>
        <th Align="center" bgcolor="#FFCCCC">
         <font face="Arial" color="black" size="2">
          <b>room<br>description</b>
         </font>
        </th>
        <th Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="black" size="2">
          <b>room<br>size</b>
         </font>
        </th>

        {foreach from=$period_data item=entry}
        <th Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="black" size="2">
          {if $entry.period_label ne ""}
           {$entry.period_label}<br>
          {/if}
          {$entry.period_start}<br>{$entry.period_end}
         </font>
        </th>
        {/foreach}
       </tr>
       {foreach from=$room_data item=room}
       <tr>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          {$room.room_label}
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          {$room.room_desc}
         </font>
        </td>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          {$room.room_maxcap}
         </font>
        </td>
        {foreach from=$room.room_prices item=prices}
        <td align="left" vAlign="top" bgcolor="#FFFFEA" nowrap>
        {foreach from=$prices.pax item=entry key=key}
         {if $key ne "1"}
          {if $key eq "2"}
           <span style="font-family: Arial; font-size:10pt; color: red; font-weight: bold">{else}<span   style="font-family: Arial; font-size:9pt; color: darkgreen">{/if}
           {$key}: {$entry.price_amount}<br />
           </span>
         {/if}
        {/foreach}
        {if $prices.minstay ne 0}
          <span style="font-family: Arial; font-size:9pt; color: darkred; font-weight: bold">{$prices.minstay} day min</span>
        {/if}
        </td>
       {/foreach}
       </tr>
      {/foreach}
      </table>
     </div>

     {********************  END MEAT  *********************}
{include file="ggv10_footer.tpl"}