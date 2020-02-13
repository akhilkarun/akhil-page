<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ESTAHUB</title>
<img src="images/icons/logo.png" class="center" alt="Logo" style="width:270px;height:90px;">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<style type="text/css">
.row-data{
    margin-left: 15px;
    border: 1px solid;
    padding: 10px;
    margin-top: 10px;
}

 #cover-spin {
    position:fixed;
    width:100%;
    left:0;right:0;top:0;bottom:0;
    background-color: rgba(255,255,255,0.7);
    z-index:9999;
    display:none;
}

@-webkit-keyframes spin {
	from {-webkit-transform:rotate(0deg);}
	to {-webkit-transform:rotate(360deg);}
}

@keyframes spin {
	from {transform:rotate(0deg);}
	to {transform:rotate(360deg);}
}

#cover-spin::after {
    content:'';
    display:block;
    position:absolute;
    left:48%;top:40%;
    width:40px;height:40px;
    border-style:solid;
    border-color:black;
    border-top-color:transparent;
    border-width: 4px;
    border-radius:50%;
    -webkit-animation: spin .8s linear infinite;
    animation: spin .8s linear infinite;
}
.row-data{
	display: none;	
}
		
</style>	
</head>
<body>
<div class="container-fluid">
   <div id="cover-spin"></div><form method="post">
	<span class="contact100-form-title">
	</span>

	<div class="wrap-input100 validate-input bg1" >
		<span class="label-input100">Post Code</span>
		<input class="input100" type="text" name="name" id="name" placeholder="Enter Post Code">
	</div>

	<div class="container-contact100-form-btn">
		<button class="contact100-form-btn btn-search" id="search" type="button" onclick="loadData()">
			<span>
				Search
				<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
			</span>
		</button>
		<br><br>
		
	</div>
</form>

<div class="result">
</div>
</div>
</body>
</html>
<script type="text/javascript">


function loadData(){
	if($('#name').val()!=''){
		event.preventDefault();
		$(".result").html(''); 
		$("#cover-spin").show();
		
		
			  $.ajax({
				 	type: "post",
				 	url: "result.php", 
				 	data:'name='+ $("#name").val()+"&search=1", 
		        success: function(result) { 
		                   $(".result").html(result);
		                   $(".row-data").each(function(){
		                   	id = this.id;
		                   	setTimeout(function(id){ 
			               		$("#"+id).show( "slow" );
			                   }, 2000,id);
		                   		
		                   });
		                   setTimeout(function(){ 
							$("#cover-spin").hide(); 
		                   }, 4000);
		            }
		        }); 
		
	}	 
       
}
</script>
