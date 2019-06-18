<style>
	#project-overview .process-icon-section .process-stetus {
		padding: 10px 10px 85px 11px;
	}
	
	#project-overview .process-stetus .number-arrow-section.active {
		padding: 20px 28px;
	}
	
	#project-overview .process-stetus .number-arrow-section {
		padding: 20px 28px;
	}
	
	#project-overview .process-stetus ul {
		list-style: none;
		margin: 0;
		padding: 0;
		display: flex;
		justify-content: center;
	}	
	#project-overview .arrow-section .arrow {
		border-radius: 50%;
		background: #d52100;
		display: table-cell;
		border: 2px solid #fff;
		height: 70px;
		width: 70px;
		position: relative;
	}
	
	#project-overview .arrow a {
		color: #ffff;
		padding: 10px 15px;
		display: inline-block;
	}
	
	#project-overview .project-details-container {
		max-width: 400px;
	}
	
	#project-overview .new-project-section-title {
		padding: 20px;
	}
	
	#project-overview .project-section-input-box input {
		padding: 10px 10px;
	}
	
	#project-overview .process-stetus ul li::after {
		top: 32px;
	}	
	#project-overview .input_fields_inner {
		margin-bottom: 5px;
		border: 1px solid #707070;
		padding: 15px;
		display: inline-block;
		width: 100%;
	}	
	#project-overview .input_fields_inner h3 {
		float: left;
		color: #707070;
	}
	
	#project-overview .input_fields_inner input {
		float: right;
		width: 22%;
	}
	#project-overview .player-inner {
		padding: 10px;
		margin-bottom: 10px;
		border: 1px solid #707070;
	}
	#project-overview .player-inner h3 {
		margin-bottom: 10px;
		color: #707070;
	}
	#project-overview .page-title .title {
		padding: 23px 0px; 
		font-size: 20px; 
		color: #000; 
		font-weight: 500;
	}

	#project-overview .add_field_button {
		width: 39px; 
		border-radius: 18px; 
		border-radius: 18px; 
		background: #189bd4; 
		border: 2px solid #fff;
	}
</style>
<div class="middle-container">
	<div class="banner-image">
		<div class="banner-content">
			<img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
		</div>
	</div>
	<div class="page-title box-shadow">
		<div class="container-fluid">
			<div id="title-1"><h1>Production Rates</h1></div>
		</div>
	</div>
	<br>
	<div class="page-title box-shadow">
		<div class="container-fluid">
			<div class="col-md-5 title" style="padding: 23px 0px;">What is your base production rate per song?</div>
			<div class="col-md-3 box" style="padding: 23px 0px;"><input type="text" name="rates" disabled="disabled"></div>
			<div class="col-md-4 lastext" style="padding: 23px 0px; font-size: 15px;">Recordtime deduct 10% service fees
			so choose your rates and calculate accordingly.</div>
		</div>
	</div>
</div>
<div class="FormErrors">
	<?php echo validation_errors(); ?>
</div>
<!-- <form action="" method="post" enctype="multipart/form-data"> -->
<div id="project-overview">
	<div class="container new-project-container-padding" id="step-2">
		<div class="row project-inner-section">
			<div class="col-md-4">
				<div class="project-details-container">
					<div class="new-project-section-title box-shadow white-bg same-height">
						<h3>Besides production, what else 
						are you willing to contribute at 
					your base production rates?  </h3>
					</div>
					<div class="input_fields_wrap new-project-section-title same-height" style="overflow-y: auto; height: 222px;">
						<div class="box-shadow white-bg input_fields_inner">
							<input type="text" name="mytext[]" style="width: 100%; border: none;">
						</div>
						
					</div>
					<div class="text-center">
						<img class="add_field_button add_field_button_inst" src="<?= site_url() . template_assets_path(); ?>/images/plus.png">
						
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="project-details-container">
					<div class="new-project-section-title box-shadow white-bg same-height">
						<h3>List any services you require but can not provide personally. </h3>
						<p>Esitmate the base rates of any additional services you'll require to make a song sound great. </p>
					</div>
					<div class="input_fields_wrap_player new-project-section-title same-height" style="overflow-y: auto; height: 230px;">
						<div class="box-shadow white-bg input_fields_inner">
							<h3><input type="text" name="mytext1[]" style="width: 100%; border: none;"></h3><input type="text" name="mytext2[]">
						</div>
						
					</div>
					<div class="text-center">
						<img class="add_field_button add_field_button_rates" src="<?= site_url() . template_assets_path(); ?>/images/plus.png">
					</div>
					
				</div>
			</div>
			<div class="col-md-4">
				<div class="project-details-container">
					<div class="arrow right-arrow" style="background: red; text-align: right; width: 55%; float: right; padding: 8px;">
						<b style="color: #fff; font-size: 25px; padding: 18px">Calculate</b>
						<a href="javascript:void(0)" id="step-2-submit"><i class="fa fa-arrow-right " aria-hidden="true"></i></a>
					</div>
				</div>	
			</div>
		</div>
	</div>  
</div>
<script type="text/javascript">
	$( document ).ready( function () {
		var max_fields = 10; //maximum input boxes allowed
		var wrapper = $( ".input_fields_wrap" ); //Fields wrapper
		var add_button = $( ".add_field_button_inst" ); //Add button ID

		var x = 1; //initlal text box count
		var y = 5;
		$( add_button ).click( function ( e ) { //on add input button click
			e.preventDefault();
			if ( x < max_fields ) { //max input box allowed
				x++; //text box increment
				//$(wrapper).append('<div><h3>Song1</h3><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
				$( wrapper ).append( '<div class="box-shadow white-bg input_fields_inner"><input type="text" name="mytext[]" style="width: 100%; border: none;"></div>' );
				y++;
			}
		} );

		$( wrapper ).on( "click", ".remove_field", function ( e ) { //user click on remove text
			e.preventDefault();
			$( this ).parent( 'div' ).remove();
			x--;
		} )
	} );

	
	$( document ).ready( function () {
		var max_fields = 10; //maximum input boxes allowed
		var wrapper = $( ".input_fields_wrap_player" ); //Fields wrapper
		var add_button = $( ".add_field_button_rates" ); //Add button ID

		var x = 1; //initlal text box count
		var y = 2;
		$( add_button ).click( function ( e ) { //on add input button click
			e.preventDefault();
			if ( x < max_fields ) { //max input box allowed
				x++; //text box increment
				//$(wrapper).append('<div><h3>Song1</h3><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
				$( wrapper ).append( '<div class="box-shadow white-bg input_fields_inner"><h3><input type="text" name="mytext1[]" style="width: 100%; border: none;"></h3><input type="text" name="mytext2[]"/></div>' );
				y++;
			}
		} );

		
	} );


</script>