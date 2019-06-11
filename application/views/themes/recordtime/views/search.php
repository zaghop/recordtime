<div class="middle-container Search container">
  <div class="banner-image">
     <div class="banner-content">
        <img src="<?= site_url().template_assets_path(); ?>/images/Big Logo-White.png">
     </div>
  </div>
  <div
    class="page-title box-shadow ProjectsDashboard__Title">
     <div class="container-fluid">
        <h1>Search</h1>
     </div>
  </div>
  <div class="form-container">

    <form id="searchForm" action="#">
      <input type="text" name="search" id="search"
             placeholder="Search for producers, genres, and more" />
       <button type="submit">→</button>
    </form>


    <!-- <?php if (count($results) > 0): ?>
       <div class="result count">
        <?php echo count($results) ?>
         Results
       </div>
       <div>
         Sort by:
         <button id="price-toggle">Price</button>
         <button id="location-toggle">Local</button>
       </div>

    <?php endif; ?> -->


  </div>
  <div class="Results container">
    <!-- <?php
      if (count($results) > 0):
        foreach($results as $row):
    ?>
        <div class="ResultRow row">
          <div class="Details col-md-4">
            <div>
              <img
                src="<?= site_url(); ?>assets/images/user-placeholder.jpg"
              />
              <h4><?=$row->firstname?> <?=$row->lastname?></h4>
            </div>
            <div class="MinorDetails">
              <p>Genres</p>
              <p><?=$row->city?><?=$row->state?></p>
              <p>Price: <?=$row->price?></p>
            </div>
          </div>
          <div class="Philosophy col-md-4">
            <h5>Production Philosophy</h5>
            <?=$row->philosophy?>
          </div>
          <div class="Skills col-md-4">
            <h5>Skills and Specialties</h5>
            <?=$row->skills?>
          </div>
        </div>
    <?php endforeach; endif; ?> -->
</div>

<script>

$(document).ready(function(){
  $('#price-toggle').click(function() {
    console.log("LOLO");
  })

  $('#searchForm').submit(function(e) {

    e.preventDefault();
    e.stopPropagation();
    // TODO: Get this more elegantly.
    var search = document.forms[0][0].value;

    var URL = 'search/producers?search=' + encodeURIComponent(search);

    $.get(URL, function(data) {
      console.dir(data);
      // console.log("RETURNING");
    });
  });




     // $(this).ajaxSubmit({
     //     type : "POST",
     //     //set the data type
     //     dataType:'json',
     //     url: 'index.php/search_producers', // target element(s) to be updated with server response
     //     cache : false,
     //     //check this in Firefox browser
     //     success : function(response){
     //       console.log(response);
     //       alert(response)},
     //       error: onFailRegistered
     //   });
     //   return false;
     // });



  $('#price-toggle').click(function() {

  });

});
</script>
