@extends('admin.template')

@section('main')
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">{{ $form_name ?? '' }}</h3>
                    </div>

                    <form class="form-horizontal" action="{{url('admin/edit-price')}}/{{$price->id}}" id="edit_price" method="post" name="signup_form" accept-charset='UTF-8'>
                        <h4 class="text-info text-center">Update Price Information</h4>
                        {{ csrf_field() }}
                        {{-- <input type="hidden" name="customer_id" id="user_id" value="{{ $user->id}}"> --}}
                        {{-- <input type="hidden" name="default_country" id="default_country" value="{{ $user->default_country }}" class="form-control">
                        <input type="hidden" name="carrier_code" id="carrier_code" value="{{ $user->carrier_code }}" class="form-control">
                        <input type="hidden" name="formatted_phone" id="formatted_phone" value="{{ $user->formatted_phone }}" class="form-control"> --}}
                        <div class="box-body">
                            <div class="form-group">
                                <label for="initials" class="control-label col-sm-3">Amout<span class="text-danger">*</span></label>
                                <div class="col-sm-5">
                                    <input type="number" class="form-control" name="amount" id="amount" value="{{ $price->amount }}" placeholder="Amount" required>
                                    <span id="first_name-error" class="text-danger"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name" class="control-label col-sm-3">Link<span class="text-danger">*</span></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="link" id="link" value="{{ $price->link }}" placeholder="Amount link" required>
                                    <span id="last_name-error" class="text-danger"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name" class="control-label col-sm-3">Expires<span class="text-danger">*</span></label>
                                <div class="col-sm-5">
                                    <input type="date" class="form-control" name="expires" id="expires" value="{{ $price->expires }}" placeholder="" required>
                                    <span id="last_name-error" class="text-danger"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="status" class="control-label col-sm-3">Status</label>
                                <div class="col-sm-5">
                                    <select class="form-control" name="status" id="status">
                                    <option value="Active" {{$price->status == 'Active' ? 'selected' : ''}}>Active</option>
                                    <option value="Inactive" {{$price->status == 'Inactive' ? 'selected' : ''}}>Inactive</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary" id="submitBtn">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    </div>
@endsection


@push('scripts')
<script src="{{ asset('public/backend/js/intl-tel-input-13.0.0/build/js/intlTelInput.js')}}" type="text/javascript"></script>
<script src="{{ asset('public/backend/js/isValidPhoneNumber.js') }}" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        jQuery.validator.addMethod("laxEmail", function(value, element) {
          // allow any non-whitespace characters as the host part
            return this.optional( element ) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value );
        }, 'Please enter a valid email address.');

        $('#edit_customer').validate({
            rules: {
                first_name: {
                    required: true,
                    maxlength: 255
                },
                last_name: {
                    required: true,
                    maxlength: 255
                },
                email: {
                    required: true,
                    maxlength: 255,
                    laxEmail:true
                },
            }
        });
    });
</script>
<script type="text/javascript">

  // flag for button disable/enable
    var hasPhoneError = false;
    var hasEmailError = false;

    //jquery validation
    $.validator.setDefaults({
        highlight: function(element) {
            $(element).parent('div').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).parent('div').removeClass('has-error');
        },
        errorPlacement: function(error, element) {
            $('#tel-error').html('').hide();
            error.insertAfter(element);
        }
    });

    /*
    intlTelInput
    */
    $(document).ready(function() {
        $("#phone").intlTelInput({
            separateDialCode: true,
            nationalMode: true,
            preferredCountries: ["us"],
            autoPlaceholder: "polite",
            placeholderNumberType: "MOBILE",
            utilsScript: '{{ URL::to('/') }}/public/backend/js/intl-tel-input-13.0.0/build/js/utils.js'
        });

        var countryData = $("#phone").intlTelInput("getSelectedCountryData");
        $('#default_country').val(countryData.iso2);
        $('#carrier_code').val(countryData.dialCode);

        $("#phone").on("countrychange", function(e, countryData) {
            formattedPhone();

            // log(countryData);
            $('#default_country').val(countryData.iso2);
            $('#carrier_code').val(countryData.dialCode);

            if ($.trim($(this).val()) !== '') {
                //Invalid Number Validation - Add
                if (!$(this).intlTelInput("isValidNumber") || !isValidPhoneNumber($.trim($(this).val()))) {
                    $('#tel-error').addClass('error').html('Please enter a valid International Phone Number.').css("font-weight", "bold");
                    hasPhoneError = true;
                    enableDisableButton();
                    $('#phone-error').hide();
                } else {
                    $('#tel-error').html('');

                    $.ajax({
                            method: "POST",
                            url: "{{url('duplicate-phone-number-check-for-existing-customer')}}",
                            dataType: "json",
                            cache: false,
                            data: {
                                'phone': $.trim($(this).val()),
                                'carrier_code': $.trim(countryData.dialCode),
                                'id': $('#user_id').val(),
                            }
                        })
                        .done(function(response) {
                            if (response.status == true) {
                                $('#tel-error').html('');
                                $('#phone-error').show();

                                $('#phone-error').addClass('error').html(response.fail).css("font-weight", "bold");
                                hasPhoneError = true;
                                enableDisableButton();
                            } else if (response.status == false) {
                                $('#tel-error').show();
                                $('#phone-error').html('');

                                hasPhoneError = false;
                                enableDisableButton();
                            }
                        });
                }
            } else {
                $('#tel-error').html('');
                $('#phone-error').html('');
                hasPhoneError = false;
                enableDisableButton();
            }
        });
    });
    /*
    intlTelInput
    */

    // Validate phone via Ajax
    $(document).ready(function() {
        $("input[name=phone]").on('blur keyup', function(e) {
            formattedPhone();
            if ($.trim($(this).val()) !== '') {
                if (!$(this).intlTelInput("isValidNumber") || !isValidPhoneNumber($.trim($(this).val()))) {
                    $('#tel-error').addClass('error').html('Please enter a valid International Phone Number.').css("font-weight", "bold");
                    hasPhoneError = true;
                    enableDisableButton();
                    $('#phone-error').hide();
                } else {
                    var phone = $(this).val().replace(/-|\s/g, ""); //replaces 'whitespaces', 'hyphens'
                    var phone = $(this).val().replace(/^0+/, ""); //replaces (leading zero - for BD phone number)
                    var token = "{{csrf_token()}}";
                    var customer_id = $('#user_id').val();

                    var pluginCarrierCode = $('#phone').intlTelInput('getSelectedCountryData').dialCode;
                    $.ajax({
                            url: "{{url('duplicate-phone-number-check-for-existing-customer')}}",
                            method: "POST",
                            dataType: "json",
                            data: {
                                'phone': phone,
                                'carrier_code': pluginCarrierCode,
                                '_token': "{{csrf_token()}}",
                                'id': customer_id
                            }
                        })
                        .done(function(response) {
                            if (response.status == true) {
                                if (phone.length == 0) {
                                    $('#phone-error').html('');
                                } else {
                                    $('#phone-error').addClass('error').html("The number has already been taken!").css("font-weight", "bold");
                                    hasPhoneError = true;
                                    enableDisableButton();
                                }
                            } else if (response.status == false) {
                                $('#phone-error').html('');
                                hasPhoneError = false;
                                enableDisableButton();
                            }
                        });
                    $('#tel-error').html('');
                    $('#phone-error').show();
                    hasPhoneError = false;
                    enableDisableButton();
                }
            } else {
                $('#tel-error').html('');
                $('#phone-error').html('');
                hasPhoneError = false;
                enableDisableButton();
            }
        });
    });

    function formattedPhone() {
        if ($('#phone').val != '') {
            var p = $('#phone').intlTelInput("getNumber").replace(/-|\s/g, "");
            $("#formatted_phone").val(p);
        }
    }

    /**
     * [check submit button should be disabled or not]
     * @return {void}
     */
    function enableDisableButton() {
        if (!hasPhoneError && !hasEmailError) {
            $('form').find("button[type='submit']").prop('disabled', false);
        } else {
            $('form').find("button[type='submit']").prop('disabled', true);
        }
    }
    </script>
    @endpush