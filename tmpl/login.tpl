{include file="header99.tpl"}
<!-- Breadcrumbs -->
<div class="breadcrumbs" style="background-image:url('img/breadcrumbs-bg.jpg')">
<div class="container">
	<div class="row">
		<!-- Breadcrumbs-Content -->
		<div class="col-lg-7 col-md-7 col-12">
			<div class="breadcrumbs-content">
			    
			    
<h2>Account Login</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->
{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}

{if $frm.say eq 'invalid_login'}
<h3>Login error:</h3><br><br>

Your login or password or turing image code is wrong. Please check this information.
{/if}
<!-- Blog Archive -->
<section id="blogs" class="blog-area archive">
<div class="container">
	<div class="row" style="justify-content: center;">
<div class="col-lg-8 col-12">	

<!-- Blog Sidebar -->
<div class="blog-sidebar text-center">
	<!-- Search Widget -->
	<div class="widget widget-search">
		<h4 class="widget-title">Login Your Account</h4>
<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value='{$frm.follow}'>
<input type=hidden name=follow_id value='{$frm.follow_id}'>
<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>Username:</td>
 <td><input type=text name=username value='{$frm.username|escape:"html"}' class=inpts size=30 autofocus="autofocus"></td>
</tr><tr>
 <td>Password:</td>
 <td><input type=password name=password value='' class=inpts size=30></td>
</tr>
{include file="captcha.tpl" action="login"}
<tr>
 <td>&nbsp;</td>
 <td><input type=submit value="Login" class=sbmt></td>
</tr></table>
</form>
	<br>
or <a href="?a=forgot_password" style="color: #010130;">remember your login information</a>.

	</div>

						<!-- End Blog Sidebar -->
					</div>
				</div>
			</div>
		</section>	
		<!-- End Blog Archive -->
</div>
</div>
</div>
</div>
</div>
</section>
<!-- End Client Area -->

{include file="footer99.tpl"}
