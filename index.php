<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Barchart Data using phpmyadmin and Chart JS</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <?php 
        include("chartjs.php");
    ?>
<div class="container">
<h1>Compilation of data over three year period</h1>
    <canvas id="myChart"></canvas>
<script>
  
    const count = <?php echo json_encode($count);?>;
    const count2 = <?php echo json_encode($count2);?>;
    const count3 = <?php echo json_encode($count3);?>;

const ctx = document.getElementById('myChart');

new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['Jan', 'Feb', 'Mar', 'Apr'],

     datasets: [
        {
            label: "2013",
            fillColor: "blue",
            data: count
        },
        {
            label: "2014",
            fillColor: "green",
            data: count2
        },
        {
            label: "2015",
            fillColor: "green",
            data: count3
        }
    ]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});
</script>

</div>
<!-- jQuery library -->
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="script.js"></script>
</body>
</html>