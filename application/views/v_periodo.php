<script type="text/javascript">

$.extend( $.fn.dataTable.defaults, {
    searching: false,
    ordering:  true
} );

$(document).ready(function() {
    $('table.display').dataTable({
      paginate:false,
      //"ordering": false,
      //"order": [[ 3, "desc" ]]

    });
} );

</script>

<?php

// Result do banco
$todasAsDespesas = $todasAsDespesas->result();
?>
<?php 
$valorCelson = 0;
$valorCris = 0;


for ($i=0; $i < count($todasAsDespesas); $i++) { 
  
  if ($todasAsDespesas[$i]->responsavel == 'Celson Rodrigues') {
    $valorCelson = $valorCelson + $todasAsDespesas[$i]->valor;
  } if ($todasAsDespesas[$i]->responsavel == 'Crislaine Souza') {
    $valorCris = $valorCris + $todasAsDespesas[$i]->valor;
  }
}
?>
<!-- Quadro para navegacao de meses -->
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <div class="col-md-4 col0-md-offset-4">
    <? $back = $todasAsDespesas[0]->idPeriodo ?>
    <?php echo anchor("consulta/despesaPorPeriodo/".--$back, "<button type='button' class='btn btn-block btn-primary'>Mes Anterior</button>");?>
  </div>
  <div class="col-md-4">
    <?php echo "<button type='button' class='btn btn-block btn-success'>" . $todasAsDespesas[0]->mes . " " . $todasAsDespesas[0]->ano . "</button>";?>
  </div>
  <div class="col-md-4">
    <? $next = $todasAsDespesas[0]->idPeriodo ?>
    <?php echo anchor("consulta/despesaPorPeriodo/".++$next, "<button type='button' class='btn btn-block btn-primary'>Proximo Mes</button>");?>
  </div>
  </div>
</div>


<!-- Quadro de resumo por pessoa -->
<div class="row">
  <div class="col-md-4">
    <h3 class="text-center">Quadro de resumo de dividas</h3>
    <table id="" class="display compact" cellspacing="0" width="100%">
      <thead>
        <th>Responsavel</th>
        <th>Valor</th>
      </thead>
    <tbody>
      <tr>
        <td>Celson Rodrigues</td>
        <td><?php echo $valorCelson?></td>
      </tr>
      <tr>
        <td>Crislaine Souza</td>
        <td><?php echo $valorCris?></td>
      </tr>
    </tbody>
    </table>
  </div>

<!-- Grafico de evolucao -->
    <div class="col-md-8" >
      <h1>Geral</h1>
      <!--<canvas id="graph" width="200" height="300">[No canvas support]</canvas> -->
    </div>    
</div>


<!-- INICIO DO GRAFICO DE PIZZA -->
<div class="row">
  <div class="col-md-6">
     <h1 class="text-center">Detalhamento de Gastos Celson</h1>
    <canvas id="cvs3" width="600" height="400">[No canvas support]</canvas>
  </div>
  
  <div class="col-md-6">
    <h1 class="text-center">Detalhamento de Gastos Cris</h1>
    <canvas id="graphPieCris" width="600" height="400">[No canvas support]</canvas>
  </div>
</div>

<!-- FIM DO GRAFICO DE PIZZA -->

<!-- Inicio do detalhamento dos pagamentos por origem -->
<div class="row">
  <div class="col-md-12">
    <h3 class="text-center">Pagamento por boleto</h3>
  </div>  
</div>

    <table id="" class="display compact" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>Origem</th>
          <th>Estabelecimento</th>
          <th>Descrição da despesa</th>
          <th>Parcela</th>
          <th>Responsavel</th>
          <th>Valor</th>
          <th class="text-center">Vis. / Exc.</th>  
        </tr>
      </thead>
        <tbody>
          
<?php
$totalCelson = 0;
$totalCris = 0;

// for para popular a datatable
for ($i=0; $i < count($todasAsDespesas); $i++) { 
  
  // switch para recolher a origem
  switch ($todasAsDespesas[$i]->origem) {
    case 'Boleto Avulso': ?>
          <tr>
            <td><? echo $todasAsDespesas[$i]->origem; ?></td>
            <td><? echo $todasAsDespesas[$i]->estabelecimento; ?></td>
            <td><? echo $todasAsDespesas[$i]->nomeDespesa; ?></td>
            <td><? echo $todasAsDespesas[$i]->quantidade_parcelas; ?></td>
            <td><? echo $todasAsDespesas[$i]->responsavel; ?></td>
            <td><? echo "R$ " . $todasAsDespesas[$i]->valor; ?></td>
            <td class="text-center">
            <? 
              echo anchor("consulta/detalheDespesa/".$todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-eye-open"</span>');
              echo "  ";
              echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-remove"</span>');
              ?>
            </td>
            <?php

            if ($todasAsDespesas[$i]->responsavel == 'Celson Rodrigues') {
              $totalCelson = $totalCelson + $todasAsDespesas[$i]->valor;
            } else if ($todasAsDespesas[$i]->responsavel == 'Crislaine Souza') {
              $totalCris = $totalCris + $todasAsDespesas[$i]->valor;
            }
  
        break;
        }
      }?>  
      </tbody>
      <tfoot>
          <tr>
            <th colspan="2">Total Celson: <?php echo $totalCelson;?></th>
            <th colspan="2">Total Crislaine: <?php echo $totalCris;?></th>
            <th colspan="3">Total Geral: <?php echo $totalCris+$totalCelson;?></th>
          </tr>
      </tfoot>
  </table>

<div class="row">
  <div class="col-md-12">
    <h3 class="text-center">Cartão de Cris (Hiper)</h3>
  </div>  
</div>

  <table id="" class="display compact" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th>Origem</th>
        <th>Estabelecimento</th>
        <th>Descrição da despesa</th>
        <th>Parcela</th>
        <th>Responsavel</th>
        <th>Valor</th>
        <th class="text-center">Vis. / Exc.</th>
      </tr>
    </thead>
    <tbody>
<?php

$totalCelson = 0;
$totalCris = 0;
  for ($i=0; $i < count($todasAsDespesas); $i++) { 

    switch ($todasAsDespesas[$i]->origem) {
      case 'Cartão Crislaine Souza (Hiper)': 
?>
        
        <tr>
          <td><? echo $todasAsDespesas[$i]->origem; ?></td>
          <td><? echo $todasAsDespesas[$i]->estabelecimento; ?></td>
          <td><? echo $todasAsDespesas[$i]->nomeDespesa; ?></td>
          <td><? echo $todasAsDespesas[$i]->quantidade_parcelas; ?></td>
          <td><? echo $todasAsDespesas[$i]->responsavel; ?></td>
          <td><? echo "R$ " . $todasAsDespesas[$i]->valor; ?></td>
          <td class="text-center">
          <? 
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-eye-open"></span>');
          echo "  ";
          // Converter sdtObject em string para chamada na url
          $id = $todasAsDespesas[$i]->id;
          echo anchor("/despesa/excluirDespesa/$id",'<span class="glyphicon glyphicon-remove"></span>');
          ?>
          </td>
        </tr>

        <?php
            
            if ($todasAsDespesas[$i]->responsavel == "Celson Rodrigues") {
              $totalCelson = $totalCelson + $todasAsDespesas[$i]->valor;
            } else if ($todasAsDespesas[$i]->responsavel == "Crislaine Souza") {
              $totalCris = $totalCris + $todasAsDespesas[$i]->valor;
            }
  
        break;
        }
      }?>  
    </tbody>
        <tfoot>
          <tr>
            <th colspan="2">Total Celson: <?php echo $totalCelson;?></th>
            <th colspan="2">Total Crislaine: <?php echo $totalCris;?></th>
            <th colspan="3">Total Geral: <?php echo $totalCris+$totalCelson;?></th>
          </tr>
        </tfoot>
  </table>

<div class="row">
  <div class="col-md-12">
    <h3 class="text-center">Cartão de Celson (Saraiva)</h3>
  </div>  
</div>

  <table id="" class="display compact" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th>Origem</th>
        <th>Estabelecimento</th>
        <th>Descrição da despesa</th>
        <th>Parcela</th>
        <th>Responsavel</th>
        <th>Valor</th>
        <th class="text-center">Vis. / Exc.</th>
      </tr>
    </thead>
    <tbody>
<?php
// zerar as variaveis para não dá erro
$totalCelson = 0;
$totalCris = 0;
  for ($i=0; $i < count($todasAsDespesas); $i++) { 

    switch ($todasAsDespesas[$i]->origem) {
      case 'Cartão Celson Rodrigues (Saraiva)': 
?>
    
      <tr>
        <td><? echo $todasAsDespesas[$i]->origem; ?></td>
        <td><? echo $todasAsDespesas[$i]->estabelecimento; ?></td>
        <td><? echo $todasAsDespesas[$i]->nomeDespesa; ?></td>
        <td><? echo $todasAsDespesas[$i]->quantidade_parcelas; ?></td>
        <td><? echo $todasAsDespesas[$i]->responsavel; ?></td>
        <td><? echo "R$ " . $todasAsDespesas[$i]->valor; ?></td>
        <td class="text-center">
        <? 
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-eye-open"</span>');
          echo "  ";
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-remove"</span>');
        ?>
        </td>
      </tr>
      <?php 
            if ($todasAsDespesas[$i]->responsavel == 'Celson Rodrigues') {
              $totalCelson = $totalCelson + $todasAsDespesas[$i]->valor;
            }
            if ($todasAsDespesas[$i]->responsavel == 'Crislaine Souza') {
              $totalCris = $totalCris + $todasAsDespesas[$i]->valor;
            }
      ?>
    
  <? break;?>

  <?php }?>
<?php }?>
  </tbody>
        <tfoot>
          <tr>
            <th colspan="2">Total Celson: <?php echo $totalCelson;?></th>
            <th colspan="2">Total Crislaine: <?php echo $totalCris;?></th>
            <th colspan="3">Total Geral: <?php echo $totalCris+$totalCelson;?></th>
          </tr>
        </tfoot>
</table>  

<div class="row">
  <div class="col-md-12">
    <h3 class="text-center">Cartão de Dona Neide (Master)</h3>
  </div>  
</div>

  <table id="" class="display compact" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th>Origem</th>
        <th>Estabelecimento</th>
        <th>Descrição da despesa</th>
        <th>Parcela</th>
        <th>Responsavel</th>
        <th>Valor</th>
        <th class="text-center">Vis. / Exc.</th>
      </tr>
    </thead>
    <tbody>

<?php
$totalCelson = 0;
$totalCris = 0;

for ($i=0; $i < count($todasAsDespesas); $i++) { 

  switch ($todasAsDespesas[$i]->origem) {
    
    case 'Cartão Dona Neide (Master)': 
?>

    
      <tr>
        <td><? echo $todasAsDespesas[$i]->origem; ?></td>
        <td><? echo $todasAsDespesas[$i]->estabelecimento; ?></td>
        <td><? echo $todasAsDespesas[$i]->nomeDespesa; ?></td>
        <td><? echo $todasAsDespesas[$i]->quantidade_parcelas; ?></td>
        <td><? echo $todasAsDespesas[$i]->responsavel; ?></td>
        <td><? echo "R$ " . $todasAsDespesas[$i]->valor; ?></td>
        <td class="text-center">
          <? 
            echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-eye-open"</span>');
            echo "  ";
            echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-remove"</span>');
          ?>
        </td>        
      </tr>
      <?php 
            if ($todasAsDespesas[$i]->responsavel == 'Celson Rodrigues') {
              $totalCelson = $totalCelson + $todasAsDespesas[$i]->valor;
              # code...
            } else if ($todasAsDespesas[$i]->responsavel == 'Crislaine Souza') {
              $totalCris = $totalCris + $todasAsDespesas[$i]->valor;
            }
      ?>


<? break;?>

  <?php }?>
<?php }?>
    </tbody>
        <tfoot>
          <tr>
            <th colspan="2">Total Celson: <?php echo $totalCelson;?></th>
            <th colspan="2">Total Crislaine: <?php echo $totalCris;?></th>
            <th colspan="3">Total Geral: <?php echo $totalCris+$totalCelson;?></th>
          </tr>
        </tfoot>
  </table>

<div class="row">
  <div class="col-md-12">
    <h3 class="text-center">Cartão de Cris (BB)</h3>
  </div>  
</div>

  <table id="" class="display compact" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th>Origem</th>
        <th>Estabelecimento</th>
        <th>Descrição da despesa</th>
        <th>Parcela</th>
        <th>Responsavel</th>
        <th>Valor</th>
        <th class="text-center">Vis. / Exc.</th>
      </tr>
    </thead>
    <tbody>
<?php 
$totalCelson = 0;
$totalCris = 0;

for ($i=0; $i < count($todasAsDespesas); $i++) { 
  
  switch ($todasAsDespesas[$i]->origem) {

    case 'Cartão Crislaine Souza (BB)': 
?>
    
      <tr>
        <td><? echo $todasAsDespesas[$i]->origem; ?></td>
        <td><? echo $todasAsDespesas[$i]->estabelecimento; ?></td>
        <td><? echo $todasAsDespesas[$i]->nomeDespesa; ?></td>
        <td><? echo $todasAsDespesas[$i]->quantidade_parcelas; ?></td>
        <td><? echo $todasAsDespesas[$i]->responsavel; ?></td>
        <td><? echo "R$ " . $todasAsDespesas[$i]->valor; ?></td>
        <td class="text-center">
        <? 
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-eye-open"</span>');
          echo "  ";
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-remove"</span>');
        ?>
        </td>
      </tr>
      <?php 
            if ($todasAsDespesas[$i]->responsavel == 'Celson Rodrigues') {
              $totalCelson = $totalCelson + $todasAsDespesas[$i]->valor;
              # code...
            } else if ($todasAsDespesas[$i]->responsavel == 'Crislaine Souza') {
              $totalCris = $totalCris + $todasAsDespesas[$i]->valor;            
            }
    
    break;
    }
      }?>
</tbody>
        <tfoot>
          <tr>
            <th colspan="2">Total Celson: <?php echo $totalCelson;?></th>
            <th colspan="2">Total Crislaine: <?php echo $totalCris;?></th>
            <th colspan="3">Total Geral: <?php echo $totalCris+$totalCelson;?></th>
          </tr>
        </tfoot>
  </table>

<div class="row">
  <div class="col-md-12">
    <h3 class="text-center">Cartão de Dona Ercilia</h3>
  </div>  
</div>


    <table id="" class="display compact" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>Origem</th>
          <th>Estabelecimento</th>
          <th>Descrição da despesa</th>
          <th>Parcela</th>
          <th>Responsavel</th>
          <th>Valor</th>
          <th class="text-center">Vis. / Exc.</th>
        </tr>
      </thead>
      <tbody>
<?php
$totalCelson = 0;
$totalCris = 0;

for ($i=0; $i < count($todasAsDespesas); $i++) { 
  
  switch ($todasAsDespesas[$i]->origem) {

    case 'Cartão Dona Ercilia (Dona Ercilia)': 
?>
    
      <tr>
        <td><? echo $todasAsDespesas[$i]->origem; ?></td>
        <td><? echo $todasAsDespesas[$i]->estabelecimento; ?></td>
        <td><? echo $todasAsDespesas[$i]->nomeDespesa; ?></td>
        <td><? echo $todasAsDespesas[$i]->responsavel; ?></td>
        <td><? echo $todasAsDespesas[$i]->quantidade_parcelas; ?></td>
        <td><? echo "R$ " . $todasAsDespesas[$i]->valor; ?></td>
        <td class="text-center">
        <? 
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-eye-open"</span>');
          echo "  ";
          echo anchor($todasAsDespesas[$i]->id,'<span class="glyphicon glyphicon-remove"</span>');
        ?>
        </td>
      </tr>
      <?php 
            if ($todasAsDespesas[$i]->responsavel == 'Celson Rodrigues') {
              $totalCelson = $totalCelson + $todasAsDespesas[$i]->valor;
            } else if ($todasAsDespesas[$i]->responsavel == 'Crislaine Souza') {
              $totalCris = $totalCris + $todasAsDespesas[$i]->valor;            
            }
  break;
      }
    }?>
</tbody>
        <tfoot>
          <tr>
            <th colspan="2">Total Celson: <?php echo $totalCelson;?></th>
            <th colspan="2">Total Crislaine: <?php echo $totalCris;?></th>
            <th colspan="3">Total Geral: <?php echo $totalCris+$totalCelson;?></th>
          </tr>
        </tfoot>
  </table>



<script>
    var pie = new RGraph.Pie({
        id: 'cvs3',
        //data: [4,8,6,3,5,2],
        data: <?php echo $dataCelsonPieString?>,
        options: {
            labelsSticks: true,
            shadow: true,
            shadowOffsety: 7,
            shadowBlur: 25,
            strokestyle: 'rgba(0,0,0,0)',
            //labels: ['Henning','Louis','John','Pete','Lucy','Fred'],
            labels: <?php echo $labelsCelsonPieString?>,
            clearto: 'white',
            labelsSticks: true,
            variant: 'pie3d',
            labelsSticksLength:25,
            //labelsIngraph: true,
            radius: 100
        }
    }).draw();

    var pie = new RGraph.Pie({
        id: 'graphPieCris',
        //data: [4,8,6,3,5,2],
        data: <?php echo $dataCrisPieString?>,
        options: {
            labelsSticks: true,
            shadow: true,
            shadowOffsety: 7,
            shadowBlur: 25,
            strokestyle: 'rgba(0,0,0,0)',
            //labels: ['Henning','Louis','John','Pete','Lucy','Fred'],
            labels: <?php echo $labelsCrisPieString?>,
            clearto: 'white',
            labelsSticks: true,
            variant: 'pie3d',
            labelsSticksLength:25,
            //labelsIngraph: true,
            radius: 100
        }
    }).draw();




</script>