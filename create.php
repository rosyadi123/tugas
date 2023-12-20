<?php
   session_start();
   if(isset($_POST['submit'])) {
      require 'config.php';

      $insertOneResult = $collection_barang->insertOne([
         '_id' => $_POST['id'],
          'nama_barang' => $_POST['nama_barang'],
          'harga' => intval($_POST['harga']),
          'stock_barang' => intval($_POST['stock_barang']),
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
         <strong>id barang</strong>
         <input type="text" name="id" required="" class="form-control" placeholder="Masukkan id barang">
      </div>
      <div class="form-group">
         <strong>Nama barang</strong>
         <input type="text" name="nama_barang" required="" class="form-control" placeholder="Masukkan Nama barang">
      </div>
      <div class="form-group">
         <strong>Harga barang</strong>
         <input type="number" name="harga" required="" class="form-control" placeholder="Masukkan Harga barang">
      </div>
      <div class="form-group">
         <strong>Stock barang</strong>
         <input type="number" name="stock_barang" required="" class="form-control" placeholder="Masukkan stock barang">
      </div>
      <div class="form-group">
         <button type="submit" name="submit" class="btn btn-success">Submit</button>
      </div>
   </form>
</div>

</body>
</html>