<div class="middle-container">
  <div class="banner-image">
     <div class="banner-content">
        <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
     </div>
  </div>
  <div class="page-title box-shadow">
     <div class="container-fluid">
        <h1>Projects</h1>
     </div>
  </div>
</div>

<?php echo anchor('index.php/project/create', 'New Project', array('title' => 'projjj', 'class' => 'btn btn-danger float-right', 'type' => 'button')); ?>

<div class="ProjectsDashboard">
    <div class="ProjectList">

      <?php foreach ($projects as $project): ?>

        <div class="ProjectItem">
          <p class="ProjectItem__Started">Started
            <?php echo $project['start_date']; ?>
          <p>
          <div class="ProjectItem__Details">
            <h3><?php echo $project['name']; ?></h3>
            <p class="name"><?php echo $project['name']; ?></p>
            <p class="cost"><?php echo $project['project_cost']; ?></p>
            <p class="producer"><?php echo "Producer?"; ?></p>
            <p class="name"><?php echo "Number of songs?"; ?></p>
            <p class="name"><?php echo $project['name']; ?></p>
          </div>
        </div>

        <?php endforeach; ?>

  </div>
<div>
