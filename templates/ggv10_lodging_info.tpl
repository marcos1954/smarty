{config_load file="ggv_search.conf"}
{include file=$headerfilename}
<div id="Listing_right_column_pix">
			  {if $list_map != ''}
			  	<a href="{$list_mapbig}"><img width="200" height="300" src="{$list_map}" /></a><br />
     		  {/if}
			  {if $lodging_pix1_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix1_src}" width="{$lodging_pix1_width}" height="{$lodging_pix1_height}" /><br />
			  {/if}
			  {if $lodging_pix2_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix2_src}" width="{$lodging_pix1_width}" height="{$lodging_pix2_height}" /><br />
			  {/if}
			   {if $lodging_pix3_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix3_src}" width="{$lodging_pix1_width}" height="{$lodging_pix3_height}" /><br />
			  {/if}
			  {if $lodging_pix4_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix4_src}" width="{$lodging_pix1_width}" height="{$lodging_pix4_height}" /><br />
			  {/if}
			  {if $lodging_pix5_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix5_src}" width="{$lodging_pix1_width}" height="{$lodging_pix5_height}" /><br />
			  {/if}
			  {if $lodging_pix6_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix6_src}" width="{$lodging_pix1_width}" height="{$lodging_pix6_height}" /><br />
			  {/if}
			  {if $lodging_pix7_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix7_src}" width="{$lodging_pix1_width}" height="{$lodging_pix7_height}" /><br />
			  {/if}
			  {if $lodging_pix8_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix8_src}" width="{$lodging_pix1_width}" height="{$lodging_pix8_height}" /><br />
			  {/if}
			  {if $lodging_pix9_src != ''}
			  	<img border="0" src="../Listings/{$lodging_pix9_src}" width="{$lodging_pix1_width}" height="{$lodging_pix9_height}" /><br />
			  {/if}

		</div>  <!---- end right column pix ---->
     	<div id="main_content">



    	 <div id="Listing_full_content">
			<div id="Listing_header">
			  <div class="listinglogo">
                      {if $lodging_logo_src != ''}
                       <img border="0" src="../Listings/{$lodging_logo_src}"  width="{$lodging_logo_width}"  height="{$lodging_logo_height}"  align="left">
                      {else}
                        &nbsp;
                      {/if}
               </div>


               <div class="listing_info">
                 	<p class="listing_name">{$hotel_name}</p>
     				<p class="listing_address">
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
     					<br />
                        {if $lodging_link_url != ''}
     	                    <a class="listlink" href="{$lodging_link_url}">website</a>&nbsp;&nbsp;
     	                {/if}
     				</p>

     			</div>
                <br clear="all" />
                <br />

                {if $features ne ""}
            	<p>
     	    	<font face="Arial" color="#0099CC" size="1">

             	<font size="2">
              	<b><i>Property Features:</i></b>
             	</font> &nbsp;

             	{$features}
            	</font>
            </p>
            <br />
           {/if}

     		</div>  <!-- end of Listing_header -->



     	<p>
     	 {$lodging_desclong|nl2br}
     	</p>
	<br clear="all">
	<br />
	<br />
	<br />
	<p class="listing_name" style="text-align: center;">Rates for {$hotel_name}</p>
	<br />

     <form method="POST" action="{$action}" name="f1">
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
			 <SELECT NAME="month" ONCHANGE="populate(this.form,this.selectedIndex);">
			   {html_options options=$months selected=$mm}
             </select>
             <SELECT NAME="day">
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
                  <OPTION></OPTION>
             </select>
             <SELECT NAME="year" ONCHANGE="populate(this.form,this.form.month.selectedIndex);">
              {html_options options=$years selected=$yy}
             </SELECT>

{literal}
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
{
    {/literal}selectedIndex = {$dd_minus_one}; {literal}

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
	{/literal}document.f1.day.options[{$dd_minus_one}].selected = true;{literal}
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
</script>
{/literal}

           &nbsp;&nbsp;&nbsp;
          </td>
          <td>
           <select size="1" name="stay_numDays">
            {html_options options=$day_choices selected=$stay_numDays}
           </select>
          </td>
          <td>
           <select size="1" name="stay_numAdults">
            {html_options options=$pax_choices selected=$stay_numAdults}
           </select>
          </td>
          <td>
           <input type="submit"
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

     <div align="center">
      <table width="500" border="0" cellspacing="3" cellpadding="2" >
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
     <div align="center">
      <table width="500" border="0" cellspacing="3" cellpadding="2" >
       <tr>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
          room<br>ref<br>&nbsp;
         </font>
        </td>
        <td Align="left" bgcolor="#FFCCCC">
         <font face="Arial" color="#222222" size="1">
          room<br>description<br>&nbsp;
         </font>
        </td>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
          <!-- label for {$entry.room_avail} -->
         </font>
        </td>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
          avg day<br>price<br>with tax
         </font>
        </td>
        <td Align="center" bgcolor="#FFCCCC" nowrap>
         <font face="Arial" color="#222222" size="1">
           total<br>price<br>with tax
         </font>
        </td>
       </tr>

       {foreach from=$room_info_data item=entry}
       <tr>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          {$entry.room_label}
         </font>
        </td>
        <td Align="left" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          {$entry.room_desc}
         </font>
        </td>
        <td Align="center" vAlign="top" bgcolor="#FFFFEA" nowrap>
         <font face="Arial" color="#008000" size="2">
          {$entry.room_avail}
         </font>
        </td>
        <td Align="right" vAlign="top" bgcolor="#FFFFEA">
         <font face="Arial" color="#008000" size="2">
          {$entry.room_avg_price}
         </font>
         </td>
         <td Align="right" vAlign="top" bgcolor="#FFFFEA">
          <font face="Arial" color="#008000" size="2">
           {$entry.room_total}
          </font>
        </td>
       </tr>
       {/foreach}

      </table>

      </div>

     {**********************  END MEAT  ************************}
</div></div>
{include file="ggv10_footer.tpl"}
{*debug*}