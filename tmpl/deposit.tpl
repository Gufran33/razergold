{include file="header.tpl"}

<!-- Breadcrumbs -->
<div class="breadcrumbs" style="background-image:url('img/breadcrumbs-bg.jpg')">
<div class="container">
	<div class="row">
		<!-- Breadcrumbs-Content -->
		<div class="col-lg-7 col-md-7 col-12">
			<div class="breadcrumbs-content">
			    
			    
<h2>Make Deposit</h2>

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
{if $fatal}

{if $fatal == 'one_per_month'}
You can deposit once a month only.
{/if}

{else}

{literal}
<script language="javascript"><!--
function openCalculator(id)
{

  w = 225; h = 400;
  t = (screen.height-h-30)/2;
  l = (screen.width-w-30)/2;
  window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");

{/literal}
  {if $qplans > 1}
{literal}
  for (i = 0; i < document.spendform.h_id.length; i++)
  {
    if (document.spendform.h_id[i].value == id)
    {
      document.spendform.h_id[i].checked = true;
    }
  }
{/literal}
  {/if}
{literal}

}

function updateCompound() {
  var id = 0;
  var tt = document.spendform.h_id.type;
  if (tt && tt.toLowerCase() == 'hidden') {
    id = document.spendform.h_id.value;
  } else {
    for (i = 0; i < document.spendform.h_id.length; i++) {
      if (document.spendform.h_id[i].checked) {
        id = document.spendform.h_id[i].value;
      }
    }
  }

  var cpObj = document.getElementById('compound_percents');
  if (cpObj) {
    while (cpObj.options.length != 0) {
      cpObj.options[0] = null;
    }
  }

  if (cps[id] && cps[id].length > 0) {
    document.getElementById('coumpond_block').style.display = '';

    for (i in cps[id]) {
      cpObj.options[cpObj.options.length] = new Option(cps[id][i]);
    }
  } else {
    document.getElementById('coumpond_block').style.display = 'none';
  }
}
var cps = {};
--></script>
{/literal}

{if $frm.say eq 'deposit_success'}
<h3>The deposit has been successfully saved.</h3>
<br><br>
{/if}

{if $frm.say eq 'deposit_saved'}
<h3>The deposit has been saved. It will become active when the administrator checks statistics.</h3><br><br>
{/if}

{if $errors}
{if $errors.less_min}
Sorry, you can deposit not less than {$currency_sign}{$errors.less_min} with selected processing<br><br>
{/if}
{if $errors.greater_max}
Sorry, you can deposit not greater than {$currency_sign}{$errors.greater_max} with selected processing<br><br>
{/if}
{if $errors.ec_forbidden}
Sorry, deposit with selected processing is temproary forbidden.<br><br>
{/if}
{if $errors.cannot_invest_this_plan_anymore}
Sorry, you cannot invest this plan anymore<br><br>
{/if}
{/if}

<form method=post name="spendform">
<input type=hidden name=a value=deposit>
<!-- Pricing Area -->
<section class="pricing-area" style="padding:0px 0px 50px;">
<div class="row">
<div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-duration="1s">
<!-- Single Pricing -->
<div class="single-pricing">
<div class="pricing-head">
<h4>STANDARD</h4>
</div>
<div class="pricing-middle">
<div class="circle-box">
<div class="price">
	<h2>5%</h2>
	<p>DAILY FOREVER </p>
</div>
</div>
<ul class="price-list">
<li>Investment duration : lifetime</li>
<li>Min Deposit : 10 USD</li>
<li>Max Deposit : 999 USD</li>
<li>Principal Included daily profit</li>
<li>withdrawal in process Instant </li>
</ul>
</div>
<div class="pricing-bottom">
<input type="radio" id="rd1" name=h_id value="1" checked onclick="updateCompound()" style="display:none;">
<label for="rd1" >SELECT NOW</label>
</div>
</div>
<!-- End Single Pricing -->
</div>
<div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-duration="2s">
<!-- Single Pricing -->
<div class="single-pricing">
<div class="pricing-head">
<h4>PREMIUM</h4>
</div>
<div class="pricing-middle">
<div class="circle-box">
<div class="price">
	<h2>6%</h2>
	<p>DAILY FOREVER </p>
</div>
</div>
<ul class="price-list">
<li>Investment duration : lifetime</li>
<li>Min Deposit : 1000 USD</li>
<li>Max Deposit : 4999 USD</li>
<li>Principal Included daily profit</li>
<li>withdrawal in process Instant </li>
</ul>
</div>
<div class="pricing-bottom">
<input type="radio" id="rd2" name=h_id value="2" onclick="updateCompound()" style="display:none;">
<label for="rd2" >SELECT NOW</label>
</div>
</div>
<!-- End Single Pricing -->
</div>
<div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-duration="2s">
<!-- Single Pricing -->
<div class="single-pricing">
<div class="pricing-head">
<h4>EXSCLUSIV</h4>
</div>
<div class="pricing-middle">
<div class="circle-box">
<div class="price">
	<h2>7%</h2>
	<p>DAILY FOREVER </p>
</div>
</div>
<ul class="price-list">
<li>Investment duration : lifetime</li>
<li>Min Deposit : 5000 USD</li>
<li>Max Deposit : 9999 USD</li>
<li>Principal Included daily profit</li>
<li>withdrawal in process Instant </li>
</ul>
</div>
<div class="pricing-bottom">
<input type="radio" id="rd3" name=h_id value="3" onclick="updateCompound()" style="display:none;">
<label for="rd3" >SELECT NOW</label>
</div>
</div>
<!-- End Single Pricing -->
</div>	
<div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-duration="2s">
<!-- Single Pricing -->
<div class="single-pricing active">
<div class="pricing-head">
<h4>EXPERT</h4>
<div class="sticker">
<span>VIP members</span>
</div>
</div>
<div class="pricing-middle">
<div class="circle-box">
<div class="price">
	<h2>9%</h2>
	<p>DAILY FOREVER </p>
</div>
</div>
<ul class="price-list">
<li>Investment duration : lifetime</li>
<li>Min Deposit : 10000 USD</li>
<li>Max Deposit : 1000000 USD</li>
<li>Principal Included daily profit</li>
<li>withdrawal in process Instant </li>
</ul>
</div>
<div class="pricing-bottom">
<input type="radio" id="rd4" name=h_id value="4" onclick="updateCompound()" style="display:none;">
<label for="rd4" >SELECT NOW</label>
</div>
</div>
<!-- End Single Pricing -->
</div>			
</div>
</section>	
<!-- Pricing Area -->


<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>Your account balance ({$currency_sign}):</td>
 <td align=right>{$currency_sign}{$ab_formated.total}</td>
</tr>
<tr><td>&nbsp;</td>
 <td align=right>
  <small>
{section name=p loop=$ps}
   {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}{if $hold[p].amount > 0} / {$currency_sign}{$hold[p].amount} on hold{/if}<br>{/if}
{/section}
  </small>
 </td>
</tr>
<tr>
 <td>Amount to Spend ({$currency_sign}):</td>
 <td align=right><input type=text name=amount value='{$min_deposit}' class="form-control" size=15 style="text-align:right;"></td>
</tr>
<tr id="coumpond_block" style="display:none">
 <td>Compounding(%):</td>
 <td align=right>
  <select name="compound" class=inpts id="compound_percents"></select>
 </td>
</tr>

<tr>
  <td colspan=2>
   <table cellspacing=0 cellpadding=2 border=0>
{section name=p loop=$ps}
   {if $ps[p].balance > 0 and $ps[p].status == 1}
    <tr>
     <td><input type=radio name=type value="account_{$ps[p].id}">&nbsp;&nbsp; <img src="images/{$ps[p].id}.gif"></td>
     <td>Spend funds from the Account Balance {$ps[p].name}</td>
    </tr>
   {/if}
{/section}
{section name=p loop=$ps}
   {if $ps[p].status}
    <tr>
     <td><input type=radio name=type value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}checked{/if}>&nbsp;&nbsp; <img src="images/{$ps[p].id}.gif"></td>
     <td>Spend funds from {$ps[p].name}</td>
    </tr>
   {/if}
{/section}
   </table>
  </td>
</tr>
<tr>
 <td colspan=2><input type=submit value="Spend" class=sbmt></td>
</tr></table>
</form>
{literal}
<script language=javascript>
for (i = 0; i<document.spendform.type.length; i++) {
  if ((document.spendform.type[i].value.match(/^process_/))) {
    document.spendform.type[i].checked = true;
    break;
  }
}
updateCompound();
</script>
{/literal}

{/if}


</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Client Area -->
{include file="footer.tpl"}