<div class="ProjectsDashboard">
    <h2>Projects</h2>
    <div class="ProjectList">

      <?php foreach ($projects as $project): ?>
        <div class="ProjectItem">
          <span>Started <?php echo $project['start_date']; ?><span>
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
