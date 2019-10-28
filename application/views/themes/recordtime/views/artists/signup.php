<form action="" method="post">
<div class="row" id="step-1">
      <div class="col-sm-1"></div>
      <div class="col-sm-1"></div>
      <div class="col-sm-4 mt-130 whats-kind-account">
         <div class="col-sm-12 row text-center">
            <p class="text-center sigup-heading">What kind of accounts would yo like to create?</p>
            <div class="mt-50"></div>
            <div class="col-sm-6 text-center account-block"><div class="round-white-border row"><img src="<?= site_url().template_assets_path(); ?>/images/Artist-icon.png" alt="Artist Icon" class="user-type" id="1" /></div> <p class="text-center">Artist</p></div>
            <div class="col-sm-6 text-center account-block"><div class="round-white-border row"><img src="<?= site_url().template_assets_path(); ?>/images/Producer Icon.png" alt="Producer Icon"  class="user-type" id="2" /></div> <p class="text-center">Producer</p></div>
            <img src="<?= site_url().template_assets_path(); ?>/images/sign-up-1d-process.png" alt="Prcess" class="mt-30"  />
            <input type="hidden" name="type" id="type" value="" />
         </div>
         <div class="col-sm-12 mt-20 recording-btn-container" style="display:none"><a href="javascript:void()" id="step-1-submit" class="btn btn-block btn-recording">Start Recording</a></div>
      </div>
   <div class="col-sm-6 ftr-guy-img"><img src="<?= site_url().template_assets_path(); ?>/images/ftr_guy.png" alt="Gitar Gys" /></a></div>
   </div>
</div>

<div class="row" id="step-2" style="display:none;">
   <div class="col-sm-1"></div>
   <div class="col-sm-4 mt-130 sign-up-form-containr">
        <div class="col-sm-12  text-center">
         <p class="text-center">Let’s set up your account.<br>
We’ll ask you for the rest later.</p>
            <div class="mt-50"></div>
         <div class="col-sm-12 signup-form">
               <div class="form-group">
                  <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                </div>
                <div class="form-group">
                  <div class="col-sm-6 row">
                  <input type="text" class="form-control" id="fname" placeholder="First Name" name="firstname">
                  </div>
                  <div class="col-sm-6 row">
                  <input type="text" class="form-control" id="lname" placeholder="Last Name" name="lastname">
                  </div>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" id="pwd" placeholder="Create Password" name="password">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" id="city" placeholder="City" name="city">
                </div>
            </div>
            <img src="<?= site_url().template_assets_path(); ?>/images/info2.jpg" alt="info" class="process-img" />
            <a class="btn btn-block btn-recording" id="step-2-submit">Continue</a>
        </div>

    </div>
    <div class="col-sm-7 ftr-guy-img"><img src="<?= site_url().template_assets_path(); ?>/images/sign_up_right_img.jpg" alt="Right Image Sign Up" /></div>
  </div>
</div>
<div class="row" id="step-3" style="display:none;">
   <div class="col-sm-1"></div>
   <div class="col-sm-4 mt-130 sign-up-form-containr">
        <div class="col-sm-12  text-center">
         <p class="text-center">Tell us about your sound. Don’t worry—we don’t like labels either. </p>
            <div class="mt-50"></div>
         <div class="col-sm-12 signup-form">

                <input type="text" class="form-control" id="genresSound" placeholder="Genres I sound like…" name="genre" style="height:66px;">
                <input type="text" class="form-control" id="artistWorkWith" placeholder="Artists I’ve worked with …" name="artist_work" style="height:66px;">
                <input type="text" class="form-control" id="soundCloudLink" placeholder="SoundCloud Link" name="soundcloud_link" style="height:45px;">

            </div>
            <img src="<?= site_url().template_assets_path(); ?>/images/sign-up-3.png" alt="info"  class="process-img"/>
            <input type="submit" name="submit" class="btn btn-block btn-recording" value="Finish" />
        </div>

    </div>
    <div class="col-sm-7 ftr-guy-img"><img src="<?= site_url().template_assets_path(); ?>/images/sign_up_right_img.jpg" alt="Right Image Sign Up" /></div>
  </div>
</div>

</form>
<script type="text/javascript">
$(document).ready(function(){
   $('#step-1-submit').click(function(){
      $('#step-1').hide();
      $('#step-2').show();
      var id = $('.round-white-border.active .user-type').attr("id");
      $('#type').val(id);
   });
   $('#step-2-submit').click(function(){
      $('#step-2').hide();
      $('#step-3').show();
   });
})
</script>
