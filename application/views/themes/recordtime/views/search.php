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

    <div id="user-city" style="display:none">
   <?php
    echo $user[0]['city']
    ?>
  </div>


  </div>
  <div class="result count">
    Results
  </div>
  <div class="filter-buttons">
    Sort by:
    <button id="price-ascending">Price (low to high)</button>
    <button id="price-descending"> Price (high to low)</button>
    <button id="location-toggle">Local</button>
  </div>
  <div id="ResultRows"class="Results container"></div>

</div>

<!-- SEARCH RESULT TEMPLATE -->
<script id="resultRow" type="text/x-handlebars-template">
  <div class="ResultRow row">
    <div class="Details col-md-4">
      <div>

      <img src="<?= site_url().template_assets_path(); ?>/images/user-placeholder.jpg">
        <h4>{{firstname}} {{lastname}}</h4>
      </div>
      <div class="MinorDetails">
        <!-- <p>Genres</p> -->
        <p>{{city}}, {{state}} </p>
        <p>Price: {{price}}</p>
      </div>
    </div>
    <div class="Philosophy col-md-4">
      <h5>Production Philosophy</h5>
      {{philosophy}}
    </div>
    <div class="Skills col-md-4">
      <h5>Skills and Specialties</h5>
      {{skills}}
    </div>
  </div>
</script>

<script>

// make template function
var source   = document.getElementById("resultRow").innerHTML;
var resultRowTemplate = Handlebars.compile(source);

$(document).ready(function(){

  var $ResultsContainer = $('#ResultRows');

  function descendingPrice(a, b) {
    return b.price - a.price;
  }

  function ascendingPrice(a, b) {
    return a.price - b.price;
  }

  function local(result) {
    var city = $('#user-city').text();
    return result.city.replace(/ /g,'') === city.replace(/ /g,'');
  }

  function renderResults(data, config) {

    $('.result.count').empty();
    $('.result.count').prepend(data.length);


    $ResultsContainer.empty();
    //sort + filter data
    if (config.price) {
      // if price ascending
      if (config.price === "ascending") {
        data = data.sort(ascendingPrice);
      } else if (config.price === "descending") {
        data = data.sort(descendingPrice)
      }
    }

    if (config.localOnly) {
      data = data.filter(local)
    }

    // attach sorted data.
    data.forEach(function(row) {
      var newRow = resultRowTemplate(row);
      $ResultsContainer.append(newRow);
    })

  }

  $('#searchForm').submit(function(e) {

    e.preventDefault();
    e.stopPropagation();
    // TODO: Get this more elegantly.
    var search = document.forms[0][0].value;

    var URL = 'search/producers?search=' + encodeURIComponent(search);

    $.get(URL, function(data) {
      console.dir(data);

      globalData = data;

      renderResults(data, {});
    });
  });

  $('#price-descending').click(function() {
    renderResults(globalData, {price: 'descending'});
  });

  $('#price-ascending').click(function() {
    renderResults(globalData, {price: 'ascending'});
  });

  $('#location-toggle').click(function() {
    renderResults(globalData, {localOnly: true});
  })


});
</script>
