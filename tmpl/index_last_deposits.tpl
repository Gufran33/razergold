{if $settings.index_last_deposits}
{loaddata name="transactions" limit=$settings.index_last_deposits type="deposit" var="last_deposits"}
{/if}

{if $last_deposits}

{foreach from=$last_deposits item=s}
<li>
<span class="span1">{$s.username}</span>
<span>{$currency_sign}{$s.amount}</span>
<i><img src="images/{$s.ec}.gif"></i>
</li>
{/foreach}
{/if}
