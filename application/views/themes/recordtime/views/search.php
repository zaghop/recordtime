<div class="middle-container Search">
  <div class="banner-image">
     <div class="banner-content">
        <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
     </div>
  </div>
  <div
    class="page-title box-shadow ProjectsDashboard__Title">
     <div class="container-fluid">
        <h1>Search</h1>
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
              echo form_submit('search_submit', 'Search');
              echo form_close()
          ?>
        </div>
     </div>
  </div>
  <div class="Results">
    <?php
      if (count($results) > 0) {
        foreach($results as $row){
          echo $row->firstname;
          echo $row->philosophy;
        }
      }
    ?>
</div>
