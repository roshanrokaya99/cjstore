
<script src="resources/jquery/dist/jquery.min.js"></script>
<script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="other_resources/js/adminlte.min.js"></script>
<script>
	function check_status(){
		var status = document.getElementByClassName(main_container);
		return status;
	}
</script>
<script>
$(function(){
  $('#navbar-search-input').focus(function(){
    $('#searchBtn').show();
  });

  $('#navbar-search-input').focusout(function(){
    $('#searchBtn').hide();
  });

  getCart();

  $('#productForm').submit(function(e){
  	e.preventDefault();
  	var product = $(this).serialize();
  	$.ajax({
  		type: 'POST',
  		url: 'cart_add.php',
  		data: product,
  		dataType: 'json',
  		success: function(response){
  			$('#callout').show();
  			$('.message').html(response.message);
  			if(response.error){
  				$('#callout').removeClass('callout-success').addClass('callout-danger');
  			}
  			else{
				$('#callout').removeClass('callout-danger').addClass('callout-success');
				getCart();
  			}
  		}
  	});
  });

  $(document).on('click', '.close', function(){
  	$('#callout').hide();
  });

});
function check(){
	var products = getElementByClassName(products);
	if (products == ''){
		return 0;
	}
	else {
		return 1;
	}
}

function getCart(){
	$.ajax({
		type: 'POST',
		url: 'cart_fetch.php',
		dataType: 'json',
		success: function(response){
			$('#cart_menu').html(response.list);
			$('.cart_count').html(response.count);
		}
	});
}
</script>
