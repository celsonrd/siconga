<div class="row">
<!-- Inicio form -->
<div class="col-md-12">
	<div class="col-md-12">
		<form class="form-horizontal" action="<? echo base_url();?>index.php/responsavel/salvarResponsavel" method="post">
			<fieldset>
				<legend>Cadastro de responsavel</legend>
					<div class="form-group">
	  					<label class="col-md-4 control-label" for="responsavel">Responsavel:</label>  
	  					<div class="col-md-4">
	  						<input id="responsavel" name="responsavel" type="text" placeholder="" class="form-control input-md">
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