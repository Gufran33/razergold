{include file="header.tpl"}
<!-- Breadcrumbs -->
<div class="breadcrumbs" style="background-image:url('img/breadcrumbs-bg.jpg')">
<div class="container">
	<div class="row">
		<!-- Breadcrumbs-Content -->
		<div class="col-lg-7 col-md-7 col-12">
			<div class="breadcrumbs-content">
			    
			    
<h2>Account Dashboard</h2>

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
					    	



<div class="accfull">
	<div class="userpart">
    	<div class="leftuser" style="float:right;">
        <p>Welcome <b>{$userinfo.username}</b><br>Last Access <b>{$userinfo.create_account_date}&nbsp;</b></p>
        </div>
        <div class="rightuser">
        <p> WELCOME TO <br> {$settings.site_name}</p>
        </div>
    </div><div class="clear"></div><!---- user end--->
    <div class="accdetail">
    	<div class="toptitle">Your Account Details</div>
        <div class="totdep">
        <p>$<b>{$ab_formated.deposit}</b></p>
        <div class="textpr"><i class="fa fa-area-chart" aria-hidden="true"></i> &nbsp;Total Deposits</div>
        </div>
        <div class="totdep">
         <p>$<b>{$ab_formated.withdrawal}</b></p>
         <div class="textpr"><i class="fa fa-line-chart" aria-hidden="true"></i> &nbsp;Total Withdrawals</div>
        </div>
    </div><!--acc detail end ---><div class="clear"></div>
    
    
 <p>   
    
    
    </p><div class="acctrans">
    	<div class="toptitle">Your Account Transaction Info</div>
        <div class="tottrans">
        <p>Account Balance<br><span>$<b>{$ab_formated.total}</b></span></p>
        </div>        
        <div class="tottrans">
        <p>Active Deposit<br><span>$<b>{$ab_formated.active_deposit}</b></span></p>
        </div>
        <div class="tottrans">
        <p>Last Deposit<br><span>$<b>{$last_deposit|default:"N/A"}</b></span></p>
        </div>       
        <div class="tottrans">
        <p>Earned Total<br><span> $<b>{$ab_formated.earning}</b></span></p>
        </div>
        <div class="tottrans">
        <p>Last Withdrawal<br><span>$<b>{$last_withdrawal|default:"N/A"}</b></span></p>
        </div>       
        <div class="tottrans">
        <p>Pending Withdrawal<br><span>$<b>{$ab_formated.withdraw_pending}</b></span></p>
        </div>
   </div><!-----acctrans end -->
</div>

</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Client Area -->

{include file="footer.tpl"}