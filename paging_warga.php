<?php
//#Paging Menampilkan data warga
session_start();
include"koneksi.php";
$alamat=$_SERVER['PHP_SELF'];
$table="twarga";
if(isset($_POST['cari'])){
	$cari=$_POST['cari'];
	$_SESSION['cari']=$cari;
}

if(isset($_SESSION['cari'])){
	$cari=$_SESSION['cari'];
}
else{
	$cari="";
}
#Menampilkan jumlah data total
$sql= "select * from $table where nama like '%$cari%'";
$limit=10;
if(!isset($_GET['hal'])){
	$offset=0;
}
else{
	$offset=($_GET['hal']-1)*$limit;
}
$result=$conn->query($sql);
$jumlah=$result->num_rows;
echo"Jumlah warga $jumlah";
$totalhal=ceil($jumlah/$limit);
if($totalhal<1){
	$totalhal=1;
}

$sql1="select * from $table where nama like'%$cari%' 
order by nama limit $offset,$limit";
$result1=$conn->query($sql1);
echo"<h3> Data Warga Desa</h3>";
echo"<form method='POST' action='$alamat'>
<input type=text name='cari' value='$cari' 
placeholder='Masukan nama warga'>
<input type=submit value='Cari Data'>
</form>
";
#Kepala table
echo"<table width=100% border=1 >
<tr>
 <td>No</td>
 <td>NIK</td>
 <td>NAMA</td>
 <td>ALAMAT</td>
 <td>HP</td>
</tr>
";
 
if(!isset($_GET['hal'])){
	$_GET['hal']=0;
	$hal=1;
}
else{
	$hal=$_GET['hal'];
}
$k=($hal-1)*$limit+1;
if($result1->num_rows>0){
	while($d=$result1->fetch_assoc()){
	echo"<tr>
	<td>$k</td>
	<td>$d[nik]</td>
	<td>$d[nama]</td>
	<td>$d[alamat]</td>
	<td>$d[hp]</td>
	</td>
	";
	$k++;
	}
	
}
echo"</table>";

$prev=$_GET['hal'];
if($prev<=0){
	$pref=1;
}
echo"<a href=$alamat?hal=$prev>Prev</a>&nbsp;&nbsp;&nbsp;";
if($totalhal<=10){
	$th=$totalhal;
	$awal=1;
}
else{
	$th=$hal+1;
	$awal=$hal-9;
	if($awal<=1){
		$awal=1;
	}
}

for($i=$awal;$i<=$th;$i++){
	$hal=$i;
echo"<a href='$alamat?hal=$hal'>$i</a>&nbsp;&nbsp;&nbsp;";
}
$next=$_GET['hal']+1;
if($next>=$totalhal){
$next=$totalhal;
}
echo"<a href=$alamat?hal=$next>Next</a>&nbsp;&nbsp;&nbsp;";

?>