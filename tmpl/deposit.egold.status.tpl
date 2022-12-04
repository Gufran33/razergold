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
				<div class="row"><br>
<br><div class="col-lg-8 col-12">
					   <div class="row">
{if $process eq 'yes' || $frm.m_status eq 'success'}
We have received your deposit. Thank you!
{else}
We have not received your deposit. Please try again.
{/if}
</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Client Area -->


{include file="footer.tpl"}