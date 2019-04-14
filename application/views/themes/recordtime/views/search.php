<div class="middle-container">
  <div class="banner-image">
     <div class="banner-content">
        <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
     </div>
  </div>
  <div
    class="page-title box-shadow ProjectsDashboard__Title">
     <div class="container-fluid">
        <h1>Search</h1>
        <div>
          <?php
            echo form_open('search');
            $data = array(
              'type'  => 'text',
              'name'  => 'search',
              'id'    => 'search',
              'value' => 'Search for producers, genres, and more',
              'class' => 'hiddenemail'
              );

              echo form_input($data);
              echo form_close()
          ?>
        </div>
     </div>
  </div>
  <div class="result">
    <table>
<?php foreach($results as $row){ ?>
    <tr>
        <td><?php echo $row->Company?></td>
    </tr>
<?php } ?>
</table>
</div>
