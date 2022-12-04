{if $settings.index_last_withdrawals}
{loaddata name="transactions" limit=$settings.index_last_withdrawals type="withdrawal" var="last_withdrawals"}
{/if}

{if $last_withdrawals}

{foreach from=$last_withdrawals item=s}
<li>
<span class="span1">{$s.username}</span>
<span>{$currency_sign}{$s.amount}</span>
<i><img src="images/{$s.ec}.gif"></i>
</li>
{/foreach}
{/if}
