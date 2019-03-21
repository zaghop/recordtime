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

<?php echo anchor('index.php/project/create', 'New Project', array('title' => 'project', 'class' => 'btn btn-danger', 'type' => 'button')); ?>

<div class="ProjectsDashboard container">
    <div class="ProjectList">

      <?php foreach ($projects as $project): ?>



          <?php if (isset($project['start_date'])): ?>
            <p class="started">Started
              <?php echo $project['start_date']; ?>
            <p>
            <div class="ProjectItem">

          <?php else: ?>
            <div class="ProjectItem">
              <div class="ProjectItem--overlay">
                <div class="details">
                  <h3><?php echo $project['name']; ?></h3>
                    <a
                      class="start"
                      href="<?= site_url(); ?>index.php/project/start/<?php echo $project['project_id']; ?>"
                    >
                    Start
                  </a>
                </div>
              </div>
          <?php endif; ?>


            <div class="ProjectItem__Details row">
              <div class="col-sm-3">
                <img
                  src="<?= site_url(); ?>assets/images/user-placeholder.jpg"
                />
              </div>
              <div class="col-sm-3">
                <h3><?php echo $project['name']; ?></h3>

                <p class="end_date">
                  <?php echo "Ends " ?>
                  <?php echo date($project['end_date']);?>
                </p>
                <p class="producer">
                  <?php echo $project['firstname'];
                        echo " ";
                        echo $project['lastname'];
                  ?>
                </p>
                <p class="cost">
                  <?php
                    echo $project['project_cost'];
                  ?>
                </p>
              </div>
              <div class="col-sm-3">
                Basic Overview
                <p class="name"><?php echo $project['songs']; echo " songs"; ?></p>
                <p class="name"><?php echo $project['name']; ?></p>
              </div>
              <div class="col-sm--3">
                PDF
                Change
              </div>
            </div>
          </div>


        <?php endforeach; ?>

  </div>
<div>
