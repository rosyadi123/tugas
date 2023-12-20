<?php
	require_once __DIR__ . "/vendor/autoload.php";

	$collection_barang = (new MongoDB\Client)->rosadi->barang;
	$collection_customer = (new MongoDB\Client)->rosadi->customer;
	$collection_transaksi = (new MongoDB\Client)->rosadi->transaksi;
?>