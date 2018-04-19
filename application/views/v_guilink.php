<!--taruh content disini-->
<div class="row">
          <div class="col-md-12">
              <h2 class="page-header">
                  GUILink <small>Chger</small>
              </h2>
          </div>
      </div> 
<!-- /. ROW  -->

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-primary0 ">
            <div class="panel-body">
               
                <br><br>
                <form id="form-filter" class="form-horizontal">
                    <div class="form-group">
                      <div class="col-sm-4"><br>
                            <button class="btn btn-success" onclick="add_guilink()"><i class="glyphicon glyphicon-plus"></i> Add GUILink</button> <button class="btn btn-default" onclick="reload_table()"><i class="glyphicon glyphicon-refresh"></i> Reload</button>
                        </div>

                       
                      
                        <div class="col-sm-4">
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

                    </div>
                    </form>
                    <div class="form-group">
                        
                    </div>
                
                <table class="table table-stripped table-bordered" id="dataTables" >
                    <thead style="background-color:#00183f;color:#fff;">
                        <th>No.</th>
                        <th>IPAddress</th>
                        <th>Airlines</th>
                        <th>GuiID1</th>
                        <th>GuiID2</th>
                        <th>GuiID3</th>
                        <th>GuiID4</th>
                        <th>GuiID5</th>
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
        <h3 class="modal-title">Form GuiLink</h3>
      </div>
      
      <div class="modal-body form">
        <form action="#" id="form" class="form-horizontal">
          
          <div class="form-body">
            
            <div class="form-group">
              <label class="control-label col-md-3">IPAddress</label>
              <div class="col-md-9">
                <select class="form-control" id="IPAddress" name="IPAddress">
                <?php
                    $data = $this->ipaddress->tampildata2();
                    foreach ($data as $key => $value) {
                        # code...

                        echo "<option value='$value[IPAddressINX]'>$value[IPAddress] $value[Name]</option>";
                    }
                ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">GuiID1</label>
              <div class="col-md-9">
                <select class="form-control" id="GuiID1" name="GuiID1">
                <?php
                    $data = $this->guis->tampildata();
                    foreach ($data as $key => $value) {
                        # code...
                      $GuiID = strtoupper($value["GuiID"]);
                        echo "<option value='$GuiID'>$GuiID</option>";
                    }
                ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">GuiID2</label>
              <div class="col-md-9">
                <select class="form-control" id="GuiID2" name="GuiID2">
                <?php
                    $data = $this->guis->tampildata();
                    foreach ($data as $key => $value) {
                        # code...
                      $GuiID = strtoupper($value["GuiID"]);
                        echo "<option value='$GuiID'>$GuiID</option>";
                    }
                ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">GuiID3</label>
              <div class="col-md-9">
                <select class="form-control" id="GuiID3" name="GuiID3">
                <?php
                    $data = $this->guis->tampildata();
                    foreach ($data as $key => $value) {
                        # code...
                      $GuiID = strtoupper($value["GuiID"]);
                        echo "<option value='$GuiID'>$GuiID</option>";
                    }
                ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">GuiID4</label>
              <div class="col-md-9">
                <select class="form-control" id="GuiID4" name="GuiID4">
                <?php
                    $data = $this->guis->tampildata();
                    foreach ($data as $key => $value) {
                        # code...
                      $GuiID = strtoupper($value["GuiID"]);
                        echo "<option value='$GuiID'>$GuiID</option>";
                    }
                ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-3">GuiID5</label>
              <div class="col-md-9">
                <select class="form-control" id="GuiID5" name="GuiID5">
                <?php
                    $data = $this->guis->tampildata();
                    foreach ($data as $key => $value) {
                        # code...
                      $GuiID = strtoupper($value["GuiID"]);
                        echo "<option value='$GuiID'>$GuiID</option>";
                    }
                ?>
                </select>
              </div>
            </div>
            
             
            <div class="form-group">
              <label class="control-label col-md-3">Deletef</label>
              <div class="col-md-9">
                <input name="Deletef"  placeholder="0" class="form-control" type="text">
               <span class="help-block"></span>
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
            "url": "<?php echo site_url('GUILink/ajax_list')?>",
            "type": "POST",
            "data": function ( data ) {
                data.AirlinesINX = $('#AirlinesINX').val();
            }
        },
        
         "columns": [
                      { "data": "no"},
                      { "data": "IPAddress" },
                      { "data": "Name" },
                      { "data": "GuiID1" },
                      { "data": "GuiID2" },
                      { "data": "GuiID3" },
                      { "data": "GuiID4" },
                      { "data": "GuiID5" },
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
      $('#btn-filter').click(function(){ //button filter event click
        table.ajax.reload(null,false);  //just reload table
    });
    $('#btn-reset').click(function(){ //button reset event click
        $('#form-filter')[0].reset();
        table.ajax.reload(null,false);  //just reload table
    });

    
    function add_guilink()
    {
      save_method = 'add';
      //alert('test');
      
      $('#form')[0].reset(); // reset form on modals
      $('#myModal').modal('show'); // show bootstrap modal
      $('.form-group').removeClass('has-error'); // clear error class
      $('.help-block').empty(); // clear error string
      
      $('.modal-title').text('Add GuiLink'); // Set Title to Bootstrap modal title
      $("#IPAddress").attr('readonly', false);
    }

    function edit_guilink(id)
    {
      save_method = 'update';
      $('.form-group').removeClass('has-error'); // clear error class
      $('.help-block').empty(); // clear error string
      $('#form')[0].reset(); // reset form on modals

      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('GUILink/ajax_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          //$("#Destination").val(data.Destination);
            
            $('[name="Deletef"]').val(data.Deletef);
            $("#IPAddress").val(data.IPAddress);
            //$('[name="IPAddress"]').prop('readonly', true);
            $("#IPAddress").attr('readonly', true);
            $("#GuiID1").val(data.GuiID1);
            $("#GuiID2").val(data.GuiID2);
            $("#GuiID3").val(data.GuiID3);
            $("#GuiID4").val(data.GuiID4);
            $("#GuiID5").val(data.GuiID5);

            
            //var text1 = data.AirlinesINX;
            //alert(text1);
            /*
            $('[name="AirlinesINX"]').filter(function() {
                //may want to use $.trim in here
                return $(this).text() == text1; 
            }).prop('selected', true);
            */
            
            $('#myModal').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit GuiLink'); // Set title to Bootstrap modal title
            
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
          url = "<?php echo site_url('GUILink/ajax_add')?>";
      }
      else
      {
        url = "<?php echo site_url('GUILink/ajax_update')?>";
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
            }
            else
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
            $('#btnSave').text('save'); //change button text
            $('#btnSave').attr('disabled',true); //set button enable 

        }   
      });
    }

    function delete_guilink(id)
    {
      if(confirm('Are you sure delete this data?'))
      {
        // ajax delete data to database
          $.ajax({
            url : "<?php echo site_url('GUILink/ajax_delete')?>/"+id,
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