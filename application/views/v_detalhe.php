<div class="row">
	<div class="col-md-12">
		<h2 class="text-uppercase text-center">detalhe individual</h2>
	</div>
	<div class="col-md-12">
		<table class="table table-striped">
  			<tbody>
    			<tr>
			      <td><strong>ID:</strong></td>
			      <td><?php echo $despesa[0]->id?></td>
			      <td><strong>Data da despesa:</strong></td>
			      <td><?php echo $despesa[0]->data_despesa?></td>
    			</tr>
    			<tr>
			      <td><strong>Origem:</strong></td>
			      <td><?php echo $despesa[0]->desc_origem?></td>
			      <td><strong>Estabelecimento:</strong></td>
			      <td><?php echo $despesa[0]->estabelecimento?></td>
			    </tr>
			    <tr>
			      <td><strong>Descrição:</strong></td>
			      <td><?php echo $despesa[0]->desc_despesa?></td>
			      <td><strong>Quantidade de parcelas:</strong></td>
			      <td><?php echo $despesa[0]->quantidade_parcelas?></td>
			    </tr>
			      <td><strong>Responsavel:</strong></td>
			      <td><?php echo $despesa[0]->nome_resp?></td>
			      <td><strong>Valor:</strong></td>
			      <td><?php echo $despesa[0]->valor?></td>
			    <tr>
			      <td><strong>Categoria:</strong></td>
			      <td><?php echo $despesa[0]->desc_cat?></td>
			      <td><strong>Período de pagamento:</strong></td>
			      <td><?php echo $despesa[0]->mes . " - " . $despesa[0]->ano?></td>		      
			    </tr>

		  	</tbody>
		</table>
	</div>
</div>
