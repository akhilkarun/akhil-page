<?php
require_once('../_resourceSettings/user.php');
include_once('includes/user-privileges.php');

if(!_ifUser($const_user_agent) || (!_isManager() && !@in_array($const_privl_SF_manageStaffs,$userPrivileges))) exit();

	$usr = CMS::tables('users');
	
	if(_request('id')!='')
		$usr = 
		CMS::tables('user_clients')
		->join('user_acct_type','t1.user_id=t2.user_id and t2.user_type_id='.$const_user_agent.' and t2.manager_id='._managerID())
		->leftJoin('user_staff','t1.user_id=t3.staff_id and t3.manager_id='._managerID())
		->where('t1.user_id',_request('id'))
		->andWhere('t1.manager_id',_managerID());
	
	if(_request('submit')) {
		
		$usr->validate(_request('name'),"null", "Please enter a valid name");
		if(_request('id')=='')
			$usr->validate(_request('email'),"null", "Please enter a valid email address");	
		
		if(_request('branch_id')!='') {
			if(
				!CMS::tables('branches')
				->where('manager_id',_managerID())
				->andWhere('id','=',_requestInt('branch_id'))
				->first()->get()
			)
			$usr->validate('',"custom", "Please choose a valid branch");				
		}		
		$usr->validate(_request('phone'),"null", "Please enter a valid contact number");				
	
		if(!$usr->error) {
			
			//If  editing	
			if(_request('id')!='') {
				
				$usr
				->sanitize([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode' ])
				->update([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode' ]);
				
				//Delete current staff location before updating
				CMS::tables('user_staff')
				->where('manager_id',_managerID())
				->andWhere('staff_id',_requestInt('id'))
				->delete();
				
				//Delete current staff privileges before updating
				CMS::tables('user_privilege')
				->where('manager_id',_managerID())
				->andWhere('staff_id',_requestInt('id'))
				->delete();			

				_setRequest('user_id',_request('id'));				
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
						->sanitize([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode' ])
						->update([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode' ]);
					else
						CMS::tables('user_clients')
						->sanitize([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode' ])
						->insert([  
							'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode',						
							'user_id'=>$user_id,
							'manager_id'=>_managerID()
						]);
					
					if(
						!CMS::tables('user_acct_type')
						->where('user_id',$user_id)
						->andWhere('manager_id',_managerID())
						->andWhere('user_type_id',$const_user_agent)
						->first()
						->get()
					)
						CMS::tables('user_acct_type')
						->insert([ 'user_type_id'=>$const_user_agent, 'user_id'=>$user_id, 'manager_id'=>_managerID() ]);					
				}
				else {
					
					_setRequest('user_id',
						CMS::tables('users')
						->sanitize([ 'name', 'lname', 'email', 'phone' ])
						->insert([ 'name', 'lname', 'email', 'phone' ])
					);
					
					CMS::tables('user_clients')
					->sanitize([ 'h_no', 'street', 'city', 'postcode' ])
					->insert([ 'manager_id'=>_managerID(), 'user_id','name', 'lname','phone', 'h_no', 'street', 'city', 'postcode' ]);
					
					CMS::tables('user_acct_type')
					->insert([ 'user_type_id'=>$const_user_agent, 'user_id', 'manager_id'=>_managerID() ]);										
				}				
				
				//check whether password is set for the user
				if(
					!CMS::tables('user_password')
					->where('user_id',$user_id)
					->first()->get()
				) {
								
					_initPHPMailer();

					$newForgotCode = _generatePassword();
					$newReferCode  = md5("#".$newForgotCode);
					
					CMS::tables('user_password')
					->insert([ 'user_id', 'forgot_password_code'=>$newForgotCode ]);
					
					$usr = 
					CMS::tables('users')
					->where('id',_request('user_id'))
					->select([ 'CONCAT(name," ",lname) name', 'email' ])
					->first()->get();
								
					$mailer->SMTPDebug	= false;
					$mailer->setTo($usr["email"], $usr["name"]);
					$mailer->setFrom($const_website_email,$const_website_title);
					$mailer->Subject		= $const_website_title." - Set Your Password";
					$mailer->template		= _emailTempate("set-password.tpl");					
					$mailer->data["logo"]	= $const_logo_url;
					$mailer->data["name"]	= $usr["name"];
					$mailer->data["siteName"]= $const_website_title;					
					$mailer->data["url"]	= $const_website_url."/pwdReset/".$newReferCode;
					$mailer->Send();
					$mailer->clear();					
				}
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
			
			//Add/Update Staff privileges
			if($opts = CMS::tables("staff_privilege_options")->get()) {
				foreach($opts as $echO) {

					if(_request('staff_privilege_options_'.$echO["id"])==1)
						CMS::tables('user_privilege')
						->insert([						
							'staff_id'=>_request('user_id'),
							'manager_id'=>_managerID(),
							'staff_privilege_options_id'=>$echO["id"]
						]);							
				}
			}					
		}
		else
			$usr->showMsg();
	
		exit();
	}
	
	
	if(_request('id')!='')
		$usr
		->toRequest(
			$usr
			->select([ 'name', 'lname', 'phone', 'h_no', 'street', 'city', 'postcode', 'branch_id' ])
			->first()->get()
		);
	
	_modalHeader(((_request('id')=='')?'Add':'Edit')." Staff",'staffOutput');
	
	
	_formOpen();
	
		_tabOpen([			
			[	label=>"Details" ],						
			[	label=>"Privileges" ],
			[	label=>"ss" ]							
		],[ prefix=>'main', 'class'=>'mainTab' ]);				
		
			//1 - Details
			_paneOpen();	
				
				_formGroup([
					[ "text", col=>6, id=>"name", label=>"First Name", placeholder=>"Enter the first name" ],
					[ "text", col=>6, id=>"lname", label=>"Last Name", placeholder=>"Enter the last name" ],		
					(
						(_request('id')=='')?
						([ "text", col=>6, id=>"email", label=>"Email Address", placeholder=>"Enter the email address" ]):''
					),
					[ "select", col=>((_request('id')=='')?6:12), id=>"branch_id", label=>"Branch", placeholder=>'Choose a branch', dataSource=>CMS::tables('branches')->where('manager_id',_managerID())->select(['t1.id value','CONCAT(title,", ",street,", ",city) title'])->get() ],
					[ "text", col=>4, id=>"h_no", label=>"House/Building No", opts=>[ autocomplete=>'nope' ] ],
					[ "text", col=>8, id=>"street", label=>"Street Address", placeholder=>"Street no/name", opts=>[ autocomplete=>'nope' ] ],
					[ "text", col=>4, id=>"city", label=>"Town/City", placeholder=>"County/Town/City", opts=>[ autocomplete=>'nope' ] ],
					[ "text", col=>4, id=>"postcode", label=>"Postcode", opts=>[ autocomplete=>'nope' ] ],
					[ "text", col=>4, id=>"phone", label=>"Phone No", placeholder=>"Phone Number" ]			
				]);
		
			_paneEnd();	
		
			//2 - Privileges
			_paneOpen();
		
				if($priv = CMS::tables("staff_privilege")->get()) {
					foreach($priv as $echP) {
						if(
							$opts = 
							CMS::tables("staff_privilege_options")
							->leftJoin('user_privilege','t1.id=t2.staff_privilege_options_id and t2.staff_id='._requestInt('id').' and t2.manager_id='._managerID())
							->select([ 't1.id', 't1.title', 't2.staff_privilege_options_id' ])
							->where('t1.staff_privilege_id',$echP["id"])
							->get()
						) {
							
							?>

							<ul class="list-group">
								<li class="list-group-item list-group-item-primary"><strong><?php echo $echP["title"]?></strong></li>						
								<?php
								foreach($opts as $echO) {
									?>
									<li class="list-group-item">
									<label style="font-weight:normal">
										<input type="checkbox" id="staff_privilege_options_<?php echo $echO["id"]?>" <?php echo ($echO["staff_privilege_options_id"]!='')?'checked="checked"':''?> />
										<?php echo $echO["title"]?>
									</label>							
									</li>							
									<?php
								}
								?>
							</ul>
						
							<?php
						}
					}
				}
		
			_paneEnd();			
		_paneOpen();

			?>
			<button type="button" class="btn btn-info btn-pdf" onclick="fileSave()">Expiry Settings</button><br>

			<?php
		_paneEnd();				
			
		_tabEnd();		

	_formClose();
	
	
	_modalFooter([
		[ label=>"Cancel", btn=>"default", ico=>"close", opts=>[ 'data-dismiss'=>"modal" ] ],		
		[ label=>(_request('id')=='')?"Submit":"Update", btn=>"primary", ico=>"paper-plane", opts=>[ onclick=>"btnSubmit();" ] ]						
	]);
	
?>
<script type="text/javascript">

	function fileSave(){
    	modalLoad('<?php echo $const_website_url_account?>/doc-save', {document_id:'1' }, 'modal-sm');
     
    }

	setTimeout(function(){ TAB.init(); }, 200);
	
	function btnSubmit() {
		
		document.getElementById('staffOutput').innerHTML = '';
		ajaxLoad('<?php echo $const_website_url_account?>/staff/manage',
		{ 
			data:{ 
				submit:1, 
				id:'<?php echo _request("id")?>', 				
				name:document.getElementById('name').value, 
				lname:document.getElementById('lname').value, 				
				<?php echo ( _request("id")=='')?"email:document.getElementById('email').value,":''?> 
				phone:document.getElementById('phone').value, 				
				h_no:document.getElementById('h_no').value, 
				street:document.getElementById('street').value, 				
				city:document.getElementById('city').value, 
				postcode:document.getElementById('postcode').value, 
				branch_id:document.getElementById('branch_id').value
				<?php
				if($opts = CMS::tables("staff_privilege_options")->get()) {
					foreach($opts as $echO) {
						?>, 
						staff_privilege_options_<?php echo $echO["id"]?>:((document.getElementById('staff_privilege_options_<?php echo $echO["id"]?>').checked)?1:0)
						<?php
					}
				}				
				?>
			}, 
			fillHtml:'#staffOutput', callFtn:'ajaxSuccess' 
		}); 
	}

	function ajaxSuccess(res) {
		
		if(res=='') {
		
			showMsg('staffOutput','Staff <?php echo (_request('id')=='')?'created':'information updated'?> successfully. <?php echo (_request('id')=='')?'Your staff will soon receive a link to set his password.':''?>','success');			
			setTimeout(function(){ 
			
				hideModal(activeModal); 
				<?php
				if(_request("return")!='') {
					?>						
					window.location.href = "<?php echo urldecode(_request("return"));?>"; 
					<?php						
				}
				else {
					?>
					location.reload(); 
					<?php
				}						
				?>
				
			}, <?php echo (_request('id')=='')?'1900':'1000'?>);
		}
	}
</script>		