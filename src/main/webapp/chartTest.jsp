<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<canvas id="bar-chart" width="800" height="450"></canvas>
	<div id="polar-chart"></div>

	<script type="text/javascript">
new Chart(document.getElementById("bar-chart"), {
	
    type: 'polarArea',
    data: {
      labels: [
    	    'Red',
    	    'Green',
    	    'Yellow',
    	    'Grey',
    	    'Blue'
    	  ],
    	  datasets: [{
    		    label: 'My First Dataset',
    		    data: [11, 16, 7, 3, 14],
    		    backgroundColor: [
    		      'rgb(255, 99, 132)',
    		      'rgb(75, 192, 192)',
    		      'rgb(255, 205, 86)',
    		      'rgb(201, 203, 207)',
    		      'rgb(54, 162, 235)'
    		    ]
    		  }]
    },
    options: {
    	indexAxis: 'y',
    	scales:{
    		y:{
    			beginAtZero: true
    		}
    	}
    }
});
</script>
</body>
</html>