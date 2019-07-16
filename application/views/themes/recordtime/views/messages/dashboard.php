<style>
	.container {
		border: 2px solid #dedede;
		background-color: #fff;
		border-radius: 5px;
		padding: 10px;
		margin: 10px 0;
	}
	
	.darker {
		border-color: #ccc;
		background-color: #ddd;
	}
	
	.container::after {
		content: "";
		clear: both;
		display: table;
	}
	
	.container img {
		float: left;
		max-width: 60px;
		width: 100%;
		margin-right: 20px;
		border-radius: 50%;
		height: 50px;
	}
	
	.container img.right {
		float: right;
		margin-left: 20px;
		margin-right: 0;
	}
	
	.time-right {
		float: right;
		color: #000;
		font-weight: normal;
	}
	
	.time-left {
		float: left;
		color: #000;
		font-weight: normal;
	}
	
	.how-it-work-banner.why-artist-banner {
		height: 500px;
	}
	
	.pull-right.darker {
		padding: 15px;
		background: transparent;
		color: #fff;
		font-weight: 700;
		border-radius: 20px;
		width: 50%;
		text-align: right;
	}
	
	.pull-right.darker p {
		margin: 0 0 10px;
	}
	
	.pull-left.lighter {
		width: 50%;
		background: transparent;
		color: #fff;
		font-weight: 700;
		border-radius: 20px;
		padding: 10px;
	}
	
	.work-with-text .container {
		border: 0px;
	}
	
	.white-bg {
		background: lightgray;
	}
	
	#msg_mod .work-with-text {
		background: #fff;
	}
	
	#msg_mod .input-group {
		width: 100%;
	}
	
	#msg_mod .input-group .form-control {
		width: 60%;
		margin-right: 20px;
		border-radius: 10px;
		background-color: #f7f7f7;
		height: 34px;
	}
	
	#msg_mod .input-group-btn .btn {
		border-radius: 10px;
		background-color: #6495ed;
		border-color: #6495ed;
	}
	
	#msg_mod .image-upload>input {
		display: none;
	}
	
	#msg_mod .image-upload label {
		cursor: pointer;
	}
	
	#msg_mod .image-upload {
		display: inline-block;
		float: left;
		margin-right: 20px;
	}
	
	#msg_mod .image-upload .svg-inline--fa {
		font-size: 30px;
	}
	
	#msg_block {
		border: 2px solid #d8d6d8;
		padding: 10px 30px 6px;
	}
	
	#msg_mod .how-it-work-process-section {
		margin: 50px 0;
		padding-top: 0;
	}
	
	#msg_mod .header-section-how-artist h2 {
		margin: 20px;
	}
	
	label.filebutton {
		overflow: hidden;
		position: relative;
	}
	
	label span input {
		z-index: 999;
		line-height: 0;
		font-size: 50px;
		position: absolute;
		top: -2px;
		left: -700px;
		opacity: 0;
		filter: alpha(opacity=0);
		-ms-filter: "alpha(opacity=0)";
		cursor: pointer;
		_cursor: hand;
		margin: 0;
		padding: 0;
	}
	
	.attach {
		height: auto;
		border: 1px solid black;
		padding: 15px;
		width: auto;
		text-align: center;
		margin-bottom: 3px;
		border-radius: 8px 8px 1px 8px;
	}
	
	.msgtext-right {
		background: cornflowerblue;
		padding: 15px;
		border-radius: 8px 1px 8px 8px;
	}
	
	.msgtext-left {
		background: grey;
		padding: 15px;
		border-radius: 8px 1px 8px 8px;
	}
	
	@media (max-width:767px) {
		#msg_mod .process-why-artist {
			width: 100%;
		}
		#msg_mod .attach {
			width: auto !important;
		}
	}
	
	@media (max-width:530px) {
		#msg_mod .input-group .form-control {
			width: auto;
			margin-right: 10px;
		}
		#msg_block {
			padding: 10px 5px 6px;
		}
		#msg_mod .image-upload {
			margin-right: 15px;
		}
	}
</style>

<?php $user_id = $this->session->userdata['userid'];
 //echo "<pre>"; print_r($recipients_details); ?>
<section id="msg_mod">
	<div class="header-section-how-artist">
		<div class="how-it-work-banner why-artist-banner">
		</div>
		<h2>Messages </h2>
		<?php
			echo $this->session->flashdata('email_sent');
		?>
	</div>

	<div class="">
		<div class="row white-bg">
			<div class="clearfix"></div>
			<div class="col-sm-12 how-it-work-process-section">
				<div class="row process-section">
					<div class="col-sm-2 white-space-div"></div>
					<div class="col-sm-12 process-how-it-work process-why-artist">
						<div class="col-sm-3 work-with-text1">
							<h2>All Conversations</h2>
							<?php //foreach( $recipients_details as $index => $msg ) {
							if(!empty($recipients_details)){
								foreach($recipients_details as $recipients_detail){
									//echo "<pre>"; print_r($details); exit;
							
							?>
							
								<a href="message?recipient_id=<?php echo $recipients_detail[0]['id']; ?>">
									<div class="container">
										<img src="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/avatar.png" alt="Avatar" style="width:100%;">
										<a href="message?recipient_id=<?php echo $recipients_detail[0]['id']; ?>"><h4><?php echo $recipients_detail[0]['firstname'].' '.$recipients_detail[0]['lastname']; ?></h4></a>
										<p><?php //echo $msg[0]['id']; ?></p>
										<!--										<span class="time-right">11:00</span>-->
									</div>
								</a>
							
							<?php } 
							}else{ ?>
								<div class="container">No conversation found</div>
							
							<?php } ?>
							<br>

							---------------------------------------------------------------
							<h2>All Recipients</h2>

							<?php 
							if(!empty($all_recipients)){
								foreach($all_recipients as $all_recipient){
							?>
							
								<a href="message?recipient_id=<?php echo $all_recipient['id']; ?>">
									<div class="container">
										<img src="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/avatar.png" alt="Avatar" style="width:100%;">
										<a href="message?recipient_id=<?php echo $all_recipient['id']; ?>"><h4><?php echo $all_recipient['firstname'].' '.$all_recipient['lastname']; ?></h4></a>
									</div>
								</a>
							
							<?php } }else{ ?>
								<div class="container">No User found</div>
							
							<?php } ?>
							
						</div>
						<div class="col-sm-8">
							<div class="work-with-text">
								<?php //echo "<pre>"; print_r($messages);
									foreach($messages as $message){
										$getTimeStamp = $message['sent'];
										$date = new \DateTime($getTimeStamp);
										$hourString = $date->format('H:i');
										$msg = $message['message'];
										//echo "<pre>"; print_r($message);
										if(substr($message['thread_id'], 0, 2) == $user_id){
								?>
										<div class="container">
											<div class="pull-right darker">
												<!-- <img src="https://www.w3schools.com/w3images/bandmember.jpg" alt="Avatar" class="right" style="width:100%;"> -->
												<?php if(!empty($message['attachments'])){
												$filename = $message['attachments'];
												$ext = pathinfo($filename, PATHINFO_EXTENSION);
												if($ext == 'jpg' || $ext == 'png' || $ext == 'gif'){
												?>
												<div class="attach" style="width: 300px; height: auto">
													<img src="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/<?php echo $message['attachments']; ?>" style="max-width: none; border-radius: 0; height: auto; float: none;">
												</div>
												<?php }elseif($ext == 'pdf' || $ext == 'txt' || $ext == 'doc' || $ext == 'csv'){ ?>
												<div class="attach" style="width: auto; height: auto">
													<a href="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/<?php echo $message['attachments']; ?>">PDF</a>
												</div>
												<?php } } ?>
												<?php if(!empty($msg)){ ?>
												<p class="msgtext-right">
													<?php echo $message['message']; ?>
												</p>
												<?php } ?>
												<span class="time-right">
													<?php echo $hourString; ?>
												</span>
											</div>
										</div>
								<?php } else { ?>
										<div class="container">
											<img src="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/avatar.png" alt="Avatar" style="width:100%;">
											<div class="pull-left lighter">
												<?php if(!empty($message['attachments'])){
												$filename = $message['attachments'];
												$ext = pathinfo($filename, PATHINFO_EXTENSION);
												if($ext == 'jpg' || $ext == 'png' || $ext == 'gif'){
												?>
												<div class="attach" style="width: 300px; height: auto">
													<img src="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/<?php echo $message['attachments']; ?>" style="max-width: none; border-radius: 0; height: auto; float: none;">
												</div>
												<?php }elseif($ext == 'pdf' || $ext == 'txt' || $ext == 'doc' || $ext == 'csv'){ ?>
												<div class="attach" style="width: auto; height: auto">
													<a href="http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/<?php echo $message['attachments']; ?>">PDF</a>
												</div>
												<?php } } ?>
												<?php ?>
												<?php if(!empty($msg)){ ?>
												<p class="msgtext-right">
													<?php echo $message['message']; ?>
												</p>
												<?php } ?>
												<span class="time-left">
													<?php echo $hourString; ?>
												</span>
											</div>
										</div>
								<?php } } ?>
							</div>
							
							<?php if($user_id == $_GET['recipient_id']){ ?>
								<div class="container">No Recipient selected</div>
							<?php }else{ ?>
								<div class="work-with-text">
									<div class="container">
										<div class="col-md-12" id="msg_block">
											<div class="input-group">
												<form method="post" id="chatform" action="" enctype="multipart/form-data">
													<input type="hidden" id="to_id" name="to_id" value="<?php echo $recipient_id; ?>">
													<input type="hidden" id="thread_id" name="thread_id" value="<?php echo $user_id.$recipient_id; ?>">
													<input type="hidden" id="from_id" name="from_id" value="<?php echo $user_id; ?>">
													<!--											<input id="attachments" name="file" type="file" />-->
													<div class="image-upload filebutton">
														<label class="">
															<i class="fa fa-camera" aria-hidden="true"></i>
															<span style=""><input id="attachments" name="attachments" type="file" /></span>
														</label>
														
													</div>
													<div class="image-upload filebutton">
														<label class="">
															<i class="fa fa-file-image" aria-hidden="true"></i>
															<span style=""><input id="attachments1" name="attachments" type="file" /></span>
														</label>
														
													</div>
													
													<input id="message" name="message" type="text" class="form-control input-sm" placeholder="Type your message here..."/>
													<span class="input-group-btn"><input type="submit" value="SEND" class="btn btn-warning btn-sm" id="submit"></span>
												</form>
											</div>
										</div>
									</div>
								</div>
							<?php } ?>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
	$( document ).ready( function () {

		$( "#attachments" ).change( function () {
			$( "#submit" ).trigger( 'click' );
		} );

		$( "#attachments1" ).change( function () {
			$( "#submit" ).trigger( 'click' );
		} );


		$( "#chatform" ).submit( function ( e ) {
			e.preventDefault();
			var to_id = $( "#to_id" ).val();;
			var thread_id = $( "#thread_id" ).val();
			var from_id = $( "#from_id" ).val();
			var message = $( "#message" ).val();
			var attachments = $( "#attachments" ).val();
			//alert(attachments); exit;
			var formData = new FormData( $( "#chatform" )[ 0 ] );
			//var formData = new FormData(this);

			$.ajax( {
				type: "POST",
				url: '<?php echo base_url() ?>message/add_message',
				data: formData,
				processData: false,
				contentType: false,
				cache: false,
				beforeSend: function () {
					$( '#submit' ).html( 'Sending......' );
				},
				//data: {to_id:to_id,thread_id:thread_id,from_id:from_id,message:message,attachments:attachments},
				success: function ( data ) {
					location.reload();
				},
				error: function () {
					alert( 'fail' );
				}
			} );
		} );
	} );
</script>