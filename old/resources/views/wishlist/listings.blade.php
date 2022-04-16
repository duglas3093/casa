@extends('template')

@section('main')

<div class="margin-top-85">
	<div class="row m-0">
		{{-- sidebar start--}}
		@include('users.sidebar')
		{{--sidebar end--}}
		<div class="col-lg-12 p-0">
			<div class="container-fluid container-fluid-90">
			    
			      <div class="row">
                        <div class="col-md-12 p-0 mb-3">
                            <div class="mt-4 rounded-3 p-4 ">
                                <span class="text-18 pt-4 pb-4 font-weight-700">{{trans('messages.property.my_wishlist')}}</span>
                               
                            </div>
                        </div>
                    </div>
			    
                    @if($userdata->count() > 0)
                        <div class="row wishlist">
                            @foreach($userdata as $rowuser)
                                @foreach($listed as $row)
                                    <?php if($row->id==$rowuser->propertyid){?>
                                        <div class="col-md-3 mb-5">
                                            <img class="img-responsive mb-3" style="height:180px;width:100%" src="{{ $row->cover_photo }}">
                                         <i class="fa fa-trash" id="closedid"  onclick="removethis(<?php echo $row->id;?>);" ></i>

                                            <a href="{{ url('properties/'.$row->slug) }}" class="text-14 font-weight-600">{{ ($row->name == '') ? '' : $row->name }}</a>
                                            <a href="{{ url('listing/'.$row->slug) }}"><div class="text-13 text-danger"> {{ $row->bedrooms }} Bedrooms - {{ $row->bedrooms }} Beds</div></a>
                                            
                                        </div>
                                    <?php } ?>
                                @endforeach
                            @endforeach
                        </div>
                    @endif

 <script>
       function removethis(id) {
        $.ajax({
          type: 'post',
          url: '{{url('wishlistremove/')}}',
          data:{
            wishid:id,
            '_token': '{{csrf_token()}}'
          },
          success: function (data)
          {
            window.location.href = "{{ url('mywishlist') }}";

          }
        });
      } 
    </script>

			</div>
		</div>
	</div>
</div>
@stop    