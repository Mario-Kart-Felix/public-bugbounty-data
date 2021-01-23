```<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Sorry, this service is no longer avaliable.</title>
  <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet" type="text/css">

  <meta name="msapplication-TileColor" content="#0193d7">
  <meta name="msapplication-TileImage" content="images/favicons/favicon-144.png?v=1">
  <link rel="apple-touch-icon-precomposed" href="images/favicons/favicon-152.png?v=1">
  <link rel="apple-touch-icon-precomposed" sizes="152x152" href="images/favicons/favicon-152.png?v=1">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/favicons/favicon-144.png?v=1">
  <link rel="apple-touch-icon-precomposed" sizes="120x120" href="images/favicons/favicon-120.png?v=1">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/favicons/favicon-72.png?v=1">
  <link rel="apple-touch-icon-precomposed" href="images/favicons/favicon-57.png?v=1">
  <link rel="icon" href="images/favicons/favicon-32.png?v=1" sizes="32x32">

  <link href="css/default.css?v=1" rel="stylesheet">
  <link href="https://dl.ubnt.com/media/css-assets/ubnt-icon/v1.79.1/style.css" rel="stylesheet">
</head>

<body>
<div class="dialog">
  <div class="flagContainer">
    <div class="logoContainer">
      <a href="https://www.ubnt.com/">
        <img src="//res.cloudinary.com/airos/image/upload/u.svg" alt="Ubiquiti Networks Logo" width="80" height="90">
      </a>
    </div>
    <div class="messageContainer">
      <p>Sorry, this service is no longer avaliable.</p>
    </div>
  </div>
  <div class="availableServices">
    <p>Try our other services</p>
    <ul>
      <li><a class="icon ubnt-icon--u-crm" href="https://ucrm.ubnt.com/" style="font-size: 5em"></a></li>
      <li><a class="icon ubnt-icon--unifi2" href="https://unifi-sdn.ubnt.com/" style="font-size: 6em;margin: 0 -0.1em"></a></li>
      <li><a class="icon ubnt-icon--unifi-mesh" href="https://unifi-mesh.ubnt.com/" style="font-size: 2.2em;padding-bottom: 0.2em"></a></li>
      <li><a class="icon ubnt-icon--unifi-video" href="https://www.ubnt.com/enterprise/#unifi-video" style="font-size: 6em"></a></li>
    </ul>
  </div>
</div>
</body>

</html>
```