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
							<img src="<?= site_url().template_assets_path(); ?>/users/<?php echo $user_details[0]['profile_pic']; ?>">
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

							<label for="country">State</label>
							<input type="text" id="state" value="<?php echo $user_details[0]['state']; ?>" name="state" placeholder="Your Country..">

							<label for="city">City</label>
							<input type="text" id="city" value="<?php echo $user_details[0]['city']; ?>" name="city" placeholder="Your City..">

							<label for="genre">Genres</label>
							<input type="text" id="genre" name="genre" value="<?php echo $user_details[0]['genre']; ?>" placeholder="Your Genres..">

							<!-- <label for="base_rate">Base Rate</label>
							<input type="text" id="base_rate" name="base_rate" value="<?php echo $user_details[0]['base_rate']; ?>" placeholder="Your Base Rate Text..">
							
							<label for="base_rate">Base Rates Text</label>
							<input type="text" id="base_rate_text" name="base_rate_text" value="<?php echo $user_details[0]['base_rate_text']; ?>" placeholder="Your Base Rate..">
							
							<label for="base_rate">Base Production Rates</label>
							<input type="text" id="base_production_rate" name="base_production_rate" value="<?php echo $user_details[0]['base_production_rate']; ?>" placeholder="Your Base Production Rate.."> -->
							
							
							
						</div>
						<div class="col-sm-6">
							
							<!-- <label for="base_rate">Mix Engineer</label>
							<input type="text" id="mix_engineer_rate" name="mix_engineer_rate" value="<?php echo $user_details[0]['mix_engineer_rate']; ?>" placeholder="Your Mix Engineer Rate..">
							
							<label for="base_rate">Mastering Engineer</label>
							<input type="text" id="mastering_engineer_rate" name="mastering_engineer_rate" value="<?php echo $user_details[0]['mastering_engineer_rate']; ?>" placeholder="Your Mastering Engineer Rate..">
							
							<label for="base_rate">Programmer</label>
							<input type="text" id="programmer_rate" name="programmer_rate" value="<?php echo $user_details[0]['programmer_rate']; ?>" placeholder="Your Programmer Rate.."> -->
						
						
							<label for="philosphy">Production Philosphy</label>
							<textarea id="philosphy" name="philosphy" style="height:200px"><?php echo $user_details[0]['philosphy']; ?></textarea>
							
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