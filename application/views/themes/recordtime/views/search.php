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
  </div>

  <div class="Filter">
    <span><?php echo count($results) ?> results </span>

    <div>
      Sort By Genre
      <?php

        // make genres array
        if (count($results) > 0):
          $genres = array();

          foreach($results as $row):
            if ($row->genres):
              array_merge($genres, explode(",", $row->genres));
            endif;
          endfor;
        endif;

        // make an input box for each genre

      ?>
      <input type="checkbox"/>

    <?php echo $row->genres; endif; endforeach; endif; ?>

    </div>


  </div>
  <div class="Results container">
    <?php
      if (count($results) > 0):
        foreach($results as $row):
    ?>
        <!-- Add in classes using following schemas

          location-<city>-<state>
          relevance-<score>
          genre-<genre>

       -->
        <div class="ResultRow row">
          <div class="Details col-md-4">
            <div>
              <img
                src="<?= site_url(); ?>assets/images/user-placeholder.jpg"
              />
              <h4><?=$row->firstname?> <?=$row->lastname?></h4>
            </div>
            <div class="MinorDetails">
              <p><?=$row->genres?></p>
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
<script>

  const div = $('div');
  console.dir($);
</script>
