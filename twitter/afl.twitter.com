```<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,viewport-fit=cover" />
  <style>
    body {
      -ms-overflow-style: scrollbar;
      overflow-y: scroll;
      overscroll-behavior-y: none;
    }

    .errorContainer {
      background-color: #FFF;
      color: #0F1419;
      max-width: 600px;
      margin: 0 auto;
      padding: 10%;
      font-family: Helvetica, sans-serif;
      font-size: 16px;
    }

    .errorButton {
      margin: 3em 0;
    }

    .errorButton a {
      background: #1DA1F2;
      border-radius: 2.5em;
      color: white;
      padding: 1em 2em;
      text-decoration: none;
    }

    .errorButton a:hover,
    .errorButton a:focus {
      background: rgb(26, 145, 218);
    }

    .errorFooter {
      color: #657786;
      font-size: 80%;
      line-height: 1.5;
      padding: 1em 0;
    }

    .errorFooter a,
    .errorFooter a:visited {
      color: #657786;
      text-decoration: none;
      padding-right: 1em;
    }

    .errorFooter a:hover,
    .errorFooter a:active {
      text-decoration: underline;
    }

  </style>
</head>
<body>
  <div class="errorContainer">
    <img width="46" height="38"
      srcset="https://abs.twimg.com/errors/logo46x38.png 1x, https://abs.twimg.com/errors/logo46x38@2x.png 2x"
      src="https://abs.twimg.com/errors/logo46x38.png" alt="Twitter" />
    <h1>This browser is no longer supported.</h1>
    <p>
      Please switch to a supported browser to continue using twitter.com. You can see a list of supported browsers in our Help Center.
    </p>
    <p class="errorButton"><a href="https://help.twitter.com/using-twitter/twitter-supported-browsers">Help Center</a>
    </p>
    <p class="errorFooter">
      <a href="https://twitter.com/tos">Terms of Service</a>
      <a href="https://twitter.com/privacy">Privacy Policy</a>
      <a href="https://support.twitter.com/articles/20170514">Cookie Policy</a>
      <a href="https://legal.twitter.com/imprint">Imprint</a>
      <a href="https://business.twitter.com/en/help/troubleshooting/how-twitter-ads-work.html">Ads info</a>
      © 2021 Twitter, Inc.
    </p>

  </div>
</body>
</html>```