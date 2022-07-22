@extends('admin.template')

@section('main')
<div class="content-wrapper">
	<section class="content">
		@include('admin.customerdetails.customer_menu')
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">{{ "Payment methods" }}</h3>
					</div>

					<div class="panel panel-default">
						<div class="panel-footer">
							<div class="panel">
								<div class="panel-body">
									<div class="row">
										<div class="table-responsive">
											<table class="table table-striped" id="payout_methods">
												@if(count($payouts))
													<thead >
														<tr class="text-truncate">
															<th class="text-center" style="color: #898d93 !important;">{{trans('messages.utility.payment_method')}}</th>
															<th class="text-center" style="color: #898d93 !important;">{{ trans('messages.utility.headline') }}</th>
															<th class="text-center" style="color: #898d93 !important;">{{trans('messages.utility.payment_details')}}</th>
															<th class="text-center" style="color: #898d93 !important;">{{ trans('messages.account_preference.branch_city') }}</th>
															<th class="text-center" style="color: #898d93 !important;">{{trans('messages.utility.payment_status')}}</th>
														</tr>
													</thead>

													<tbody>
														@foreach($payouts as $key=>$payout)
															<tr>
																<td>{{ $payout->payment_methods->name}}</td>
																<td>
																	{{$payout->account_name}}<br>
																	{{ $payout->bank_branch_name }}
																</td>
																<td>
																	@if($payout->payment_methods->name!="Bank")
																		{{$payout->email }}
																	@else
																		({{$payout->account_number}})<br/>
																		{{$payout->bank_name}}
																	@endif
																</td>
																<td>{{ $payout->bank_branch_city }}</td>
																<td>{{ $payout->payment_methods->status}}</td>
															</tr>
														@endforeach
													</tbody>
												@else
													<tr><span>No data available</span></tr>
												@endif
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>           
				</div>
			</div>
		</div>
	</section>
</div>
@endsection