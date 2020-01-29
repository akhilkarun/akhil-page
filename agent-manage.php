<?php
require_once('../_resourceSettings/user.php');
include_once('includes/user-privileges.php');

// if(!_ifUser($const_user_agent) || (!_isManager() && !@in_array($const_privl_SF_manageStaffs,$userPrivileges))) exit();

	$usr = CMS::tables('users');
	
	if(_request('id')!='')
		$usr = 
		CMS::tables('user_clients')
		->join('user_acct_type','t1.user_id=t2.user_id and t2.user_type_id='.$const_user_agent.' and t2.manager_id='._request('id'))
		->leftJoin('user_staff','t1.user_id=t3.staff_id and t3.manager_id='._managerID())
		->leftJoin('user_password','t1.user_id=t4.user_id')
		->where('t1.user_id',_request('id'))
		->andWhere('t1.manager_id',_managerID());
	
	//If data posted
	if($_POST) {

		foreach($_POST as $key=> $value){
			_setRequest($key, $value!=''? $value:'');
		}
		
		$usr->validate(_request('name'),"null", "Please enter a valid name");
		$usr->validate(_request('password'),"password", "Please enter a valid password");
		if(_request('id')=='')
			$usr->validate(_request('email'),"email", "Please enter a valid email address");	
		
		if(_request('branch_id')!='') {
			if(
				!CMS::tables('branches')
				//->where('manager_id',_managerID())
				->andWhere('id','=',_requestInt('branch_id'))
				->first()->get()
			)
			$usr->validate('',"custom", "Please choose a valid branch");				
		}else{
			$usr->validate('',"custom", "Please choose a valid branch");
		}		
		$usr->validate(_request('phone'),"null", "Please enter a valid contact number");				
	
		if(!$usr->error) {
			
			//If  editing	
			if(_request('id')!='') {
				
				$usr
				->sanitize([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode','mobile' ])
				->update([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode','mobile' ]);
				
				_setRequest('user_id',_request('id'));		

				//Delete current staff location before updating
				CMS::tables('user_staff')
				->where('manager_id',_managerID())
				->andWhere('staff_id',_requestInt('id'))
				->delete();

				//If branch is available
				if(_request('branch_id')!='') {			
					CMS::tables('user_staff')
					->insert([						
						'staff_id'=>_request('user_id'),
						'manager_id'=>_managerID(),
						'branch_id'
					]);	
				}
				$fieldsArr = array();
				$rightmove_api = $gumtree_api = $zoopla_api =0;
				if(_request('rightmove_api')=='on'){
					$rightmoveset = CMS::tables('users')
									->Join('rightmove_api_files','t2.manager_id=t1.id')
									->Join('rightmove_api_settings','t3.manager_id=t1.id')
									->select(['t1.id'])
									->where('t1.id',_request('id'))
									->first()->get()['id'];
					$rightmove_api = ($rightmoveset!='')?1:0;	

					$fieldsArr[] = 'rightmove';			
				}
			   	if(_request('gumtree_api')=='on'){			
					$gumtreeset = CMS::tables('users')
									->Join('gumtree_api_settings','t2.manager_id=t1.id')
									->select(['t1.id'])
									->where('t1.id',_request('id'))
									->first()->get()['id'];	
					$gumtree_api = ($gumtreeset!='')?1:0;	
					$fieldsArr[] = 'gumtree';			
				}				
				if(_request('zoopla_api')=='on'){	
					$zooplaset = CMS::tables('users')
									->Join('zoopla_api_files','t2.manager_id=t1.id')
									->Join('zoopla_api_settings','t3.manager_id=t1.id')
									->select(['t1.id'])
									->where('t1.id',_request('id'))
									->first()->get()['id'];	
					$zoopla_api = ($zooplaset!='')?1:0;	
					$fieldsArr[] = 'zoopla';								
				}		

				CMS::tables('agent_addons_listing')
					->where('manager_id',_request('id'))
					->delete();	
					
				CMS::tables('agent_addons_listing')
				->insert([ 'manager_id'=>_request('id'),
							'gumtree'=>$gumtree_api,
							'zoopla'=>$zoopla_api, 
							'rightmove'=>$rightmove_api
						]);	

				$fields = implode($fieldsArr, ',');
				CMS::tables('agent_history')
				->insert([ 'manager_id'=>_managerID(),
							'agent_id'=>_request('id'),
							'action'=>2, 
							'fields'=>$fields,
							'event_date'=>date('Y-m-d h:i:s')
						]);	


			_redirect(_queryString($const_website_url_admin.'/agents',_allGETS()),[ 'success'=>"User Updated successfully "]);		


			}	
			else {
				
			//If  adding

				//if user exists in the database
				if(
					$user_id = 
					$usr
					->where('email',_request('email'))
					->select('id')
					->first()
					->get()['id']
				) {
					
					_setRequest('user_id',$user_id);
					
					$usr = 
					CMS::tables('user_clients')
					->where('user_id',$user_id)
					->andWhere('manager_id',_managerID());
					
					//if user exists under agent					
					if(
						$usr
						->first()
						->get()
					)
						$usr
						->sanitize([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode','mobile' ])
						->update([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode','mobile' ]);
					else
						CMS::tables('user_clients')
						->sanitize([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode','mobile' ])
						->insert([  
							'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode','mobile',						
							'user_id'=>$user_id,
							'manager_id'=>_managerID()
						]);
					
					if(
						!CMS::tables('user_acct_type')
						->where('user_id',$user_id)
						->andWhere('manager_id',$user_id)
						->andWhere('user_type_id',$const_user_agent)
						->first()
						->get()
					)
						CMS::tables('user_acct_type')
						->insert([ 'user_type_id'=>$const_user_agent, 'user_id'=>$user_id, 'manager_id'=>$user_id ]);					
				}
				else {
					
					_setRequest('user_id',
						CMS::tables('users')
						->sanitize([ 'name', 'lname', 'email', 'phone' ])
						->insert([ 'name', 'lname', 'email', 'phone' ])
					);
					
					CMS::tables('user_clients')
					->sanitize([ 'h_no', 'street', 'city', 'postcode','mobile' ])
					->insert([ 'manager_id'=>_managerID(), 'user_id','name', 'lname','phone', 'h_no', 'street', 'city', 'postcode','mobile' ]);
					
					CMS::tables('user_acct_type')
					->insert([ 'user_type_id'=>$const_user_agent, 'user_id', 'manager_id'=>_request('user_id') ]);

					CMS::tables('agent_history')
					->insert([ 'manager_id'=>_managerID(),
								'agent_id'=>_request('user_id'),
								'action'=>1, 
								'event_date'=>date('Y-m-d h:i:s')
							]);												
				}				
				
				//check whether password is set for the user
				if(
					!CMS::tables('user_password')
					->where('user_id',$user_id)
					->first()->get()
				) {

					$password  = md5("#"._request('password'));
					
					CMS::tables('user_password')
					->insert([ 'user_id', 'password'=>$password ]);
											
				}

				//If branch is available
				if(_request('branch_id')!='') {			
					CMS::tables('user_staff')
					->insert([						
						'staff_id'=>_request('user_id'),
						'manager_id'=>_managerID(),
						'branch_id'
					]);	
				}
				
				_redirect(_queryString($const_website_url_admin.'/agent-manage?id='._requestInt('user_id'),''),[ 'success'=>"User added successfully! You can enable Add-ons here"]);
			}
			
								
		}
		
	}
	
	
	if(_request('id')!=''){
		$usr
		->toRequest(
			$usr
			->select([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode', 'branch_id','mobile' ])
			->first()->get()
		);
		_setRequest('email',
					CMS::tables('users')->select('email')->where('id',_request('id'))->first()->get()['email']
				);	

		if(!CMS::tables('agent_addons_listing')
					->select('manager_id')
					->where('manager_id',_request('id'))
					->first()->get()['manager_id']
			){
				CMS::tables('agent_addons_listing')
				->insert([ 'manager_id'=>_request('id'),
							'gumtree'=>0,
							'zoopla'=>0, 
							'rightmove'=>0
						]);	
			}
		setcookie('user_manager_editID', _request('id'), time()+3600, "/"); 


		$rightmove = CMS::tables('agent_addons_listing')
					->leftJoin('users','t2.id=t1.manager_id')
					->Join('rightmove_api_files','t3.manager_id=t1.manager_id')
					->Join('rightmove_api_settings','t4.manager_id=t1.manager_id')
					->select(['rightmove'])
					->where('t1.manager_id',_request('id'))
					->where('t1.rightmove',1)
					->first()->get()['rightmove'];
		$gumtree = CMS::tables('agent_addons_listing')
					->leftJoin('users','t2.id=t1.manager_id')
					->Join('gumtree_api_settings','t3.manager_id=t1.manager_id')
					->select(['gumtree'])
					->where('t1.manager_id',_request('id'))
					->where('t1.gumtree',1)
					->first()->get()['gumtree'];
					
		$zoopla = CMS::tables('agent_addons_listing')
					->leftJoin('users','t2.id=t1.manager_id')
					->Join('zoopla_api_files','t3.manager_id=t1.manager_id')
					->Join('zoopla_api_settings','t4.manager_id=t1.manager_id')
					->select(['zoopla'])
					->where('t1.manager_id',_request('id'))
					->where('t1.zoopla',1)
					->first()->get()['zoopla'];						
					
		$readonly = 'readonly';
		
	}		
	
	?>	

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<?php 
	require_once('includes/head.php');
	?>
	<title><?php echo $const_website_title?> | Staff Management</title>

	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<?php 	
	require_once('includes/css.php');
	?>
	<link href="<?php echo $const_website_url_admin.'/css/admin.css' ?>" rel="stylesheet">
	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
	
</head>
<body class="hold-transition skin-blue">

	<div class="wrapper">

		<?php
		require_once('includes/sidebar.php');
		require_once('includes/header.php');	
		?>

		<div class="content-wrapper">

			<?php			
			_contentHeader("Admin Agent Management");
			?>	
			
			<section class="content">
			<div class="row">
			  
				<div class="col-sm-12">
				<div class="box">

					<?php 
					_formOpen();
					?>
				  
					<div class="box-header">
					<?php 
					$usr->showMsg();
					?>
					</div>
					
                    <div class="box-body">	
				<?php
			
		_tabOpen([			
			[	label=>"Details" ],						
		],[ prefix=>'main', 'class'=>'mainTab' ]);				
		
		_formOpen();
			//1 - Details
			_paneOpen();	
				
				_formGroup([
					[ "hidden", col=>1, id=>"id", value=>_request('id')],
					[ "text", col=>6, id=>"name", label=>"First Name", placeholder=>"Enter the first name" ,opts=>[className=>'ucfst']],
					[ "text", col=>6, id=>"lname", label=>"Last Name", placeholder=>"Enter the last name",opts=>[className=>'ucfst'] ],		
					[ "text", col=>6, id=>"email", label=>"Email Address", placeholder=>"Enter the email address", opts=>[ autocomplete=>'nope' ,$readonly ] ],
					[ "password", col=>6, id=>"password", label=>"Password", placeholder=>"Enter the password", opts=>[ autocomplete=>'nope' ,$readonly ] ],
					[ "select", col=>6, id=>"branch_id", label=>"Branch", placeholder=>'Choose a branch', dataSource=>CMS::tables('branches')->select(['t1.id value','CONCAT(title,", ",street,", ",city) title'])->get() ],
					[ "text", col=>6, id=>"h_no", label=>"House/Building No", opts=>[ autocomplete=>'nope' ,className=>'ucfst'] ],
					[ "text", col=>6, id=>"street", label=>"Street Address", placeholder=>"Street no/name", opts=>[ autocomplete=>'nope' ,className=>'ucfst'] ],
					[ "text", col=>6, id=>"city", label=>"Town/City", placeholder=>"County/Town/City", opts=>[ autocomplete=>'nope',className=>'ucfst' ] ],
					[ "text", col=>4, id=>"postcode", label=>"Postcode", opts=>[ autocomplete=>'nope' ] ],
					[ "text", col=>4, id=>"phone", label=>"Phone No", placeholder=>"Phone Number" ],
					[ "text", col=>4, id=>"mobile", label=>"Mobile No", placeholder=>"Mobile Number" ]
					
				]);


				if(_request('id')!=''){

					?>

					<div class="form-group">
						<div class="row1">
							<div class="col-sm-12">
								<h4>Add-ons:</h4>
							
							</div>
						</div>

						<div class="row1">
							<div class="col-sm-4">
								<label for="rightmove-chk">Right Move API : </label>
								<input type="checkbox" id="rightmove-chk" name="rightmove_api" <?php echo ($rightmove== 1 )? 'checked' :''?>  data-toggle="toggle" data-on="Enabled" data-off="Disabled"   data-toggle="toggle" data-onstyle="success" data-offstyle="danger">
							</div>
							<div class="col-sm-4">
								<label for="zoopla-chk">Zoopla API : </label>
								<input type="checkbox" id="zoopla-chk" name="zoopla_api" <?php echo $zoopla== 1 ? 'checked' :''?>  data-toggle="toggle" data-on="Enabled" data-off="Disabled"   data-toggle="toggle" data-onstyle="success" data-offstyle="danger">
							</div>
							<div class="col-sm-4">
								<label for="gumtree-chk">Gumtree API : </label>
								<input type="checkbox" id="gumtree-chk" name="gumtree_api" <?php echo $gumtree== 1 ? 'checked' :''?> data-toggle="toggle" data-on="Enabled" data-off="Disabled"   data-toggle="toggle" data-onstyle="success" data-offstyle="danger">
							</div>
						</div>
					</div>	
				<?php

				}

				?>
				

			<?php
			_paneEnd();	
											
					
			_tabEnd();		

			?>
				</div>	
			
				
				<div class="box-footer">						
				<button type="submit" class="btn btn-custom-primary pull-right">Submit</button>
				</div>
			<?php  	

			_formClose();
				
				?>

				
			</div>
			</section>
			
		</div>

		<?php
		require_once('includes/footer.php');
		?>  

	</div>

	<?php
    require_once("includes/reminders-pending.php");
	require_once('includes/js.php');
	?>

</body>
</html>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>	
<script type="text/javascript">

	$(function() {
	    $('#rightmove-chk').change(function() {
	      console.log($('#rightmove-chk').prop('checked'));
	      if($('#rightmove-chk').prop('checked')==true)
	     	 modalLoad('<?php echo $const_website_url_admin?>/rightmove-settings', {manager_id:'<?php echo _request('id'); ?>' } , 'modal-md');

	    });

	    $('#zoopla-chk').change(function() {
	      console.log($(this).prop('checked'));
	      if($(this).prop('checked')==true)
	     	 modalLoad('<?php echo $const_website_url_admin?>/zoopla-settings', {manager_id:'<?php echo _request('id'); ?>' } , 'modal-md');

	    });
	    $('#gumtree-chk').change(function() {
	      console.log($(this).prop('checked'));
	      if($(this).prop('checked')==true)
	     	 modalLoad('<?php echo $const_website_url_admin?>/gumtree-save', {manager_id:'<?php echo _request('id'); ?>' } , 'modal-md');

	    });

  })

setTimeout(function(){ TAB.init(); }, 200);
	
	
</script>