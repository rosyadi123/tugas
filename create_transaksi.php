<?php
   session_start();
   if(isset($_POST['submit'])) {
      require 'config.php';

      $insertOneResult = $collection_transaksi->insertOne([
         '_id' => $_POST['id'],
          'customer_id' => $_POST['customer_id'],
          'barang_id' => $_POST['barang_id'],
          'quantity' => intval($_POST['quantity']),
          'tgl_transaksi' => $_POST['tgl_transaksi'],
      ]);


      $_SESSION['success'] = "Data Berhasil Ditambahkan";
      header("Location: index.php");
   }
?>


<!DOCTYPE html>
<html>
<head>
   <title>PHP & MongoDB - CRUD</title>
   <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>

<div class="container">
   <h1>Buat Data baru</h1>
   <a href="index.php" class="btn btn-primary">Kembali</a>
   <form method="POST">
      <div class="form-group">
         <strong>Transaksi id</strong>
         <input type="text" name="id" required="" class="form-control" placeholder="Masukkan id transaksi">
      </div>
      <div class="form-group">
         <strong>customer id</strong>
         <input type="text" name="customer_id" required="" class="form-control" placeholder="Masukkan Customer Id">
      </div>
      <div class="form-group">
         <strong>barang id</strong>
         <input type="text" name="barang_id" required="" class="form-control" placeholder="Masukkan Barang Id">
      </div>
      <div class="form-group">
         <strong>Jumlah Barang</strong>
         <input type="text" name="quantity" required="" class="form-control" placeholder="Masukkan Jumlah Barang">
      </div>
      <div class="form-group">
         <strong>Tanggal Transaksi</strong>
         <input type="date" name="tgl_transaksi" required="" class="form-control" placeholder="Masukkan Tanggal Transaksi">
      </div>
      <div class="form-group">
         <button type="submit" name="submit" class="btn btn-success">Submit</button>
      </div>
   </form>
</div>

</body>
</html>