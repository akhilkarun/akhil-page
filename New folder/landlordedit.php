 
<?php 
require_once('../_resourceSettings/user.php');
include_once('includes/user-privileges.php');

if(_ifUser($const_user_agent)) {
    //LANDLORDS
               $usr = CMS::tables('users'); 
    //Save Section
            if(isset($_POST['submit'])){
                    $nameVld    = false;
                    $phoneVld   = false;        
                    
                    if(_request('name')=='' && _request('company')=='')
                        $usr->validate('',"custom", "Please enter a valid name or a company name");             
                    else
                        $nameVld = true;
                    
                    $usr->validate(_request('email'),"null", "Please enter a valid email address"); 
                    $phoneVld = $usr->validate(_request('phone'),"null", "Please enter a valid phone number");              
                
                    if(!$usr->error) {

                            //if user exists in the database
                            if($user_id = $usr->where('email',_request('email'))->select('id')->first()->get()['id']) {
                                
                                _setRequest('user_id',$user_id);
                                
                                $usr = 
                                CMS::tables('user_clients')
                                ->where('user_id',_request('user_id'))
                                ->andWhere('manager_id',_managerID());
                                
                                //if user exists under agent                    
                                if($usr->first()->get())
                                    $usr
                                    ->sanitize([ 'name', 'lname', 'company', 'phone', 'h_no', 'street', 'city', 'postcode' ])
                                    ->update([ 'name', 'lname', 'company', 'phone', 'h_no', 'street', 'city', 'postcode' ]);
                                else
                                    CMS::tables('user_clients')
                                    ->sanitize([ 'name', 'lname', 'company', 'phone', 'h_no', 'street', 'city', 'postcode' ])
                                    ->insert([  
                                        'user_id'=>_request('user_id'),
                                        'manager_id'=>_managerID(),
                                        'name', 'lname', 'company', 'h_no', 'street', 'city', 'postcode', 'phone'
                                    ]);
                                
                                if(
                                    _request('user_type_id')!='' && 
                                    !CMS::tables('user_acct_type')
                                    ->where('user_id',_request('user_id'))
                                    ->andWhere('manager_id',_managerID())
                                    ->andWhere('user_type_id',_requestInt('user_type_id'))
                                    ->first()
                                    ->get()
                                )
                                CMS::tables('user_acct_type')
                                ->insert([
                                    'user_type_id', 'user_id', 
                                    'manager_id'=>_managerID() 
                                ]);  

                            }
                            else {
                                    
                                    _setRequest('user_id',
                                        CMS::tables('users')
                                        ->sanitize([ 'name', 'lname', 'email', 'phone' ])
                                        ->insert([ 'name', 'lname', 'email', 'phone' ])
                                    );  
                                    
                                    CMS::tables('user_clients')
                                    ->sanitize([ 'company', 'h_no', 'street', 'city', 'postcode' ])
                                    ->insert([
                                        'user_id', 'name', 'lname', 'company', 'phone', 'h_no', 'street', 'city', 'postcode', 
                                        'manager_id'=>_managerID() 
                                    ]);
                                    
                                    if(_request('user_type_id')!='')            
                                        CMS::tables('user_acct_type')
                                        ->insert([ 
                                            'user_type_id', 'user_id', 
                                            'manager_id'=>_managerID() 
                                        ]);                                     
                                }

                    }
                    echo "1";exit;
            } 

            elseif(_request('user_id')!='') {
       
                $usr
                    ->join('user_clients','t1.id=t2.user_id and t2.manager_id='._managerID())
                    ->join('user_acct_type','t2.user_id=t3.user_id and t3.user_type_id="'._requestInt('user_type_id').'" and t3.manager_id='._managerID())
                    ->select([ 't2.company', 't2.name', 't2.lname', 't1.email', 't2.phone', 't2.h_no', 't2.street', 't2.city', 't2.postcode' ]) 
                    ->where(_requestInt('user_id'))
                    ->first();

                $result =  $usr->get();

            }
     }


 ?>           


 <div class="panel-body">
                        <form name="landlordform" id="landlordform" method="post" class="form-horizontal" action="">
                            <input type="hidden" class="form-control" 
                                            name="user_type_id" value="2"/> 
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="fname">First name</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" 
                                            name="fname" id="fname" value="<?php echo  $result['name']; ?>" placeholder="Enter the first name (if any)"/>
                                         
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="lname">Last name</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" 
                                            name="lname" id="lname" value="<?php echo  $result['lname']; ?>" placeholder="Enter the last name (if any)"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="email">Email Address</label>
                                <div class="col-sm-5">
                                   <input type="text" class="form-control" required
                                            name="email" id="email" value="<?php echo  $result['email']; ?>" placeholder="Enter the email address"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="company">Company</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" required
                                            name="company" id="company" value="<?php echo  $result['company']; ?>" placeholder="Name of the company"/>
                                </div>
                            </div>

                            
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="h_no">House/Building No</label>
                                <div class="col-sm-5">
                                     <input type="text" class="form-control" 
                                            name="h_no" id="h_no" value="<?php echo  $result['h_no']; ?>" placeholder="Enter the first name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="street">Street Address </label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" required
                                            name="street" id="street" value="<?php echo  $result['street']; ?>" placeholder="Street no/name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="city">Town/City</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control"
                                            name="city" id="city" value="<?php echo  $result['street']; ?>" placeholder="Street no/name"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="city">Postcode</label>
                                <div class="col-sm-5">
                                     <input type="text" class="form-control" required
                                            name="postcode" id="postcode"  value="<?php echo  $result['postcode']; ?>" placeholder="Postcode"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="phone">Phone No</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" required
                                            name="phone" id="phone" value="<?php echo  $result['phone']; ?>" placeholder="Phone Number"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-9 col-sm-offset-4">
                                    <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Sign up</button>
                                </div>
                            </div>
                        </form>
                    </div>


   </div> <!-- end col -->
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

      <script type="text/javascript">

        $(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  
});
$('.sbmt-btn').click(function(){   
        
        $( "#landlordform" ).validate( {
                rules: {
                  fname: "required" ,
                  lname: "required" ,
                  email: {
                required: true,
                // Specify that email should be validated
                // by the built-in "email" rule
                email: true
              },
              company : "required",

            },
            // Specify validation error messages
            messages: {
              fname: "Please enter your firstname",
              lname: "Please enter your lastname",
              company:"Please enter company name",
              email: "Please enter a valid email address"
                },
                errorElement: "em",
                errorPlacement: function ( error, element ) {
                    // Add the `help-block` class to the error element
                    error.addClass( "help-block" );

                    // Add `has-feedback` class to the parent div.form-group
                    // in order to add icons to inputs
                    element.parents( ".col-sm-5" ).addClass( "has-feedback" );

                    if ( element.prop( "type" ) === "checkbox" ) {
                        error.insertAfter( element.parent( "label" ) );
                    } else {
                        error.insertAfter( element );
                    }

                    // Add the span element, if doesn't exists, and apply the icon classes to it.
                    if ( !element.next( "span" )[ 0 ] ) {
                        $( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
                    }
                },
                success: function ( label, element ) {
                    // Add the span element, if doesn't exists, and apply the icon classes to it.
                    if ( !$( element ).next( "span" )[ 0 ] ) {
                        $( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
                    }
                },
                highlight: function ( element, errorClass, validClass ) {
                    $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
                    $( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
                },
                unhighlight: function ( element, errorClass, validClass ) {
                    $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
                    $( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
                }
            } );
               $.ajax({
                url:  '<?php echo $const_website_url_account."/landlordedit"; ?>',
                type: 'post',
                data:{ 
                    submit:1, 
                    addMore:'<?php echo _request("addMore")?>', 
                    addMoreID:'<?php echo _request("addMoreID")?>',                 
                    user_id:'<?php echo _request("user_id")?>', 
                    lead_id:'<?php echo _request("lead_id")?>',
                    user_type_id:'<?php echo _request("user_type_id")?>',                               
                    name:document.getElementById('name').value, 
                    lname:document.getElementById('lname').value,   
                    company:document.getElementById('company').value,               
                    email:document.getElementById('email').value, 
                    phone:document.getElementById('phone').value,               
                    h_no:document.getElementById('h_no').value, 
                    street:document.getElementById('street').value,                 
                    city:document.getElementById('city').value, 
                    postcode:document.getElementById('postcode').value,
                    'return':'<?php echo _request('return')?>', 
                               
                },
                success: function(response){ 
                   if($.trim(response)==1){
                    swal("success!", "Landlord updated successfully! ", "success");

                   } 
                }
              });
        });


        $( document ).ready( function () {
            $( "#signupForm" ).validate( {
                rules: {
                    firstname: "required",
                    lastname: "required",
                    username: {
                        required: true,
                        minlength: 2
                    },
                    password: {
                        required: true,
                        minlength: 5
                    },
                    confirm_password: {
                        required: true,
                        minlength: 5,
                        equalTo: "#password"
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    agree: "required"
                },
                messages: {
                    firstname: "Please enter your firstname",
                    lastname: "Please enter your lastname",
                    username: {
                        required: "Please enter a username",
                        minlength: "Your username must consist of at least 2 characters"
                    },
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },
                    confirm_password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long",
                        equalTo: "Please enter the same password as above"
                    },
                    email: "Please enter a valid email address",
                    agree: "Please accept our policy"
                },
                errorElement: "em",
                errorPlacement: function ( error, element ) {
                    // Add the `help-block` class to the error element
                    error.addClass( "help-block" );

                    if ( element.prop( "type" ) === "checkbox" ) {
                        error.insertAfter( element.parent( "label" ) );
                    } else {
                        error.insertAfter( element );
                    }
                },
                highlight: function ( element, errorClass, validClass ) {
                    $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
                },
                unhighlight: function (element, errorClass, validClass) {
                    $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
                }
            } );
        } );
</script>


  
