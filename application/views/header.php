<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Sistema de controle</title>
	<!-- jQuery -->
	<script src="<? echo base_url('public/js/jquery-1.11.2.min.js') ?>"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="<?php echo base_url('public/css/bootstrap.min.css')?>">
	<link rel="stylesheet" href="<?php echo base_url('public/css/bootstrap-theme.css')?>">

	<!-- Latest compiled and minified JavaScript -->
	<script src="<?php echo base_url('public/js/bootstrap.min.js')?>"></script>
	<!--<link rel="icon" type="image/png" sizes="192x192" href="<? //echo base_url('public/img/biticon.png') ?>">-->
	

	<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('public/dataTable/media/css/jquery.dataTables.css')?>">

	<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('public/css/custom.css')?>">
  
	<!-- jQuery -->
	<script type="text/javascript" src="<?php echo base_url('public/dataTable/media/js/jquery.js')?>"></script>
  
	<!-- DataTables -->
	<script type="text/javascript" src="<?php echo base_url('public/dataTable/media/js/jquery.dataTables.js')?>"></script>

	<!-- RGraph -->
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.common.core.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.common.annotate.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.common.context.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.common.tooltips.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.common.resizing.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.common.dynamic.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.bar.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('public/RGraph/libraries/RGraph.pie.js')?>"></script>

</head>
<body>
	<div class="container">
	<!-- Menu -->
	<div class="row">
		<div class="col-md-12">
			<ul class="nav nav-tabs">
				<li role="presentation"><?php echo anchor("/despesa/","Cadastro de Despesa")?></li>
				<li role="presentation"><?php echo anchor("/consulta/index","Consulta de despesa por mês")?></li>
				<li role="presentation"><?php echo anchor("login/logout","Sair")?></li>
			</ul>	
		</div>
	</div>
	<!-- Fim menu -->