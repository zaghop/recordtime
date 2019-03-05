<div class="ProjectsDashboard">
  <div class="Project">
    here is some info about a project

    <<?php foreach ($projects as $project): ?>

        <h3><?php echo $project["name"]; ?></h3>
        <div class="main">
                <?php echo $project['name']; ?>
        </div>


      <?php endforeach; ?>
  </div>
<div>
