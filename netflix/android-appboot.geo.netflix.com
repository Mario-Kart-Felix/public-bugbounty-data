```<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Netflix Appboot</title>
  <!-- CSS -->
  <style type="text/css">
    body {
      margin: 0px auto;
      width: 100%;
    }
    div.container {
      margin: 0px auto;
      font-family: Arial, sans-serif;
      text-align: center;
    }
    div.header1 {
      font-size: 300%;
    }
  </style>
</head>

<body>
<div class="container">
  <div class="header1">
    Netflix appboot
  </div>
</div>
</body>
</html>
```