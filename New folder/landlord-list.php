<?php
require_once('../_resourceSettings/user.php');
include_once('includes/user-privileges.php');

if(_ifUser($const_user_agent)) {
    //LANDLORDS
				
   
					
        if(_request("user_id")!='')
            CMS::tables('user_acct_type')
            ->where('user_id',_requestInt("user_id"))
            ->andWhere('manager_id',_managerID())
            ->andWhere('user_type_id',$const_user_landlord)
            ->delete();	
        
        if(_request("lead_id")!='') {
            
            //remove notes related to lead
            $activity_id = 
            CMS::tables('activity_lead')
            ->join('leads','t1.lead_id=t2.id')
            ->join('notes','t1.activity_id=t3.activity_id')						
            ->where('t1.lead_id',_requestInt('lead_id'))
            ->andWhere('t2.manager_id',_managerID())
            ->select(['t1.activity_id'])
            ->get();
            
            if($activity_id)
                foreach($activity_id as $act) 						
                    CMS::tables('activity')
                    ->where($act['activity_id'])
                    ->andWhere('manager_id',_managerID())
                    ->delete();						
            
            CMS::tables('leads')
            ->where(_requestInt("lead_id"))
            ->andWhere('manager_id',_managerID())
            ->delete();				
        }			
        

        
		// LANDLORD	LIST
		
			$lord =	
			CMS::tables('users')
			->join('user_clients','t2.user_id=t1.id and t2.manager_id='._managerID())
			->join('user_acct_type','t2.user_id=t3.user_id and t3.user_type_id="'.$const_user_landlord.'" and t3.manager_id='._managerID())			
			->select([ 
			't1.id user_id', "'' lead_id", 't2.company', 't1.email', 't2.phone', 't2.street', 't2.city', 't2.postcode', 
			'
			CASE  
				WHEN CONCAT(t2.name,t2.lname)=""    
				THEN t2.company 
				ELSE CONCAT(t2.name," ",t2.lname,CASE WHEN t2.company="" THEN "" ELSE CONCAT(", ",t2.company) END)
			END name'
			]);

			$lordLD =	
			CMS::tables('leads')
			->join('lead_acct_type','t1.id=t2.lead_id and t2.user_type_id="'.$const_user_landlord.'" and t2.manager_id='._managerID())			
			->select([ 
			"'' user_id", 't1.id lead_id', 't1.company', 't1.email', 't1.phone', 't1.street', 't1.city', 't1.postcode', 
			'
			CASE  
				WHEN CONCAT(t1.name,t1.lname)=""    
				THEN t1.company 
				ELSE CONCAT(t1.name," ",t1.lname,CASE WHEN t1.company="" THEN "" ELSE CONCAT(", ",t1.company) END)
			END name'			
			]);
			
			$lrd = CMS::unionAll([$lord,$lordLD]);
			
			$lrd_search = '';
			if($_REQUEST["lrd_search"]) {
				$lrd_search = " ( 
					LOWER(name) LIKE '%".strtolower(_requestText('lrd_search'))."%' or 
					LOWER(company) LIKE '%".strtolower(_requestText('lrd_search'))."%' or 				
					LOWER(email) LIKE '%".strtolower(_requestText('lrd_search'))."%' or 	
					LOWER(phone) LIKE '%".strtolower(_requestText('lrd_search'))."%' or 
					LOWER(street) LIKE '%".strtolower(_requestText('lrd_search'))."%' or 					
					LOWER(city) LIKE '%".strtolower(_requestText('lrd_search'))."%' or 	
					LOWER(postcode) LIKE '%".strtolower(_requestText('lrd_search'))."%'  				
				) 
				";
			}				
			
			$lrd
			->condition("$lrd_search")
			->orderBy(
				((_request('lrd_sortBy'))?_requestText('lrd_sortBy'):"name"),
				((_request('lrd_sortType'))?_requestText('lrd_sortType'):"asc")
            );
			//->paginate($const_account_pageLimit,'lrd');
    
    }  

//LANDLORDS
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bootstrap Material Admin by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css">
    <link rel="stylesheet" href="css/sweetalert.css">
    
    <!--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.material.min.css"> -->

    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
     <style>
         .mdl-grid{
            width: 100%;
         }
         .mdl-data-table td, .mdl-data-table th {
              text-align: left; 
         }
     </style>   
</head>

<body>
    <div class="page">
        <!-- Main Navbar-->
        <header class="header">
            <nav class="navbar">
                <!-- Search Box-->
                <div class="search-box">
                    <button class="dismiss"><i class="icon-close"></i></button>
                    <form id="searchForm" action="#" role="search">
                        <input type="search" placeholder="What are you looking for..." class="form-control">
                    </form>
                </div>
                <div class="container-fluid">
                    <div class="navbar-holder d-flex align-items-center justify-content-between">
                        <!-- Navbar Header-->
                        <div class="navbar-header">
                            <!-- Navbar Brand -->
                            <a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                            <div class="brand-text d-none d-lg-inline-block"><span>Lettings of London</div>
                                <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                            </a>
                            <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                        </div>
                        <!-- Navbar Menu -->
                        <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                            <!-- Search-->
                            <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                            <!-- Notifications-->
                            <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                                <ul aria-labelledby="notifications" class="dropdown-menu">
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                <div class="notification-time"><small>10 minutes ago</small></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a>
                                    </li>
                                </ul>
                            </li>
                            <!-- Messages                        -->
                            <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
                                <ul aria-labelledby="notifications" class="dropdown-menu">
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a>
                                    </li>
                                </ul>
                            </li>
                            <!-- Languages dropdown    -->
                            <li class="nav-item dropdown">
                                <a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>
                                <ul aria-labelledby="languages" class="dropdown-menu">
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2">German</a>
                                    </li>
                                    <li>
                                        <a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- Logout    -->
                            <li class="nav-item">
                                <a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="page-content d-flex align-items-stretch">
            <!-- Side Navbar -->
            <nav class="side-navbar">
                <!-- Sidebar Header-->
                <!-- <div class="sidebar-header d-flex align-items-center">
                     -->
                <!-- Sidebar Navidation Menus  <span class="heading">Main</span>-->
                <ul class="list-unstyled">
                    <li class="active">
                        <a href="index.html"> <i class="icon-home"></i>Home </a>
                    </li>
                    <li>
                        <a href="http://192.168.1.251/lettingsoflondon/public/account/?tab=tenants"> <i class="icon-padnote"></i>Applicants </a>
                    </li>
                    <li>
                        <a href="http://192.168.1.251/lettingsoflondon/public/account/?tab=tenants"> <i class="fa fa-bar-chart"></i>Landlords </a>
                    </li>
                    <li>
                    <a href="#propertydropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Properties </a>
                        <ul id="propertydropdownDropdown" class="collapse list-unstyled ">
                            <li><a href="http://192.168.1.251/lettingsoflondon/public/account/property?detailview=1">List Property</a></li>
                            <li><a href="http://192.168.1.251/lettingsoflondon/public/account/property/add?type=residential-sales&detailview=1">Add a New Property</a></li>
                            <li><a href="http://192.168.1.251/lettingsoflondon/public/account/property-certificates">Property Certificates</a></li>
                            <li><a href="http://192.168.1.251/lettingsoflondon/public/account/property-certificates">Property Inventory</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Appointments </a>
                        <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                            <li><a href="#">Page</a></li>
                            <li><a href="#">Page</a></li>
                            <li><a href="#">Page</a></li>
                        </ul>
                    </li>
                    <li>
                    <a href="#tenancydropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Tenancies </a>
                        <ul id="tenancydropdownDropdown" class="collapse list-unstyled ">
                            <li><a href="#">Tenancies</a></li>
                            <li><a href="#">Tenants</a></li>
                        </ul>
                    </li>
                    <li>
                    <a href="#docdropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Documents/Templates </a>
                        <ul id="docdropdownDropdown" class="collapse list-unstyled ">
                            <li><a href="#">Document Templates</a></li>
                            <li><a href="#">Documents</a></li>
                        </ul>
                    </li>
                    <li>
                    <a href="#reportdropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Accounts </a>
                        <ul id="reportdropdownDropdown" class="collapse list-unstyled ">
                            <li><a href="#">Invoices</a></li>
                            <li><a href="#">Expenses</a></li>
                            <li><a href="#">Invoice Profiles</a></li>
                        </ul>
                    </li>
                </ul><span class="heading">Tools</span>
                <ul class="list-unstyled">
                    <li>
                        <a href="#"> <i class="icon-flask"></i>Configuration </a>
                    </li>
                    <li>
                        <a href="#"> <i class="icon-screen"></i>My Profile </a>
                    </li>
                    <li>
                        <a href="#"> <i class="icon-screen"></i>Staff Management </a>
                    </li>
                    <li>
                        <a href="#"> <i class="icon-mail"></i>Task </a>
                    </li>
                    <li>
                        <a href="#"> <i class="icon-picture"></i>Messages </a>
                    </li>
                </ul>
            </nav>
            <div class="content-inner">
                <!-- Page Header-->
                <header class="page-header">
                    <div class="container-fluid">
                        <h2 class="no-margin-bottom">Landlords</h2>
                    </div>
                </header>
               <br>
                <div class="col-lg-12">
                  <div class="card">
                        <div class="card-body">
                        <div class ="clear-fix"></div>
                      <div class="table-responsive dataTables_wrapper form-inline dt-material">     
                        <button type="button" class="btn btn-link exm-modal" data-toggle="modal"  data-target="#exampleModal"><span class="fa fa-plus"></span> New Landlord</button>
                        <table id="dtBasicExample" class="table table-hover order-column mdl-data-table" width="100%">  
                            <thead>
                                <tr>
                                <th>#</th>
                                <th> Name</th>
                                <th> Email</th>
                                <th> Phone </th>
                                <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php 
                            $landlords = $lrd->get();
                            //echo "<pre>"; print_r($landlords); exit;
                            foreach($landlords as $landlord){
                                ?>
                                    <tr>
                                        <th scope="row"> <div class="i-checks">
                                            <input id="checkboxCustom1" type="checkbox" value="" class="checkbox-template">
                                            
                                            </div>
                                        </th>
                                            <td><?php echo $landlord['name']; ?> </td>
                                            <td><?php echo $landlord['email']; ?> </td>
                                            <td> <?php echo $landlord['phone']; ?> </td>
                                            <td> 
                                            <a data-toggle="modal" class="exm-modal" data-target="#exampleModal" data-id="<?php echo $landlord['user_id']; ?>"><i class="fa fa-edit" ></i></a>

                                                <i class="fa fa-trash"></i>
                                             </td>
                                    </tr>
                                    
                                <?php
                                }
                                ?>
                            </tbody>
                            </table>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Page Footer-->
                <footer class="main-footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <p>Your company &copy; 2017-2019</p>
                            </div>
                            <div class="col-sm-6 text-right">
                                <p>Design by <a href="https://bootstrapious.com/p/admin-template" class="external">Bootstrapious</a></p>
                                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </div>

    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">New Landlord</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                              
                    </div>
                  </div>
            </div>
     </div>
    
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js">
    </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js">
    </script>

    <!-- <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script> -->

    <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.material.min.js"></script>

    <!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.jqueryui.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src=" https://cdn.datatables.net/responsive/2.2.3/js/responsive.jqueryui.min.js"></script>
   -->
    <!-- Main File-->
    <script src="js/front.js"></script>
</body>
</html>
<script type="text/javascript">
   $(document).ready(function() {
       console.log("here");
    $('#dtBasicExample').DataTable( {
        columnDefs: [
            {
                targets: [ 0, 1, 2 ],
                className: 'mdl-data-table__cell--non-numeric'
            }
        ]
    } );
} );

   $(document).ready(function(){

     $('.exm-modal').click(function(){
       
       var userid = $(this).attr('data-id');

       // AJAX request
       $.ajax({
        url: '<?php echo $const_website_url_account."/landlordedit"; ?>',
        type: 'post',
        data: {user_id: userid,user_type_id:'2'},
        success: function(response){ 
          // Add response in Modal body
          $('.modal-body').html(response);

          // Display Modal
         // $('#exampleModal').modal('show'); 
        }
      });
     });

    
  });
   
</script>