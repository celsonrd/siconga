<div class="row">
<!-- Inicio form -->
	<div class="col-md-12">
		<form class="form-horizontal" action="<? echo base_url();?>index.php/despesa/salvarDespesa" method="post">
			<fieldset>
				<legend>Cadastro de despesas</legend>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="data_despesa">Data da despesa:</label>  
	  					<div class="col-md-4">
	  						<input id="data_despesa" name="data_despesa" type="text" placeholder="DD/MM/AAAA" class="form-control input-md" required>
	  					</div>
					</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="categoria">Origem:</label>  
	  					<div class="col-md-4">
	  						<select id="origem" name="origem" class="form-control input-md" required>
	  							<?php 
	  									foreach ($origens -> result() as $linha) {
	  							 			echo'<option value="' . $linha->id . '">'. $linha->descricao . '</option>';
	  									}
	  								?>
							</select>
	  					</div>
					</div>	
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="estabelecimento">Estabelecimento:</label>  
	  					<div class="col-md-4">
	  						<input id="estabelecimento" name="estabelecimento" require value="" type="text" placeholder="" class="form-control input-md" required>
	  					</div>
					</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="descricao">Descrição:</label>  
	  					<div class="col-md-4">
	  						<input id="descricao" name="descricao" type="text" placeholder="O que foi comprado?" class="form-control input-md" required> 
	  					</div>
					</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="qnt_parcela">Quantidade de parcelas:</label>  
	  					<div class="col-md-4">
	  						<input id="qnt_parcela" name="qnt_parcela" type="number" placeholder="" min="0" class="form-control input-md">
	  					</div>
					</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="responsavel">Responsável:</label>  
	  					<div class="col-md-4">
	  					<?php foreach ($responsavel -> result() as $linha) { ?>
	  						<label><input type="checkbox" name="responsavel[]" value="<?php echo $linha->id; ?>"> - <?php echo $linha->nome; ?></label><br/>
	  					<? } ?>
	  					</div>
	  				</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="valor">Valor:</label>  
	  						<div class="col-md-4">
	  							<input id="valor" name="valor" type="text" placeholder="Exemplo 45.89" class="form-control input-md" required>
	  						</div>
					</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="categoria">Categoria:</label>  
	  						<div class="col-md-4">
	  							<select id="categoria" name="categoria" class="form-control input-md" required>
	  								<?php 
	  									foreach ($categoria -> result() as $linha) {
	  							 			echo'<option value="' . $linha->id . '">'. $linha->descricao . '</option>';
	  									}
	  								?>
								</select>
							</div>
					</div>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="periodo_de_pagamento">Período de pagamento:</label>  
	  						<div class="col-md-4">
	  							<select id="periodo_de_pagamento" name="periodo_de_pagamento" class="form-control input-md" required>
	  								<?php 
	  									foreach ($periodoDePagamento -> result() as $linha) {
	  							 			echo'<option value="' . $linha->id . '">'. $linha->mes . ' - '   . $linha->ano . '</option>';
	  									}
	  								?>
								</select>
							</div>
					</div>					
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="submit"></label>
	  						<div class="col-md-4">
	    						<button type="submit" class="btn btn-primary">Salvar dados</button>
	  						</div>
					</div>
			</fieldset>
		</form>
	</div>
</div>	