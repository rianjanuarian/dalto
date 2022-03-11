<?php
$konek= mysqli_connect("localhost:3307","root","");
mysqli_select_db($konek,"gajian");

//fungsi format rupiah 
function format_rupiah($rp) {
	$hasil = "Rp." . number_format($rp, 0, "", ".") . ",00";
	return $hasil;
}
?>
