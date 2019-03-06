<div class="ProjectsDashboard">
    <div class="ProjectList">
      <h2>Projects--Overview</h2>

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
