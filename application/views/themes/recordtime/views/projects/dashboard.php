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
	
	.new-project-title .btn {
		padding: 15px 30px;
		border: 2px solid #fff;
		top: 3em;
		width: 12%;
	}
	
	.middle-part .ProjectList {
		width: 95%;
	}
	
	.middle-part .ProjectItem {
		height: 16em;
		width: 94vw;
		padding: 35px;
		background: #FFFFFF;
	}
	
	.middle-part .ProjectList .started {
		margin-top: 2em;
	}
	
	.middle-part .ProjectItem__Details {
		position: static;
	}
	
	.middle-part .first-part img {
		height: 11em;
		margin: 0;
	}
	
	.middle-part .second-part h3 {
		font-size: 45px;
		margin-top: 10px;
	}
	
	.middle-part .third-part h4 {
		font-size: 24px;
	}
	
	.four-part button {
		width: 145px;
		height: 4em;
		border: 2px solid #707070;
	}
	
	@media (max-width:1224px) {
		.new-project-title .btn {
			width: auto;
		}
	}
	
	@media (min-width:768px) and (max-width:991px) {
		.middle-part .first-part img {
			height: auto;
		}
	}
	
	@media (max-width:767px) {
		.middle-part .ProjectItem {
			height: auto;
		}
	}
</style>
<div class="middle-container">
	<div class="banner-image">
		<div class="banner-content">
			<img src="<?= site_url() . template_assets_path(); ?>/images/Big Logo-White.png">
		</div>
	</div>
	<div class="page-title box-shadow ProjectsDashboard__Title new-project-title">
		<div class="container-fluid">
			<h1>Projects</h1>
			<a class="btn" href="<?= site_url(); ?>project/create">
                New Project
                <span class="fa fa-arrow-right fa-w-14" style="margin-top: 4px; margin-left: 10px;"></span>
            </a>
		
		</div>
	</div>
</div>
<?php //echo "<pre>"; print_R($projects); ?>

<div class="ProjectsDashboard middle-part">
	<div class="ProjectList">
		<?php if (!empty($projects)){ ?>
		<?php foreach ($projects as $project): ?>

		<?php if (isset($project['start_date'])): ?>
		<p class="started">Started
			<?php echo $project['start_date']; ?>
			<p>
				<div class="ProjectItem box-shadow" style="max-width: 100%;">

					<?php else: ?>
					<div class="ProjectItem" style="max-width: 100%;">
						<!--              <div class="ProjectItem--overlay">-->
						<!--                <div class="details">-->
						<!--                  <h3>-->
						<?php //echo $project['name']; ?>
						<!--</h3>-->
						<!--                    <a class="start" href="-->
						<? //= site_url(); ?>
						<!--index.php/project/start/-->
						<?php //echo $project['project_id']; ?>
						<!--">Start</a>-->
						<!--                </div>-->
						<!--              </div>-->
						<?php endif; ?>


						<div class="ProjectItem__Details row">
							<div class="col-sm-3 first-part">
								<?php if (!empty($project['profile_pic']) && isset($project['profile_pic'])) { ?>
								<img src="<?= site_url() . template_assets_path(); ?>/users/<?php echo $project['profile_pic']; ?>">
								<?php } else { ?>
								<img src="<?= site_url(); ?>assets/images/user-placeholder.jpg"/>
								<?php } ?>
							</div>
							<div class="col-sm-3 second-part">
								<h3>
									<?php echo $project['name']; ?>
								</h3>

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
									echo $project[ 'project_cost' ];
									?>
								</p>
							</div>
							<div class="col-sm-3 third-part">
								<h4>Basic Overview</h4>
								<p class="name">-
									<?php echo $project['songs'];
                                echo " songs"; ?>
								</p>
								<p class="name">-
									<?php echo $project['name']; ?>
								</p>
							</div>
							<div class="col-sm-3 pdf-change four-part">
								<!--<button>PDF</button>-->
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
								<h3>
									<?php echo "New Project"; ?>
								</h3>
								<a class="start" href="<?php echo site_url(); ?>project/create">Start</a>
								<h5>
									<?php echo "Payment Pending"; ?>
								</h5>
							</div>
						</div>
					</div>
				</div>
	</div>
</div>