<script src="../resources/jquery/dist/jquery.min.js"></script>
<script src="../resources/jquery-ui/jquery-ui.min.js"></script>
<script src="../resources/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="../resources/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../other_resources/js/adminlte.min.js"></script>
<script>
$(function(){
	var url = window.location;
	$('ul.sidebar-menu a').filter(function() {
	    return this.href == url;
	}).parent().addClass('active');

	$('ul.treeview-menu a').filter(function() {
	    return this.href == url;
	}).parentsUntil(".sidebar-menu > .treeview-menu").addClass('active');

});
</script>
<!-- Data Table Initialize -->
<script>
  $(function () {
    $('main_container').DataTable({
      responsive: false
    })
  })
</script>
<script>
  $(function(){
    $('.main_content').select({
			'more':true;
		})
  });
</script>
