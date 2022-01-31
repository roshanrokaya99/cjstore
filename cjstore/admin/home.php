<?php
  include 'includes/session.php';
?>
<?php
  $today = date('Y-m-d');
  $year = date('Y');
  if(isset($_GET['year'])){
    $year = $_GET['year'];
  }

  $conn = $pdo->open();
?>
<?php
  $where = '';
  if(isset($_GET['category'])){
    $catid = $_GET['category'];
    $where = 'WHERE category_id ='.$catid;
  }

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
  <?php include 'includes/menubar.php'; ?>
  <div class="content-wrapper">
    <div class="box">
      <div class="box-header with-border">
        <a href="#addnew"><b>Add New User</b></a>
      </div>
      <div class="box-body">
        <table  class="table">
          <thead>
            <th>Photo</th>
            <th>Email</th>
            <th>Tools</th>
          </thead>
          <tbody>
            <?php
              $conn = $pdo->open();

              try{
                $stmt = $conn->prepare("SELECT * FROM users WHERE type=:type");
                $stmt->execute(['type'=>0]);
                foreach($stmt as $row){
                  $status = ($row['status']) ? '<span class="label label-success">active</span>' : '<span class="label label-danger">not verified</span>';
                  $active = (!$row['status']) ? '<span class="pull-right"><a href="#activate" class="status" data-toggle="modal" data-id="'.$row['id'].'"><i class="fa fa-check-square-o"></i></a></span>' : '';
                  echo "
                    <tr>
                      <td>".$row['email']."</td>
                      <td>".$row['firstname'].' '.$row['lastname']."</td>

                      <td>
                        <button class='btn btn-success btn-sm  btn-flat' > Edit</button>
                        <button class='btn btn-danger btn-sm delete btn-flat' data-id='".$row['id']."'><i class='fa fa-trash'></i> Delete</button>
                      </td>
                    </tr>
                  ";
                }
              }
              catch(PDOException $e){
                echo $e->getMessage();
              }

              $pdo->close();
            ?>
          </tbody>
        </table>
      </div>
    </div>
      </section>
      <div class="box-header with-border">
        <a href="products.php"><b>Product</b></a> <br>
        <a href="category.php"><b>Category<b></a> <br>
        </ul>
      </div>
    </div>


  	<?php include 'includes/footer.php'; ?>

</div>
<?php $pdo->close(); ?>
<?php include 'includes/scripts.php'; ?>
<?php include 'includes/users_modal.php'; ?>

<script>
$(function(){

  $(document).on('click', '.edit', function(e){
    e.preventDefault();
    $('#edit').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  $(document).on('click', '.delete', function(e){
    e.preventDefault();
    $('#delete').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  $(document).on('click', '.photo', function(e){
    e.preventDefault();
    var id = $(this).data('id');
    getRow(id);
  });

  $(document).on('click', '.status', function(e){
    e.preventDefault();
    var id = $(this).data('id');
    getRow(id);
  });

});

function getRow(id){
  $.ajax({
    type: 'POST',
    url: 'users_row.php',
    data: {id:id},
    dataType: 'json',
    success: function(response){
      $('.userid').val(response.id);
      $('#edit_email').val(response.email);
      $('#edit_password').val(response.password);
      $('#edit_firstname').val(response.firstname);
      $('#edit_lastname').val(response.lastname);
      $('#edit_address').val(response.address);
      $('#edit_contact').val(response.contact_info);
      $('.fullname').html(response.firstname+' '+response.lastname);
    }
  });
}
</script>
</body>
</html>
