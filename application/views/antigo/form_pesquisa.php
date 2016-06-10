	<div class="row">
	<!-- Inicio form -->
	<div class="col-md-12">
		<form class="form-horizontal" action="<? echo base_url();?>index.php/documento/salvarDocumento" method="post">
		<fieldset>

		<!-- Form Name -->
		<legend>Consulta de documento cadastrado</legend>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="tipo_documento">Tipo de documento:</label>  
		  <div class="col-md-4">
		  <input id="tipo_documento" name="tipo_documento" type="text" placeholder="" class="form-control input-md">
		    
		  </div>
		</div>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="ptr_correios">Protocolo Sec Correios:</label>  
		  <div class="col-md-4">
		  <input id="ptr_correios" name="ptr_correios" type="text" placeholder="" class="form-control input-md">
		    
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="assunto">Assunto:</label>  
		  <div class="col-md-6">
		  <input id="assunto" name="assunto" type="text" placeholder="" class="form-control input-md">
		    
		  </div>
		</div>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="origem">Origem:</label>  
		  <div class="col-md-6">
		  <input id="origem" name="origem" type="text" placeholder="" class="form-control input-md">
		    
		  </div>
		</div>

		<!-- Button set data -->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="submit">Operação</label>
		  <div class="col-md-4">
		    <button type="submit" class="btn btn-primary">Pesquisar dados</button>
		  </div>
		</div>

		</fieldset>
		</form>
	</div>
	</div>		