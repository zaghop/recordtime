<?php $user_id = $this->session->userdata['userid']; ?>
<div id="rt-profile">
	<div class="middle-container">
		<div class="banner-image">
			<div class="banner-content">
				<img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
			</div>
		</div>
		<div class="page-title box-shadow">
			<div class="container-fluid">
				<h1>Edit Profile</h1>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="container">
					<div class="col-sm-12 producer-profile-img-container">
						<div class="producer-profile-img">
				            <?php if(!empty($user_details[0]['profile_pic']) && isset($user_details[0]['profile_pic'])){ ?>
				            <img src="<?= site_url().template_assets_path(); ?>/users/<?php echo $user_details[0]['profile_pic']; ?>">
				            <?php } else{ ?>
				            <img src="<?= site_url().template_assets_path(); ?>/images/profucer-profile-image.png">
				            <?php } ?>
				        </div>
						
					</div>
					<?php //echo "<pre>"; print_r($user_details); ?>
					<form method="post" action="" enctype="multipart/form-data">
						<input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
						<div class="profile-change">
							<label for="profile" class="profile-title">Profile Image</label>
							<input type="file" id="profile_pic" name="profile_pic">
						</div>
						<div class="col-sm-6">
							<label for="fname">First Name</label>
							<input type="text" id="fname" name="fname" value="<?php echo $user_details[0]['firstname']; ?>" placeholder="Your First Name..">

							<label for="lname">Last Name</label>
							<input type="text" id="lname" name="lname" value="<?php echo $user_details[0]['lastname']; ?>" placeholder="Your Last Name..">

							
							<label for="base_rate">Song1</label>
							<input type="text" id="song1" name="song1" value="<?php echo $user_details[0]['song1']; ?>" placeholder="Add SoundCloud Link..">
							
							<label for="base_rate">Song2</label>
							<input type="text" id="song2" name="song2" value="<?php echo $user_details[0]['song2']; ?>" placeholder="Add SoundCloud Link..">
							
							<label for="base_rate">Song3</label>
							<input type="text" id="song3" name="song3" value="<?php echo $user_details[0]['song3']; ?>" placeholder="Add SoundCloud Link..">


							<label for="base_rate">Song4</label>
							<input type="text" id="song4" name="song4" value="<?php echo $user_details[0]['song4']; ?>" placeholder="Add SoundCloud Link..">
							
							<label for="base_rate">Song5</label>
							<input type="text" id="song5" name="song5" value="<?php echo $user_details[0]['song5']; ?>" placeholder="Add SoundCloud Link..">
							
							

							<label for="philosphy">Production Philosphy</label>
							<textarea id="philosphy" name="philosphy" style="height:200px"><?php echo $user_details[0]['philosphy']; ?></textarea>
							
							
							
						</div>
						<div class="col-sm-6">

							<label for="country">State</label>
							<input type="text" id="state" value="<?php echo $user_details[0]['state']; ?>" name="state" placeholder="Your Country..">

							<label for="city">City</label>
							<input type="text" id="city" value="<?php echo $user_details[0]['city']; ?>" name="city" placeholder="Your City..">

							<label for="genre">Genres</label>
							<input type="text" id="genre" name="genre" value="<?php echo $user_details[0]['genre']; ?>" placeholder="Your Genres..">

							<label for="base_rate">Creative</label>
							<input type="text" id="creative" name="creative" value="<?php echo $user_details[0]['creative']; ?>" placeholder="Add Rate between 1 to 5...">

							<label for="base_rate">Candor</label>
							<input type="text" id="candor" name="candor" value="<?php echo $user_details[0]['candor']; ?>" placeholder="Add Rate between 1 to 5...">
							
							<label for="base_rate">Workload</label>
							<input type="text" id="workload" name="workload" value="<?php echo $user_details[0]['workload']; ?>" placeholder="YAdd Rate between 1 to 5...">
							
							<label for="base_rate">Flexibility</label>
							<input type="text" id="flexibility" name="flexibility" value="<?php echo $user_details[0]['flexibility']; ?>" placeholder="Add Rate between 1 to 5..."> 
							
							<label for="credits">Credits</label>
							<textarea id="credits" name="credits" style="height:200px"><?php echo $user_details[0]['credits']; ?></textarea>
							
						</div>
						
						<div class="col-sm-12">
							<label for="skills">Skills and Specialties</label>
							<textarea id="skills" name="skills" style="height:200px"><?php echo $user_details[0]['skills']; ?></textarea>
						</div>
						
						<div class="col-sm-12 text-center">
							<input type="submit" name="submit" value="Submit">
						</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>