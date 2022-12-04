{include file="header.tpl"}
<!-- Breadcrumbs -->
<div class="breadcrumbs" style="background-image:url('img/breadcrumbs-bg.jpg')">
<div class="container">
	<div class="row">
		<!-- Breadcrumbs-Content -->
		<div class="col-lg-7 col-md-7 col-12">
			<div class="breadcrumbs-content">
			    
			    
<h2>Deposit Confirmation</h2>

						</div>
					</div>
					<!-- Breadcrumbs-Menu -->
					
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->
<!-- Blog Archive -->
		<section id="blogs" class="blog-area dash archive">
			<div class="container">
				<div class="row">
				  {include file="lists2.tpl"} 
					<div class="col-lg-8 col-12">
					   <div class="row">
{if $ok == 1}
<br><br>

<table cellspacing=0 cellpadding=2 class="form deposit_confirm">
<tr>
 <th>Plan:</th>
 <td>{$deposit.name|escape:html}</td>
</tr>
<tr>
 <th>Profit:</th>
 <td>{$deposit.percent}% {if $deposit.period == 'end' || $deposit.period == 'endh'}after {$deposit.periods} {$deposit.time_units}{if $deposit.periods != 1}s{/if}{else}{$deposit.period_name} for {if $deposit.periods == 0}lifelong{else}{$deposit.periods} {$deposit.time_units}{if $deposit.periods != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}{/if}</td>
</tr>
<tr>
 <th>Principal Return:</th>
 <td>{if $deposit.principal_return}Yes{if $deposit.principal_return_hold_percent > 0}, with {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}{else}No (included in profit){/if}</td>
</tr>
<tr>
 <th>Principal Withdraw:</th>
 <td>
{if $deposit.principal_withdraw}Available with 
{foreach from=$deposit.principal_withdraw_terms item=t name=wpt}
{$t.percent}% fee {if $t.duration > 0}after {$t.duration} days{/if}{if !$smarty.foreach.wpt.last} or {/if}
{/foreach}
{if $deposit.principal_withdraw_duration_max} but before {$deposit.principal_withdraw_duration_max|number_format} days{/if}
{else}Not available{/if}
 </td>
</tr>
{if $deposit.compound != -1}
<tr>
 <th>Compound:</th>
 <td>{$deposit.compound|number_format}%</td>
</tr>
{/if}
<tr>
 <th>Amount:</th>
 <td>{$currency_sign}{$deposit.amount}</td>
</tr>
</table>

<form name=spend method=post>

<input type=hidden name=a value=deposit>
<input type=hidden name=action value=confirm>
<input type=hidden name=type value={$type}>
<input type=hidden name=h_id value={$h_id}>
<input type=hidden name=amount value="{$famount}">
<input type=hidden name=compound value={$compound}>
<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=deposit'">
</form>

{else}
{if $max_deposit_less == 1}Sorry, the maximal deposit is {$max_deposit_format}.<br>{/if}
{if $wrong_plan == 1} The Plan does not exist. {/if} 
{if $not_enough_funds == 1} You have not enough funds to complete the operation.<br>{/if}
{if $less_than_min == 1}The minimal spend amount for '{$plan_name}' is {$currency_sign}{$min_amount}.<br>{/if}
{if $on_hold == 1}Sorry, this amount on hold now.<br>{/if}
<br>
Click <a href="{"?a=deposit"|encurl}">here</a> and try again.
{/if}
</div>
</div>
</div>
</div>

</section>
<!-- End Client Area -->
{include file="footer.tpl"}
