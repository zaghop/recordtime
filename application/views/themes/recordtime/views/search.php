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
        'placeholder' => 'Search for producers, genres, and more',
        'class' => 'hiddenemail'
        );

        echo form_input($data);
        echo form_submit('search_submit', html_escape('→'));
        echo form_close()
    ?>

    <?php if (count($results) > 0): ?>
       <div class="result count">
        <?php echo count($results) ?>
         Results
       </div>
       <div>
         Sort by:
         <button id="price-toggle">Price</button>
         <button id="location-toggle">Local</button>
       </div>

    <?php endif; ?>


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
              <p>Price: <?=$row->price?></p>
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

<script>
  $('#price-toggle').click(function() {
    console.log("LOLO");
  })



  $('#price-toggle').click(function() {
      
  });
</script>
