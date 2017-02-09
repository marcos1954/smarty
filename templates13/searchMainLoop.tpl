
{assign var=lastid value=""}
{foreach name=mainloop from=$room_price_data item=entry  }
{if $entry.hotel_id ne $lastid}
 {if $lastid ne ""} </table> {/if}
  {assign var=lastid value=$entry.hotel_id}

    <br />
    <table class="pricesResults">
        <tr>
            <td class="srchHdr3">
                <a href="{$entry.hotelinfo_URL}" class="srchHname">{$entry.hotel_name}</a>
            </td>
            <td class="srchHdr1"></td>
            <td class="srchHdr1">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="srchHdr2" colspan="2" >
                &nbsp;&nbsp;&nbsp;
                <a href="{$entry.hotelinfo_URL}" class="srchHlink">more info</a>
                &nbsp;&nbsp;&nbsp;
                <a class="srchHlink trackLink" data-listname="{$entry.hotel_name} : website" href="{$entry.hotellink_URL}" rel="nofollow" >website</a>
            </td>
            <td class="srchHdr4">
                {$numAdults} Adult{if $numAdults ne 1}s{/if} &nbsp;/&nbsp;
                {$numDays} Night{if $numDays ne 1}s{/if}     &nbsp;
            </td>
        </tr>
    </table>

    <table  align="center" border="0" cellpadding="3" cellspacing="0" width="100%">
    {counter name=tabcounter print=no assign=grpid}

{/if}

        <tr  bgcolor="{cycle values="#eee,#ddd" name="`$grpid`"}"  >
            <td class="srchL">{$entry.room_label|upper}:</td>
            <td class="srchD">{$entry.room_desc|capitalize|escape}</td>
            <td class="srchA">{$entry.price}</td>
        </tr>
{/foreach}
    </table>
