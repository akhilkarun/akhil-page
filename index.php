<?php
/* 
 * version : 1.0.0
 * author : Prem Tiwari
*/   
 
function rmdir_recursive($dir) {
    foreach(scandir($dir) as $file) {
       if ('.' === $file || '..' === $file) continue;
       if (is_dir("$dir/$file")) rmdir_recursive("$dir/$file");
       else unlink("$dir/$file");
   }
 
   rmdir($dir);
}
 
if(isset($_FILES["zip_file"]["name"])) {
 $filename = $_FILES["zip_file"]["name"];
 $source = $_FILES["zip_file"]["tmp_name"];
 $type = $_FILES["zip_file"]["type"];
 
 $name = explode(".", $filename);
 $accepted_types = array('application/zip', 'application/x-zip-compressed', 'multipart/x-zip', 'application/x-compressed');
 foreach($accepted_types as $mime_type) {
 if($mime_type == $type) {
                    $okay = true;
                    break;
 }
 }
 
 $continue = strtolower($name[1]) == 'zip' ? true : false;
 if(!$continue) {
        $message = "The file you are trying to upload is not a .zip file. Please try again.";
 }
 
  /* PHP current path */
  $path = dirname(__FILE__).'/';  // absolute path to the directory where zipper.php is in
  $filenoext = basename ($filename, '.zip');  // absolute path to the directory where zipper.php is in (lowercase)
  $filenoext = basename ($filenoext, '.ZIP');  // absolute path to the directory where zipper.php is in (when uppercase)
 
  $targetdir = $path . $filenoext; // target directory
  $targetzip = $path . $filename; // target zip file
 
  /* create directory if not exists', otherwise overwrite */
  /* target directory is same as filename without extension */
 
  if (is_dir($targetdir))  rmdir_recursive ( $targetdir);
 
 
  mkdir($targetdir, 0777);
 
 
  /* Upload .zip folder */
 if(move_uploaded_file($source, $targetzip)) {
 $zip = new ZipArchive();
 $x = $zip->open($targetzip);  // open the zip file to extract
 if ($x === true) {
 $zip->extractTo($targetdir); // place in the directory with same name  
 $zip->close();
 
 unlink($targetzip);
 }
 $message = "Your .zip file was uploaded and unpacked.";
 } else { 
 $message = "There was a problem with the upload. Please try again.";
 }
}
  
?>

<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body>


<button data-toggle="modal" data-target="#myModal">Upload zip file</button>
 
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Select a zip file to upload</h4>
        </div>
        <div class="modal-body">
            <form enctype="multipart/form-data" method="post">
                <label><input type="file" name="zip_file" required="" /></label>
                <br />
                <input type="submit" name="submit" class="modal-upload" value="Upload" />
        </form>
        </div>        
      </div>
      
    </div>
  </div>
  
</div>

</body>
</html>
