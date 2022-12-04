{include file="header.tpl"}

<!-- Breadcrumbs -->
<div class="breadcrumbs" style="background-image:url('img/breadcrumbs-bg.jpg')">
<div class="container">
	<div class="row">
		<!-- Breadcrumbs-Content -->
		<div class="col-lg-7 col-md-7 col-12">
			<div class="breadcrumbs-content">
			    
			    
<h2>Earning History</h2>

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
					    	

{literal}
<script language=javascript>
function go(p)
{
  document.opts.page.value = p;
  document.opts.submit();
}
</script>
{/literal}

<table cellspacing=0 cellpadding=0 border=0 width=100%>
<tr>
<form method=post name=opts>
<input type=hidden name=a value=history>
<input type=hidden name=page value={$current_page}>
 <td>
   <select name=type class=inpts onchange="document.opts.submit();">
<option value="">All transactions</option>
{section name=opt loop=$options}
<option value="{$options[opt].type}" {if $options[opt].selected}selected{/if}>{$options[opt].type_name}</option>
{/section}
   </select>
{if $ecs}
<br><img src=images/q.gif width=1 height=4><br>
   <select name=ec class=inpts>
     <option value=-1>All eCurrencies</option>
{section name=ec loop=$ecs}
 <option value={$ecs[ec].id} {if $frm.ec eq $ecs[ec].id}selected{/if}>{$ecs[ec].name}</option>
{/section}
   </select>
{/if}
 </td>
 <td align=right>
From: <select name=month_from class=inpts>
{section name=month_from loop=$month}
<option value={$smarty.section.month_from.index+1} {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}>{$month[month_from]}
{/section}
</select> &nbsp;
<select name=day_from class=inpts>
{section name=day_from loop=$day}
<option value={$smarty.section.day_from.index+1} {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}>{$day[day_from]}
{/section}
</select> &nbsp;

<select name=year_from class=inpts>
{section name=year_from loop=$year}
<option value={$year[year_from]} {if $year[year_from] == $frm.year_from}selected{/if}>{$year[year_from]}
{/section}
</select><br><img src=images/q.gif width=1 height=4><br>

To: <select name=month_to class=inpts>
{section name=month_to loop=$month}
<option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}
{/section}
</select> &nbsp;
<select name=day_to class=inpts>
{section name=day_to loop=$day}
<option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}
{/section}
</select> &nbsp;

<select name=year_to class=inpts>
{section name=year_to loop=$year}
<option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}
{/section}
</select>

 </td>
 <td>
	&nbsp; <input type=submit value="Go" class=sbmt>
 </td>
</tr></table>
</form>
<br><br>

<div class="table-responsive">
<table cellspacing=1 cellpadding=2 border=0 width=100%>
<tr>
 <td class=inheader><b>Type</b></td>
 <td class=inheader width=200><b>Amount</b></td>
 <td class=inheader width=170><b>Date</b></td>
</tr>
{foreach from=$trans item=t}
<tr>
 <td><b>{$t.transtype}</b></td>
 <td width=200 align=left><b>{$currency_sign} {$t.amount}</b> <img src="images/{$t.ec}.gif" align=absmiddle hspace=1 height=17>{if $t.type == 'withdraw_pending'}<a href="{"?a=cancelwithdraw&id=`$t.id`&return=`$return`&"|encurl}" onclick="return confirm('Are you sure you want to delete this request?')">[cancel]</a>{/if}</td>
 <td width=170 align=center valign=bottom><b><small>{$t.d}</small></b></td>
</tr>
<tr>
 <td colspan=3 class=gray><small>{$t.description|escape:html}</small></td>
</tr>
{foreachelse}
<tr>
 <td colspan=3 align=center>No transactions found</td>
</tr>
{/foreach}
<tr><td colspan=3>&nbsp;</td>

{if $trans}
<tr>
    <td colspan=2>For this period:</td>
 <td align=right><b>{$currency_sign} {$periodsum}</b></td>
</tr>
{/if}
<tr>
    <td colspan=2>Total:</td>
 <td align=right><b>{$currency_sign} {$allsum}</b></td>
</tr>
</table>
</div>
{paginator col=$paginator.col cur=$paginator.cur url="javascript:go('%s')"}

</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Client Area -->

{include file="footer.tpl"}