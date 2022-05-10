@extends('admin.template')

@section('main')
  <style>
    #csv{ display: none;}
    #pdf{ display: none;}
    /* #tablereload{ display: none;} */
  </style>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Banks
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <!--Filtering Box Start -->
      
      <!--Filtering Box End -->
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Banks List</h3>
              @if(Helpers::has_permission(Auth::guard('admin')->user()->id, 'add_properties'))
              <div class="pull-right"><a class="btn btn-primary" href="{{ url('admin/add-bank') }}">Add Bank</a></div>
              @endif
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="table-responsive">
                    {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!}
                </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection

@push('scripts')
  <script src="{{ asset('public/backend/plugins/DataTables-1.10.18/js/jquery.dataTables.min.js') }}"></script>
  <script src="{{ asset('public/backend/plugins/Responsive-2.2.2/js/dataTables.responsive.min.js') }}"></script>
  {!! $dataTable->scripts() !!} 
@endpush
@section('validate_script')

<script type="text/javascript">

  // Date Time range picker for filter
$(function() {
      var startDate      = $('#startDate').val();
      var endDate        = $('#endDate').val();
      dateRangeBtn(startDate,endDate, dt=1);
      formDate (startDate, endDate);
  
      $(document).ready(function(){
        $('#dataTableBuilder_length').after('<div id="exportArea" class="col-md-4 col-sm-4 "><div class="row mt-m-2"><div class="btn-group btn-margin"><a href="" title="CSV" id="csv">CSV</a><a href="" title="PDF" id="pdf">PDF</a></div><div class="btn btn-group btn-refresh"><a href="" id="tablereload" class="form-control"><span>Reset</span></a></div></div></div>');
      });

      //csv convert
      $(document).on("click", "#csv", function(event){
        event.preventDefault();
        var space_type = $('#space_type').val();
        var status = $('#status').val();
        var to = $('#endDate').val();
        var from = $('#startDate').val();
        window.location = "properties/property_list_csv?to="+to+"&from="+from+"&space_type="+space_type+"&status="+status;
      });
      //pdf convert
      $(document).on("click", "#pdf", function(event){
        event.preventDefault();
        var space_type = $('#space_type').val();
        var status = $('#status').val();
        var to = $('#endDate').val();
        var from = $('#startDate').val();
        window.location = "properties/property_list_pdf?to="+to+"&from="+from+"&space_type="+space_type+"&status="+status;
      });
      //reload Datatable
      $(document).on("click", "#tablereload", function(event){
        event.preventDefault();
        $("#dataTableBuilder").DataTable().ajax.reload();
      });
});
</script>
@endsection