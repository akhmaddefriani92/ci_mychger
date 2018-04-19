<!--taruh content disini-->
<div class="row">
    <div class="col-md-12">
        <h2 class="page-header">
            ApplAddon <small>Chger</small>
        </h2>
    </div>
</div> 
<!-- /. ROW  -->

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-primary0 ">
            <div class="panel-body">
               <button class="btn btn-success" onclick="add_appladdon()"><i class="glyphicon glyphicon-plus"></i> Add ApplAddon</button>   
               <button class="btn btn-default" onclick="reload_table()"><i class="glyphicon glyphicon-refresh"></i> Reload</button>
                <br><br>
                <table class="table table-stripped table-bordered" id="dataTables" >
             
                    <thead style="background-color:#00183f;color:#fff;">
                        <th>No.</th>
                        <th>AirCode</th>
                        <th>AppName</th>
                        <th>AppPath</th>
                        <th>Status</th>
                        <th width="10%">Action</th>
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
        <h3 class="modal-title">Form ApplAddon</h3>
      </div>
      
      
      <div class="modal-body form">
        <form action="#" id="form" class="form-horizontal">
          <input type="hidden" value="" name="idx"/> 
          <div class="form-body">
            
            <div class="form-group">
              <label class="control-label col-md-3">AirCode</label>
              <div class="col-md-9">
                <select class="form-control" id="AirCode" name="AirCode">
                <?php
                    $data = $this->airlines->tampildata();
                    foreach ($data as $key => $value) {
                        # code...

                        echo "<option value='$value[AirlinesCode]'>$value[AirlinesCode]</option>";
                    }
                ?>
                </select>
              </div>
            </div>
             
             
            <div class="form-group">
              <label class="control-label col-md-3">AppName</label>
              <div class="col-md-9">
                <input name="AppName" class="form-control" type="text">
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">AppPath</label>
              <div class="col-md-9">
                <textarea class="form-control" name='AppPath'></textarea>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">Status</label>
              <div class="col-md-9">
                <input name="Status" placeholder="0" class="form-control" type="text">
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
            "url": "<?php echo site_url('ApplAddon/ajax_list')?>",
            "type": "POST"
        },
        
        
         "columns": [
                      { "data": "no"},
                      { "data": "AirCode" },
                      { "data": "AppName" },
                      { "data": "AppPath" },
                      { "data": "Status" },
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

    
    function add_appladdon()
    {
      save_method = 'add';
      //alert('test');
      
      $('#form')[0].reset(); // reset form on modals
      $('#myModal').modal('show'); // show bootstrap modal
      $('.modal-title').text('Add ApplAddon'); // Set Title to Bootstrap modal title
      
    }

    function edit_appladdon(id)
    {
      save_method = 'update';
      $('#form')[0].reset(); // reset form on modals

      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('ApplAddon/ajax_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          
            $('[name="idx"]').val(data.idx);
            //$("#Destination").val(data.Destination);
            $('[name="AppName"]').val(data.AppName);
            $('[name="AppPath"]').val(data.AppPath);
            $('[name="Status"]').val(data.Status);
            $("#AirCode").val(data.AirCode);
            
            //var text1 = data.AirlinesINX;
            //alert(text1);
            /*
            $('[name="AirlinesINX"]').filter(function() {
                //may want to use $.trim in here
                return $(this).text() == text1; 
            }).prop('selected', true);
            */
            
            $('#myModal').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit ApplAddon'); // Set title to Bootstrap modal title
            
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
          url = "<?php echo site_url('ApplAddon/ajax_add')?>";
      }
      else
      {
        url = "<?php echo site_url('ApplAddon/ajax_update')?>";
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

    function delete_appladdon(id)
    {
      if(confirm('Are you sure delete this data?'))
      {
        // ajax delete data to database
          $.ajax({
            url : "<?php echo site_url('ApplAddon/ajax_delete')?>/"+id,
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