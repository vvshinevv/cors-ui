<html>
<title>Cors Test Ui</title>
<head>
    <meta charset="UTF-8">
</head>
<body>
<button onclick="corsGetMethodTest()">CORS Get method test</button>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript">

    function corsGetMethodTest() {
        $.ajax({
            url: 'http://localhost:8080/api/cors',
            type: 'get',
            success: function(data) {
                console.log(data);
            },
            error: function(error) {
                console.log(error);
            }
        })
    }
</script>
</html>