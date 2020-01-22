<?php

require_once('../_resourceSettings/user.php');
include_once('includes/user-privileges.php');

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


echo $source;

$jks=$p12=$pem=false;

 $zip = zip_open($source);

if ($zip) {
  while ($zip_entry = zip_read($zip)) {
    $insidefilename = zip_entry_name($zip_entry);

    $fname = explode(".", $insidefilename);
  
    if($fname[1]=='jks')
      $jks = true;
    elseif($fname[1]=='p12')
      $p12 = true;
    elseif($fname[1]=='pem')
      $pem = true;

    // Open directory entry for reading
   
  echo "</p>";
  }
zip_close($zip);

}


if($jks==true && $p12== true && $pem== true)
echo "sucs";
else
echo "not suppoted";
  exit;
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

 exit;
}

  
?>


        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Select a zip file to upload</h4>
        </div>
        <div class="modal-body">
            <form enctype="multipart/form-data" method="post" action="<?php echo $const_website_url_account.'/doc-save'?> ">
                <label><input type="file" name="zip_file" required="" /></label>
                <br />
                <input type="submit" name="submit" class="modal-upload" value="Upload" />
        </form>
        </div>        
     

