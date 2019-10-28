<?php $user_id = $this->session->userdata['userid']; ?>
<div class="middle-container">
  <div class="banner-image">
    <div class="banner-content">
      <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
    </div>
  </div>
</div>


<div class="modal fade" tabindex="-1" role="dialog" id="completeModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3>Payment Received</h3>
      </div>
      <div class="modal-body">
          Your credit card transaction was successful. A credit of <strong><span id="creditAmount"></span></strong> has been added to your account.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeModal">Close</button>
      </div>
    </div>
  </div>
</div>

<style>
  .ProjectItem .pdf-change .acpt {
      display: block;
      background-color: white;
      width: 160px;
      margin-top: 1em;
      height: 4em;
  }
</style> 


  <div class="ProjectsDashboard">
    <div class="ProjectList">
      <?php if (!empty($projects)){ ?>
        <?php foreach ($projects as $project){ ?>
         
            <div class="ProjectItem" style="max-width: 100%;">
                
         
                
              <div class="ProjectItem__Details row">
                <div class="col-sm-3">
                  <?php if (!empty($project['profile_pic']) && isset($project['profile_pic'])) { ?>
                      <img class="responsive-img" src="<?= site_url() . template_assets_path(); ?>/users/<?php echo $project['profile_pic']; ?>">
                  <?php } else { ?>
                      <img class="responsive-img" src="<?= site_url(); ?>assets/images/user-placeholder.jpg"/>
                  <?php } ?>
                </div>
                <div id="mod" style="display: none;"><?php echo $project['project_id']; ?></div>
                <div class="col-sm-3">
                  <?php if($userdatas['type'] == 1){ ?>
                    <a href="<?php echo site_url(); ?>project/artist_project_view?project_id=<?php echo $project['project_id']; ?>"><h3><?php echo $project['name']; ?></h3></a>
                  <?php }else{ ?>
                    <a href="<?php echo site_url(); ?>project/producer_project_view?project_id=<?php echo $project['project_id']; ?>"><h3><?php echo $project['name']; ?></h3></a>
                  <?php } ?>     

                  
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
                  <h4>Basic Overview<h4>
                  <p class="name">- <?php echo $project['songs']; echo " songs"; ?></p>
                  <p class="name">- <?php echo $project['name']; ?></p>
                </div>
                <div class="col-sm-3 pdf-change">
                  <form method="post" id="accept">
                      <input type="hidden" name="project_id" value="<?php echo $project['project_id']; ?>">
                      <input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
                      <input type="submit" class="acpt" name="acceptproject" value="Accept">
                  </form>
               
                  
                 
                </div> 
              </div>
            </div>
      <?php }} ?>

      

    </div>
  <div>
  
  <script>
    var self = this;

  // Create a Stripe client.
  var stripe = Stripe('pk_test_yt3JpiGWmUvIWuAjlDL4c1Tb00lQvTOM5c');

  // Create an instance of Elements.
  var elements = stripe.elements();

  // Custom styling can be passed to options when creating an Element.
  // (Note that this demo uses a wider set of styles than the guide below.)
  var style = {
    base: {
      color: '#32325d',
      fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
      fontSmoothing: 'antialiased',
      fontSize: '16px',
      '::placeholder': {
        color: '#aab7c4'
      }
    },
    invalid: {
      color: '#fa755a',
      iconColor: '#fa755a'
    }
  };

  // Create an instance of the card Element.
  var card = elements.create('card', {style: style});

  // Add an instance of the card Element into the `card-element` <div>.
  card.mount('#card-element');

  // Handle real-time validation errors from the card Element.
  card.addEventListener('change', function(event) {
    var displayError = document.getElementById('card-errors');
    if (event.error) {
      displayError.textContent = event.error.message;
    } else {
      displayError.textContent = '';
    }
  });

  // Handle confirm click.
  var form = document.getElementById('completePayment');
  form.addEventListener('click', function(event) {
    event.preventDefault();
    stripeTokenHandler();
  });


  // Handle form submission.
  var form = document.getElementById('payment-form');
  form.addEventListener('submit', function(event) {
    event.preventDefault();

    stripe.createToken(card).then(function(result) {
      if (result.error) {
        // Inform the user if there was an error.
        var errorElement = document.getElementById('card-errors');
        errorElement.textContent = result.error.message;
      } else {
        // Send the token to your server.
        console.log(result);
        
        self.token = result.token.id;
        self.amount = $('#paymentAmount').val();
        
        var lastFour = result.token.card.last4;
        
        console.log(result);
        
        $('#payConfirmAmount').text('$'+self.amount);
        $('#payConfirmLast4').text(lastFour);
        
        
        $('#confirmModal').modal('show');
        $('#paymentModal').modal('hide');
      }
    });
  });

  // Submit the form with the token ID.
  function stripeTokenHandler() {

    $.ajax({
      type: "POST",
      url: "",
      data: {token: self.token, amount: self.amount},
      success: function(){
        console.log('success');
        $('#creditAmount').text('$'+amount);
        $('#completeModal').modal('show');
        $('#confirmModal').modal('hide');
        $('.InputContainer input, input').val('');
        var elements = stripe.elements();
      },
      error: function(e){
        console.log(e);
        var errorElement = document.getElementById('card-errors');
        $('#confirmModal').modal('hide');
        $('#paymentModal').modal('show');
        errorElement.textContent = "There was an error processing your credit card. Please check your information and try again or contact your credit card company.";
      }
    });
    // Insert the token ID into the form so it gets submitted to the server
    /*
    var form = document.getElementById('payment-form');
    var hiddenInput = document.createElement('input');
    hiddenInput.setAttribute('type', 'hidden');
    hiddenInput.setAttribute('name', 'stripeToken');
    hiddenInput.setAttribute('value', token.id);
    form.appendChild(hiddenInput);

    // Submit the form
    form.submit();
    */
  }
    </script>


<script type="text/javascript">
    $(document).ready(function(){
        $("#marked").click(function(){
            var proval = $('#mod').html();
            $("#project_id").val(proval);
        });
    })
</script>


<style>
  /**
* The CSS shown here will not be introduced in the Quickstart guide, but
* shows how you can use CSS to style your Element's container.
*/
input,
.StripeElement {
  height: 40px;
  padding: 10px 12px;

  color: #32325d;
  background-color: white;
  border: 1px solid transparent;
  border-radius: 4px;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

input:focus,
.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}

#card-errors{
  margin-top: 5px;
  color: red;
}
</style>