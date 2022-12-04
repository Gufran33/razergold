{include file="header99.tpl"}

<!-- Breadcrumbs -->
<div class="breadcrumbs" style="background-image:url('img/breadcrumbs-bg.jpg')">
<div class="container">
	<div class="row">
		<!-- Breadcrumbs-Content -->
		<div class="col-lg-7 col-md-7 col-12">
			<div class="breadcrumbs-content">
			    
			    
<h2>Contact</h2>
						</div>
					</div>
				
				</div>
			</div>
			</div>
			</div>
		</section>
		<!-- End Breadcrumbs -->


{if $say eq 'send'}
Message has been successfully sent. We will back to you in next 24 hours. Thank you.<br><br>
{else}

<script language=javascript>
{if $userinfo.logged == 1}
{literal}
function checkform() { 
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{else}
{literal}
function checkform() {
  if (document.mainform.name.value == '') {
    alert("Please type your full name!");
    document.mainform.name.focus();
    return false;
  }
  if (document.mainform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.mainform.email.focus();
    return false;
  }
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{/if}
</script>
<!-- Contact Area -->
<section class="contact-area">
<div class="content-area">
<div class="left-col" style="background-image:url(img/contact-bg.jpg);"></div>
<!-- Contact Right -->
<div class="right-col">
<div class="row">
<div class="col-lg-6 offset-lg-6 col-md-6 offset-md-6 col-12 wow fadeInRight" data-wow-duration="1s">
<div class="contact-right">
<div class="top-content">
<h3><span>Contact</span> Get In Touch</h3>
<p>If you need advice or technical assistance, do not hesitate to contact our specialists. </p>
</div>
<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value=support>
<input type=hidden name=action value=send>

 {if $errors}
  <ul style="color:red">
   {if $errors.turing_image == 1}
    <li>Invalid turing image</li>
   {/if}
   {if $errors.invalid_email == 1}
    <li>Invalid email address</li>
   {/if}
  </ul>
 {/if}
<div class="contact-form">
<div class="row">
<div class="col-lg-6 col-md-12 col-12">
<div class="form-group">
{if $userinfo.logged}
<input type="text" placeholder="{$userinfo.email}" size=30 class=inpts>
{else}
<input type="text" name="name" value="{$frm.name|escape:htmlall}" placeholder="Your Name" size=30 class=inpts>{/if}
</div>
</div>

<div class="col-lg-6 col-md-12 col-12">
<div class="form-group">
{if $userinfo.logged}
<input type="text" placeholder="{$userinfo.name}" size=30 class=inpts>
{else}
<input type="text" name="email" value="{$frm.email|escape:htmlall}" placeholder="Your Email" size=30 class=inpts>{/if}
</div>
</div>

<div class="col-lg-12 col-md-12 col-12">
<div class="form-group">
<textarea name="message" placeholder="Your Message">{$frm.message|escape:htmlall}</textarea>
</div>
</div>	

{include file="captcha.tpl" action="support"}
<div class="col-lg-6 col-12">
<div class="form-group contact-button">
	<button type="submit" class="theme-btn">submit now</button>
</div>	
</div>
</div>
</div>	
</form>

{/if}

</div>
</div>
</div>
</div>
<!-- End Contact Right -->
</div>
</section>	
<!-- End Contact Area -->





</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Client Area -->


{include file="footer99.tpl"}
