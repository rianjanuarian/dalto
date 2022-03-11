<?php 
session_start();
if (empty($_SESSION['username'])){
	echo "<script>alert('Anda belum mempunyai hak akses.'); window.location = '../index.html'</script>";	
} else {
	include "../koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Aplikasi Penggajian Karyawan">
    <meta name="author" content="Hakko Bio Richard">

    <title>Aplikasi Penggajian Karyawan</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <!-- Page Specific CSS -->
    <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
    
    <script type="text/javascript">
   function myFunction() {
  /* Get the text field */
  var copyText = document.getElementById("myInput");

  /* Select the text field */
  copyText.select();
  copyText.setSelectionRange(0, 99999); /* For mobile devices */

   /* Copy the text inside the text field */
  navigator.clipboard.writeText(copyText.value);

  /* Alert the copied text */
  alert("Copied the text: " + copyText.value);
}
// 1 detik = 1000
window.setTimeout("waktu()",1000);  
function waktu() {   
	var tanggal = new Date();  
	setTimeout("waktu()",1000);  
	document.getElementById("output").innerHTML = tanggal.getHours()+":"+tanggal.getMinutes()+":"+tanggal.getSeconds();
}
</script>
<script language="JavaScript">
var tanggallengkap = new String();
var namahari = ("Minggu Senin Selasa Rabu Kamis Jumat Sabtu");
namahari = namahari.split(" ");
var namabulan = ("Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desember");
namabulan = namabulan.split(" ");
var tgl = new Date();
var hari = tgl.getDay();
var tanggal = tgl.getDate();
var bulan = tgl.getMonth();
var tahun = tgl.getFullYear();
tanggallengkap = namahari[hari] + ", " +tanggal + " " + namabulan[bulan] + " " + tahun;

	var popupWindow = null;
	function centeredPopup(url,winName,w,h,scroll){
	LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
	TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
	settings ='height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
	popupWindow = window.open(url,winName,settings)
}
</script>
    
  </head>
  <body>
    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Aplikasi penggajian Karyawan</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="active"><a href="index.php"><i class="fa fa-dashboard"></i> Data Karyawan</a></li>
            <li><a href="tampilgajiaja.php"><i class="fa fa-bar-chart-o"></i> Data Gaji Karyawan</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right navbar-user">
            <!--<li class="dropdown messages-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">7</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">7 New Messages</li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">Hey there, I wanted to ask you something...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">Hey there, I wanted to ask you something...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">Hey there, I wanted to ask you something...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li><a href="#">View Inbox <span class="badge">7</span></a></li>
              </ul>
            </li>-->
            <!--<li class="dropdown alerts-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> Alerts <span class="badge">3</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Default <span class="label label-default">Default</span></a></li>
                <li><a href="#">Primary <span class="label label-primary">Primary</span></a></li>
                <li><a href="#">Success <span class="label label-success">Success</span></a></li>
                <li><a href="#">Info <span class="label label-info">Info</span></a></li>
                <li><a href="#">Warning <span class="label label-warning">Warning</span></a></li>
                <li><a href="#">Danger <span class="label label-danger">Danger</span></a></li>
                <li class="divider"></li>
                <li><a href="#">View All</a></li>
              </ul>
            </li>-->
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Hallo,
              <?php
              echo $_SESSION['username'];
               ?>
              <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-user"></i> Profil</a></li>
                <li><a href="#"><i class="fa fa-envelope"></i> Pesan Masuk <span class="badge">7</span></a></li>
                <li><a href="#"><i class="fa fa-gear"></i> Pengaturan </a></li>
                <li class="divider"></li>
                <li><a href="../logout.php" onclick="return confirm('Apakah anda akan keluar?');"><i class="fa fa-power-off"></i> Keluar </a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>
      <?php
// session_start();
$timeout = 10; // Set timeout minutes
$logout_redirect_url = "../index.html"; // Set logout URL

$timeout = $timeout * 60; // Converts minutes to seconds
if (isset($_SESSION['start_time'])) {
    $elapsed_time = time() - $_SESSION['start_time'];
    if ($elapsed_time >= $timeout) {
        session_destroy();
        echo "<script>alert('Session Anda Telah Habis!'); window.location = '$logout_redirect_url'</script>";
    }
}
$_SESSION['start_time'] = time();
?>
<?php } ?>
      <div id="page-wrapper">

        <div class="row">
          <div class="col-lg-12">
            <h1>Data Penggajian<small> Karyawan</small></h1>
            <table width="900">
            <tr>
            <td width="250"><div class="Tanggal"><h4><script language="JavaScript">document.write(tanggallengkap);</script></div></h4></td> 
            <td align="left" width="30"> - </td>
            <td align="left" width="620"> <h4><div id="output" class="jam" ></div></h4></td>
            </tr>
            </table>
            <br />
            <!--<div class="alert alert-success alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             Untuk cetak slip gaji silahkan klik tombol print..
          </div>-->
        </div><!-- /.row -->
<!--
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Traffic Statistics: October 1, 2013 - October 31, 2013</h3>
              </div>
              <div class="panel-body">
                <div id="morris-chart-area"></div>
              </div>
            </div>
          </div>
        </div>-->
        <!-- /.row -->
        <div class="col-lg-12">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-user"></i> Data Penggajian Karyawan </h3> 
              </div>
              <div class="panel-body">
                 <div class="table-responsive">
                    <?php
                    $tampil=mysqli_query($konek,"SELECT karyawan.kode_kar, karyawan.nama_kar, karyawan.no_rek, karyawan.gaji_utama, tb_gaji.kode_gaji, 
                    tb_gaji.uang_lembur,tb_gaji.sanksi, tb_gaji.total_gaji, tb_gaji.tgl_transfer, tb_gaji.jam_transfer FROM karyawan, tb_gaji WHERE karyawan.kary_id=tb_gaji.kary_id");
                    $total=mysqli_num_rows($tampil); ?>
                  <table class="table table-bordered table-hover table-striped tablesorter">
                  
                      <tr>
                        <th>Kode<i class="fa fa-sort"></i></th>
                        <th>Nama<i class="fa fa-sort"></i></th>
                        <th>Alamat Wallet <i class="fa fa-sort"></i></th>
                        <th>Kode Gaji <i class="fa fa-sort"></i></th>
                        <th>Gaji Utama <i class="fa fa-sort"></i></th>
                        <th>Uang_lembur <i class="fa fa-sort"></i></th>
                        <th>Sanksi <i class="fa fa-sort"></i></th>
                        <th>Take Home Pay <i class="fa fa-sort"></i></th>
                        <th>Tanggal Transfer <i class="fa fa-sort"></i></th>
                        <th>Jam Transfer <i class="fa fa-sort"></i></th>
                      </tr>
                     <?php while($data=mysqli_fetch_array($tampil))
                    { ?>
                    <tr>
                    <td><?php echo $data['kode_kar'];?></td>
                    <td><?php echo $data['nama_kar']; ?></a></td>
                    <td><input type="text" value="<?php echo $data['no_rek'];?>" id="myInput" readonly="readonly">
                    <button onclick="myFunction()">Copy text</button></td> 
                    <td><?php echo $data['kode_gaji']; ?></td>
                    <td>Rp.<?php echo number_format($data['gaji_utama'],2,",",".");?></td>
                    <td>Rp.<?php echo number_format($data['uang_lembur'],2,",",".");?></td>
                    <td>Rp.<?php echo number_format($data['sanksi'],2,",",".");?></td>
                    <td>Rp.<?php echo number_format($data['total_gaji'],2,",",".");?></td>
                    <td><?php echo $data['tgl_transfer'];?></td>
                    <td><?php echo $data['jam_transfer']; ?></td>
                    </tr>
                 <?php   
              }
              ?>
                   </tbody>
                   </table>
                   </div>
                <div class="text-right">
                  <!-- <a href="#" class="btn btn-sm btn-warning" onclick="window.print();return false"><i class="fa fa-print"></i> Cetak Data</a> -->
                  <a href="https://www.google.co.id/search?q=idr+to+eth&sxsrf=APq-WBvcTbVMMgSXy30ki5NvDKrpBkjZxQ%3A1646901730829&source=hp&ei=4rkpYoqkMITFmAXvxLzYCA&iflsig=AHkkrS4AAAAAYinH8vUD8mLc2eoGGxEuImn5e_-1wnKN&ved=0ahUKEwiKnZOFk7v2AhWEIqYKHW8iD4sQ4dUDCAY&uact=5&oq=idr+to+eth&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEMsBMgUIABDLATIFCAAQywEyBggAEBYQHjoECCMQJzoLCAAQgAQQsQMQgwE6BQguEIAEOggIABCABBCxAzoICAAQsQMQgwE6BQgAEIAEOggILhCABBCxAzoLCC4QgAQQsQMQgwE6CQgjECcQRhCCAjoICAAQFhAKEB5QBVj_GWCAHGgAcAB4AYABsAKIAZEIkgEHOS4xLjAuMZgBAKABAbABAA&sclient=gws-wiz" class="btn btn-sm btn-warning" ><i class="fa fa-exchange"> </i> Converter</a>
                  <a href="http://localhost:3000/" class="btn btn-sm btn-warning" ><i class="fa fa-credit-card"> </i> Transfer</a>
                 
              
                </div>
              </div> 
            </div>
          </div>
        </div><!-- /.row --> 

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

    <!-- Page Specific Plugins -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>
    <script src="js/morris/chart-data-morris.js"></script>
    <script src="js/tablesorter/jquery.tablesorter.js"></script>
    <script src="js/tablesorter/tables.js"></script>

  </body>
</html>
