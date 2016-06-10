<div class="row">
<!-- Inicio form -->
    <div class="col-md-12">
        <form class="form-horizontal" action="<?php echo base_url('index.php/consulta/despesaPorPeriodo/periodo')?>" method="post">
            <fieldset>
            <legend class="aling-center">Consulta de gastos</legend>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="p_despesa">Periodo de pagamento:</label>  
                    <div class="col-md-4">
                        <select id="periodo_despesa" name="periodo_despesa" class="form-control input-md">
                        <?php foreach ($periodoDePagamento -> result() as $periodo) { 
                            echo "<option value=" . $periodo->id . ">" . $periodo->mes . " - " . $periodo->ano . "</option>";
                            }?>
                        </select>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4">
                            <button id="singlebutton" type="submit" name="singlebutton" class="btn btn-primary">Pesquisar</button>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>