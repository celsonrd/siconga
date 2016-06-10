<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <table class="table table-bordered text-center">
            <thead>
                <tr>
                    <th class="text-center">Periodo para consulta</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($periodoDePagamento -> result() as $periodo) { 
                    echo "<tr>";        
                        echo "<td>";
                            echo anchor("consulta/despesaPorPeriodo/".$periodo->id, $periodo->mes . " - " . $periodo->ano);
                        echo "</td>";
                    echo "</tr>";
                }?>
            </tbody>
        </table>
    </div>
</div>