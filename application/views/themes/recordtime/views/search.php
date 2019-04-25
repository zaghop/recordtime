<div class="middle-container Search container">
  <div class="banner-image">
     <div class="banner-content">
        <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
     </div>
  </div>
  <div
    class="page-title box-shadow ProjectsDashboard__Title">
     <div class="container-fluid">
        <h1>Search</h1>
     </div>
  </div>
  <div class="form-container">
    <?php
      echo form_open('index.php/search');
      $data = array(
        'type'  => 'text',
        'name'  => 'search',
        'id'    => 'search',
        'value' => 'Search for producers, genres, and more',
        'class' => 'hiddenemail'
        );

        echo form_input($data);
        echo form_submit('search_submit', html_escape('→'));
        echo form_close()
    ?>
  </div>
  <div class="Results container">
    <?php
      if (count($results) > 0):
        foreach($results as $row):
    ?>
        <div class="ResultRow row">
          <div class="Details col-md-4">
            <div>
              <img
                src="<?= site_url(); ?>assets/images/user-placeholder.jpg"
              />
              <h4><?=$row->firstname?> <?=$row->lastname?></h4>
            </div>
            <div class="MinorDetails">
              <p>Genres</p>
              <p><?=$row->city?><?=$row->state?></p>
            </div>
          </div>
          <div class="Philosophy col-md-4">
            <h5>Production Philosophy</h5>
            <?=$row->philosophy?>
          </div>
          <div class="Skills col-md-4">
            <h5>Skills and Specialties</h5>
            <?=$row->skills?>
          </div>
        </div>
    <?php endforeach; endif; ?>
</div>
