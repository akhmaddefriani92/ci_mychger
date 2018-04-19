<!--taruh content disini-->
<div class="row">
    <div class="col-md-12">
        <h2 class="page-header">
            Users <small>Chger</small>
        </h2>
    </div>
</div> 
<!-- /. ROW  -->

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-primary0 ">
            <div class="panel-body">
              <div class="form-group">
                <div class="col-sm-3"><br>
                  <button class="btn btn-success" onclick="add_user()"><i class="glyphicon glyphicon-plus"></i> Add User</button>   
                 <button class="btn btn-default" onclick="reload_table()"><i class="glyphicon glyphicon-refresh"></i> Reload</button>
                 </div>
                 <div class="col-sm-4">
                 <form action="#" id="form-filter" >
                 <label>Airlines</label>
                    <select id="AirlinesINX" class='form-control'>
                     <?php
                     $data = $this->airlines->tampildata();
                      echo"<option></option>";
                      foreach ($data as $key => $value) {
                  # code...

                        echo "<option value='$value[AirlinesINX]'>$value[Name]</option>";
                      }
                     ?>
                     </select>
                 </div>
                 <div class="col-sm-2"><br>
                  <button type="button" id="btn-filter" class="btn btn-primary">Filter</button>
                            <button type="button" id="btn-reset" class="btn btn-default">Reset</button>
                 </div>
                 </form>
              </div>
                <br><br>
                <table class="table table-stripped table-bordered" id="dataTables" >
                    <thead style="background-color:#00183f;color:#fff;">
                        <th>No.</th>
                        <th>UserName</th>
                        <th>Password</th>
                        <th>FullName</th>
                        <th>Airlines</th>
                        <th>Deletef</th>
                        <th>Action</th>
                    </thead>    
                    <tbody style='text-align: center;'>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
    
</div>
<!-- /. ROW  -->    
                
          
  <!-- Bootstrap modal -->
  <div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Form Users</h3>
      </div>
      <div class="modal-body form">
        <form action="#" id="form" class="form-horizontal">
          <input type="hidden" value="" name="ID"/> 
          <div class="form-body">
            <div class="form-group">
              <label class="control-label col-md-3">UserName</label>
              <div class="col-md-9">
                <input name="UserName" placeholder="Username" class="form-control" type="text">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-md-3">FullName</label>
              <div class="col-md-9">
                <input name="FullName" placeholder="FullName" class="form-control" type="text">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-md-3">Password</label>
              <div class="col-md-9">
                <input name="Password" placeholder="****" class="form-control" type="password">
              </div>
            </div>
             
             <div class="form-group">
              <label class="control-label col-md-3">Airlines</label>
              <div class="col-md-9">
                
                <select class="form-control" id="AirlinesINX" name="AirlinesINX">
                <?php
                    $data = $this->airlines->tampildata();
                    foreach ($data as $key => $value) {
                        # code...

                        echo "<option value='$value[AirlinesINX]'>$value[Name]</option>";
                    }
                ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">Deletef</label>
              <div class="col-md-9">
                <input name="Deletef" placeholder="0" class="form-control" type="text">
              </div>
            </div>
            
          </div>
        </form>
          </div>
          <div class="modal-footer">
            <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
  <!-- End Bootstrap modal -->

    

    <script>

    var save_method; //for save method string
    var table;
    $(document).ready(function() {
      table = $('#dataTables').DataTable({ 
        
        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        
        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('Users/ajax_list')?>",
            "type": "POST",            
            "data": function ( data ) {
                data.AirlinesINX = $('#AirlinesINX').val();
            }
        },
         "columns": [
          
                       { "data": "no"},
                        { "data": "UserName" },
                        { "data": "Password" },
                        { "data": "FullName" },
                        { "data": "Name" },
                        { "data": "Deletef" },
                        { "data": "aksi" }
                        
                    ],
        responsive: true   
        //Set column definition initialisation properties.
       /* "columnDefs": [
        { 
          "targets": [ 1 ], //last column
           orderData: [ 0, 1 ]
          //"orderable": false, //set not orderable
        },
        ],
*/
      });
    });

    
    function add_user()
    {
      save_method = 'add';
      //alert('test');
      
      $('#form')[0].reset(); // reset form on modals
      $('#myModal').modal('show'); // show bootstrap modal
      $('.modal-title').text('Add User'); // Set Title to Bootstrap modal title
      
    }

    $('#btn-filter').click(function(){ //button filter event click
        table.ajax.reload(null,false);  //just reload table
    });
    $('#btn-reset').click(function(){ //button reset event click
        $('#form-filter')[0].reset();
        table.ajax.reload(null,false);  //just reload table
    });

    function edit_user(id)
    {
      save_method = 'update';
      $('#form')[0].reset(); // reset form on modals

      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('Users/ajax_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
            $('[name="ID"]').val(data.ID);
            $('[name="UserName"]').val(data.UserName);
            $('[name="FullName"]').val(data.FullName);
            $('[name="Password"]').val(data.Password);
            $('[name="Deletef"]').val(data.Deletef);
            $("#AirlinesINX").val(data.AirlinesINX);
            
            //var text1 = data.AirlinesINX;
            //alert(text1);
            /*
            $('[name="AirlinesINX"]').filter(function() {
                //may want to use $.trim in here
                return $(this).text() == text1; 
            }).prop('selected', true);
            */
            
            $('#myModal').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit Users'); // Set title to Bootstrap modal title
            
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
    }

    function reload_table()
    {
      table.ajax.reload(null,false); //reload datatable ajax 
    }

    function save()
    {
      var url;
      if(save_method == 'add') 
      {
          url = "<?php echo site_url('Users/ajax_add')?>";
      }
      else
      {
        url = "<?php echo site_url('Users/ajax_update')?>";
      }

       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#form').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
             
               $('#myModal').modal('hide');
               reload_table();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding / update data');
            }
        });
    }

    

    function delete_user(id)
    {
      if(confirm('Are you sure delete this data?'))
      {
        // ajax delete data to database
          $.ajax({
            url : "<?php echo site_url('Users/ajax_delete')?>/"+id,
            type: "POST",
            dataType: "JSON",
            success: function(data)
            {
               //if success reload ajax table
               $('#modal_form').modal('hide');
               reload_table();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding / update data');
            }
        });
         
      }
    }

    </script>
    