<?php
include "../koneksi.php";
$kary_id            = $_POST['kary_id'];
$kode_kar           = $_POST['kode_kar'];
$nama_kar 		    = $_POST['nama_kar'];
$alamat_kar 	    = $_POST['alamat_kar'];
$no_rek 	        = $_POST['no_rek'];
$gaji_utama 	    = $_POST['gaji_utama'];


$query = mysqli_query($konek,"INSERT INTO karyawan (kary_id, kode_kar, nama_kar, alamat_kar, no_rek, gaji_utama ) VALUES ('$kary_id', '$kode_kar', '$nama_kar', '$alamat_kar', '$no_rek', '$gaji_utama')");
if ($query){
	echo "<script>alert('Data Karyawan Berhasil dimasukan!'); window.location = 'index.php'</script>";	
} else {
	echo "<script>alert('Data Karyawan Gagal dimasukan!'); window.location = 'index.php'</script>";	
}
?>