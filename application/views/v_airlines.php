                    <!--taruh content disini-->
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                            Airlines <small>Chger</small>
                        </h2>
                    </div>
                </div> 
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="panel panel-primary0 ">
                            <div class="panel-body">
                               <button class="btn btn-success" onclick="add_airlines()"><i class="glyphicon glyphicon-plus"></i> Add Airlines</button>  
                               <button class="btn btn-default" onclick="reload_table()"><i class="glyphicon glyphicon-refresh"></i> Reload</button> 
                                <br><br>
                                
                                <table class="table table-stripped table-bordered dt-responsive display nowrap" id="dataTables" >
                                    <thead style="background-color:#00183f;color:#fff;">
                                        <th>No.</th>
                                        <th>AirlinesINX</th>
                                        <th>Name</th>
                                        <th>AirlinesCode</th>
                                        <th>MBpp</th>
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
        <h3 class="modal-title">Form Airlines</h3>
      </div>
      
      <div class="modal-body form">
        <form action="#" id="form" class="form-horizontal">
          <input type="hidden" value="" name="AirlinesINX"/> 
          <div class="form-body">
            <div class="form-group">
              <label class="control-label col-md-3">Name</label>
              <div class="col-md-9">
                <input name="Name" placeholder="Name" class="form-control" type="text">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-md-3">AirlinesCode</label>
              <div class="col-md-9">
                <input name="AirlinesCode" placeholder="AirlinesCode" class="form-control" type="text">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-md-3">MBpp</label>
              <div class="col-md-9">
                <input name="MBpp" placeholder="0" class="form-control" type="text">
              </div>
            </div>
             
             
            <div class="form-group">
              <label class="control-label col-md-3">Deletef</label>
              <div class="col-md-9">
                <input name="Deletef" placeholder="0" class="form-control" type="text"><span class="help-block"></span>
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
            "url": "<?php echo site_url('Airlines/ajax_list')?>",
            "type": "POST"
        },
         "columns": [
                      { "data": "no"},
                      { "data": "AirlinesINX" },
                      { "data": "Name" },
                      { "data": "AirlinesCode" },
                      { "data": "MBpp" },
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

        $("input").change(function(){
          $(this).parent().parent().removeClass('has-error');
          $(this).next().empty();
        });

    });

    
    function add_airlines()
    {
      save_method = 'add';
      //alert('test');
      
      $('#form')[0].reset(); // reset form on modals
      $('.form-group').removeClass('has-error'); // clear error class
      $('.help-block').empty(); // clear error string
      $('#myModal').modal('show'); // show bootstrap modal
      $('.modal-title').text('Add Airlines'); // Set Title to Bootstrap modal title
      
    }

    function edit_airlines(id)
    {
      save_method = 'update';
      $('.form-group').removeClass('has-error'); // clear error class
      $('.help-block').empty(); // clear error string
      $('#form')[0].reset(); // reset form on modals

      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('Airlines/ajax_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          
            $('[name="AirlinesINX"]').val(data.AirlinesINX);
            $('[name="Name"]').val(data.Name);
            $('[name="AirlinesCode"]').val(data.AirlinesCode);
            $('[name="MBpp"]').val(data.MBpp);
            $('[name="Deletef"]').val(data.Deletef);
            //$("#AirlinesINX").val(data.AirlinesINX);
            
            //var text1 = data.AirlinesINX;
            //alert(text1);
            /*
            $('[name="AirlinesINX"]').filter(function() {
                //may want to use $.trim in here
                return $(this).text() == text1; 
            }).prop('selected', true);
            */
            
            $('#myModal').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit Airlines'); // Set title to Bootstrap modal title
            
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
          url = "<?php echo site_url('Airlines/ajax_add')?>";
      }
      else
      {
        url = "<?php echo site_url('Airlines/ajax_update')?>";
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
             
              if(data.status) //if success close modal and reload ajax table
              {
                $('#myModal').modal('hide');
                reload_table();
              }else
              {
                for (var i = 0; i < data.inputerror.length; i++) 
                {
                    $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error'); //select parent twice to select div form-group class and add has-error class
                    $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]); //select span help-block class set text error string
                }
              }
            $('#btnSave').text('save'); //change button text
            $('#btnSave').attr('disabled',false); //set button enable


            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding / update data');
            }
        });
    }

    function delete_airlines(id)
    {
      if(confirm('Are you sure delete this data?'))
      {
        // ajax delete data to database
          $.ajax({
            url : "<?php echo site_url('Airlines/ajax_delete')?>/"+id,
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