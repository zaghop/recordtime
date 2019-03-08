<form action="" method="post" enctype="multipart/form-data">
 <div class="middle-container">
    <div class="banner-image">
       <div class="banner-content">
          <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
       </div>
    </div>
    <div class="page-title box-shadow">
       <div class="container-fluid">
          <h1>(New) Project</h1>
       </div>
    </div>
 </div>
<div class="container new-project-container-padding" id="step-1">
<div class="row project-inner-section">
<div class="col-sm-4">
  <div class="project-details-container">
    <div class="new-project-section-title box-shadow white-bg same-height">
      <h3>What will this project be called?</h3>
      <p>Don’t worry—this isn’t official. </p>
      <p>It’ll just help you identify it on RecordTime.</p>
    </div>
    <div class="project-section-input-box">
      <input type="text" name="name" >
    </div>
  </div>
</div>
<div class="col-sm-4">
  <div class="project-details-container">
    <div class="new-project-section-title box-shadow white-bg same-height">
      <h3>What's your budget per song?</h3>
      <p>this will help us find you producers in your price range.</p>
    </div>
    <div class="project-section-input-box doller-sign-textbox">
      <input type="text" name="budget" placeholder="$">
    </div>
  </div>
</div>
<div class="col-sm-4">
  <div class="project-details-container process-icon-section">
    <div class="process-stetus">
      <ul>
        <li>
          <div class="number-arrow-section active">
            <div class="number">
              1
            </div>
          </div>
        </li>
        <li>
          <div class="number-arrow-section">
            <div class="number">
              2
            </div>
          </div>
        </li>
        <li>
          <div class="number-arrow-section">
            <div class="number">
              3
            </div>
          </div>
        </li>
      </ul>
    </div>
    <div class="arrow-section number-arrow-section">
      <div class="arrow">
        <a href="javascript:void(0)" id="step-1-submit"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<div class="container new-project-container-padding" id="step-2" style="display:none;">
      <div class="row project-inner-section">
        <div class="col-sm-4">
          <div class="project-details-container">
            <div class="new-project-section-title box-shadow white-bg same-height">
              <h3>How many songs would you like to record?</h3>
              <p>You can always change this number later on. </p>
            </div>
            <div class="project-section-dropdown-box">
              <div class="custom-select" style="">
                <select name="songs">
                <option value="1"></option>
                <option value="2"></option>
                <option value="3"></option>
                <option value="4"></option>
                <option value="5"></option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="project-details-container">
            <div class="new-project-section-title box-shadow white-bg same-height">
              <h3>When do you want it done?</h3>
              <p>Note that projects lasting more than 90 days will need to be completed in sections.</p>
            </div>
            <div class="project-section-input-box doller-sign-textbox">
               <input type="date" name="complete_time">
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="project-details-container process-icon-section">
            <div class="process-stetus">
              <ul>
                <li>
                  <div class="number-arrow-section ">
                    <div class="number">
                      1
                    </div>
                  </div>
                </li>
                <li>
                  <div class="number-arrow-section active">
                    <div class="number">
                      2
                    </div>
                  </div>
                </li>
                <li>
                  <div class="number-arrow-section">
                    <div class="number">
                      3
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div class="arrow-section number-arrow-section two-arrow">
              <div class="arrow left-arrow">
                <a href="javascript:void(0)" id="step-1-back"><i class="fa fa-arrow-left" aria-hidden="true"></i>
              </div>
              <div class="arrow right-arrow">
                <a href="javascript:void(0)" id="step-2-submit"><i class="fa fa-arrow-right " aria-hidden="true"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
     <div class="container new-project-container-padding" id="step-3" style="display:none;">
      <div class="row project-inner-section">
        <div class="col-sm-4">
          <div class="project-details-container">
            <div class="new-project-section-title upload-file-height-auto box-shadow white-bg same-height">
              <h3>Show us what you've got.</h3>
              <p>Upload Mp3 files of demos you plan to record. These will only be shared with</p>
            </div>
            <div class="project-section-upload">
              <div class="fileUpload btn btn-default">
                <span>Upload</span>
                <input type="file" name="doc_name" class="upload" />
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="project-details-container">
            <div class="new-project-section-title new-project-section-checkbox box-shadow white-bg same-height">
              <ul>
                <li>
                  <div class="checkbox-text">
                    <p>Are you willing to travel to work with producers?</p>
                  </div>
                  <div class="input_wrapper">
                    <input class="switch_4" type="checkbox" value="1" name="criteria[]">
                    <i class="fa fa-check is_checked" aria-hidden="true"></i>
                    <i class="fa fa-times is_unchecked" aria-hidden="true"></i>
                  </div>
                </li>
                <li>
                  <div class="checkbox-text">
                    <p>Do you want to record any cover songs?</p>
                  </div>
                  <div class="input_wrapper">
                    <input class="switch_4" type="checkbox" value="2" name="criteria[]">
                    <i class="fa fa-check is_checked" aria-hidden="true"></i>
                    <i class="fa fa-times is_unchecked" aria-hidden="true"></i>
                  </div>
                </li>
                <li>
                  <div class="checkbox-text">
                    <p>Do you want to</p>
                  </div>
                  <div class="input_wrapper">
                    <input class="switch_4" type="checkbox" value="3" name="criteria[]">
                    <i class="fa fa-check is_checked" aria-hidden="true"></i>
                    <i class="fa fa-times is_unchecked" aria-hidden="true"></i>
                  </div>
                </li>
              </ul>

            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="project-details-container process-icon-section">
            <div class="process-stetus">
              <ul>
                <li>
                  <div class="number-arrow-section">
                    <div class="number">
                      1
                    </div>
                  </div>
                </li>
                <li>
                  <div class="number-arrow-section">
                    <div class="number">
                      2
                    </div>
                  </div>
                </li>
                <li>
                  <div class="number-arrow-section active">
                    <div class="number">
                      3
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div class="arrow-section number-arrow-section two-arrow">
              <div class="arrow left-arrow">
                <a href="javascript:void(0)" id="step-2-back"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
              </div>
              <div class="arrow right-arrow">
                <a href="javascript:void(0)" id="step-3-submit"><i class="fa fa-arrow-right " aria-hidden="true"></i></a>
              </div>
            </div>
            <input type="submit" name="submit" class="btn btn-block btn-recording" value="Finish" />
          </div>
        </div>
      </div>
     </div>

</div>
<script type="text/javascript">
$(document).ready(function(){
   $('#step-1-submit').click(function(){
      $('#step-1').hide();
      $('#step-2').show();
      var id = $('.user-type').attr("id");
   });
   $('#step-2-submit').click(function(){
      $('#step-2').hide();
      $('#step-3').show();
   });
   $('#step-1-back').click(function(){
      $('#step-2').hide();
      $('#step-1').show();
   });
   $('#step-2-back').click(function(){
      $('#step-3').hide();
      $('#step-2').show();
   });
})
</script>
