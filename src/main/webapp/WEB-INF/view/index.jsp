<html>
<title>Cors Test Ui</title>
<head>
    <meta charset="UTF-8">
</head>
<body>
<button onclick="corsGetMethodTest()">CORS Get method test</button>
<button onclick="corsPostMethodTest()">CORS Post method test</button>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript">

    function corsGetMethodTest() {
        $.ajax({
            url: 'http://localhost:8080/api/cors',
            type: 'get',
            success: function(data) {
                console.log('what is :: {}', data);
            },
            error: function(error) {
                console.log('error is occured :: {}', error);
            }
        });
    }

    function corsPostMethodTest() {

        $.ajax({
            url: 'http://localhost:8080/api/cors',
            type: 'post',
            contentType: 'application/json',
            data: JSON.stringify({
                'name': 'Choi Hong Hee',
                'phone': '010-1234-1234'
            }),
            success: function(data) {
                console.log('what is :: {}', data);
            },
            error: function(error) {
                console.log('error is occured :: {}', error);
            }
        });
    }
</script>
</html>