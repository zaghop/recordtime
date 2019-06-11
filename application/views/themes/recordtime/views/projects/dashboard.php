<style>

    .start {
        padding: 15px 55px 15px 54px;
        background: #337ab7;
        color: #fff;
        font-size: 20px;
        border: 2px solid white;
    }

    .ProjectItem .details h3 {
        color: #fff !important;
        margin-bottom: 25px;
        font-size: 32px;
        font-weight: bold;
    }

    .ProjectItem .details h5 {
        color: #fff !important;
        /*margin-bottom: 25px;*/
        /*font-size: 32px;*/
        /*font-weight: bold;*/
        padding: 17px;
    }

    .ProjectItem .details img {
        margin: 13px 0px 0px 0px;
        width: 33px;
        height: auto;
    }
</style>

<div class="middle-container">
    <div class="banner-image">
        <div class="banner-content">
            <img src="<?= site_url() . template_assets_path(); ?>/images/Big Logo-White.png">
        </div>
    </div>
    <div class="page-title box-shadow ProjectsDashboard__Title">
        <div class="container-fluid">
            <h1>Projects</h1>
            <a class="btn" href="<?= site_url(); ?>project/create">
                New Project
                <span class="fas fa-arrow-right fa-w-14"></span>
            </a>
        </div>
    </div>
</div>

<?php //echo "<pre>"; print_R($projects); ?>

<div class="ProjectsDashboard">
    <div class="ProjectList">
        <?php if (!empty($projects)){ ?>
        <?php foreach ($projects as $project): ?>

        <?php if (isset($project['start_date'])): ?>
        <p class="started">Started
            <?php echo $project['start_date']; ?>
        <p>
        <div class="ProjectItem" style="max-width: 100%;">

            <?php else: ?>
            <div class="ProjectItem" style="max-width: 100%;">
                <!--              <div class="ProjectItem--overlay">-->
                <!--                <div class="details">-->
                <!--                  <h3>--><?php //echo $project['name']; ?><!--</h3>-->
                <!--                    <a class="start" href="-->
                <? //= site_url(); ?><!--index.php/project/start/-->
                <?php //echo $project['project_id']; ?><!--">Start</a>-->
                <!--                </div>-->
                <!--              </div>-->
                <?php endif; ?>


                <div class="ProjectItem__Details row">
                    <div class="col-sm-2">
                        <?php if (!empty($project['profile_pic']) && isset($project['profile_pic'])) { ?>
                            <img src="<?= site_url() . template_assets_path(); ?>/users/<?php echo $project['profile_pic']; ?>">
                        <?php } else { ?>
                            <img src="<?= site_url(); ?>assets/images/user-placeholder.jpg"/>
                        <?php } ?>
                    </div>
                    <div class="col-sm-3">
                        <h3><?php echo $project['name']; ?></h3>

                        <p class="end_date">
                            <?php echo "Ends " ?>
                            <?php echo date($project['end_date']); ?>
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
                    <h4>Basic Overview
                        <h4>
                            <p class="name">- <?php echo $project['songs'];
                                echo " songs"; ?></p>
                            <p class="name">- <?php echo $project['name']; ?></p>
                </div>
                <div class="col-sm--3 pdf-change">
                    <!--                <button>PDF</button>-->
                    <button>Change</button>
                </div>
            </div>
        </div>


        <?php endforeach; ?>
        <?php } ?>
            <div class="ProjectItem" style="max-width: 100%; height: 13em;">
              <div class="ProjectItem--overlay">
                <div class="details">
                    <img src="<?= site_url() . template_assets_path(); ?>/images/plus.jpg">
                  <h3><?php echo "New Project"; ?></h3>
                    <a class="start" href="<?php echo site_url(); ?>project/create">Start</a>
                    <h5><?php echo "Payment Pending"; ?></h5>
                </div>
              </div>
            </div>
    </div>
<div>
