<div class="row">
	<div class="col-md-12">
		<table class="table table-bordered">
			<thead>
				<th>ID</th>
				<th>Data do documento</th>
				<th>Data de recebimento</th>
				<th>Tipo de documento</th>	
				<th>Número</th>	
				<th>Origem</th>	
				<th>Assunto</th>	
				<th>Protocolo Correios</th>	
				<th>Protocolista</th>	
			</thead>
		</tr>
			<? foreach($consulta -> result() as $linha): ?>
		<tr>
			<td><? echo $linha->id ?></td>
			<? $linha->data_documento = date('d/m/Y',strtotime($linha->data_documento)); ?>
			<td><? echo $linha->data_documento ?></td>
			<? $linha->data_recebimento = date('d/m/Y',strtotime($linha->data_recebimento)); ?>
			<td><? echo $linha->data_recebimento ?></td>
			<td><? echo $linha->tipo_documento ?></td>
			<td><? echo $linha->numero ?></td>
			<td><? echo $linha->origem ?></td>
			<td><? echo $linha->assunto ?></td>
			<td><? echo $linha->protocolo_correios ?></td>
			<td><? echo $linha->protocolista ?></td>
		</tr>
			<? endforeach; ?>
		</table>
	</div>
</div>