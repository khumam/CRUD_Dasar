<?php

if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}

?>


<div id="canvas-holder" style="width:90%">
    <canvas id="chart-area"></canvas>
</div>

<script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
<script src="https://www.chartjs.org/samples/latest/utils.js"></script>
<?php $dataset = get_datanama();
$total = mysqli_num_rows($dataset);
$labels = '';
$array = [];

while ($rows = mysqli_fetch_assoc($dataset)) {
    $array[] = $rows;
}
?>

<?php foreach ($array as $ar) {
    $labels .= "'" . $ar['first_letter'] . "',";
}

$labels = substr($labels, 0, -1);
?>

<script>
    var config = {
        type: 'pie',
        data: {
            datasets: [{
                data: [
                    <?php foreach ($array as $ar2) {
                        echo round($ar2['total'] / $total * 100) . ",";
                    } ?>
                ],
                backgroundColor: [
                    <?php foreach ($array as $ar3) {
                        echo "'#" . random_color() . "',";
                    } ?>
                ],
                label: 'Dataset 1'
            }],
            labels: [<?php echo $labels; ?>]
        },
        options: {
            responsive: true
        }
    };

    window.onload = function() {
        var ctx = document.getElementById('chart-area').getContext('2d');
        window.myPie = new Chart(ctx, config);
    };
</script>
</body>

</html>