```<!DOCTYPE html>
<html lang="en">
  <head>
      <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-1298171-23"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-1298171-23');

    document.addEventListener('turbolinks:load', function(event) {
      if (typeof gtag === 'function') {
        gtag('config', 'UA-1298171-23', {
          'page_location': event.data.url
        })
      }
    })
  </script>

    <title>Clio - Login</title>
    <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="pzXUMYRt6LOe97xLCsBfReoKxIY2jrFaIOrrQSHYHWr58AVCJkc0CqEO9jO15Dih7oRkNs8B5m95g04/Cp21FA==" />
    <meta name="Secure login page for Clio. Sign in to Clio, the leader in cloud-based legal technology.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="canonical" href="https://account.clio.com/">
    <link rel="stylesheet" media="all" href="/assets/application-0d13ee98ddfd3b534ea847c9072e3b8f0939251fe07dd8dd78a8ef0484c701fc.css" data-turbolinks-track="reload" />
    <script src="/assets/application-be4de02a28529c2268369223e31a3db0a481ac17f562ea2d7f11affbcd7cb757.js" data-turbolinks-track="reload"></script>
    <script src="/assets/multitab_login-314ee33b829b479670a613ef7a1ed349326b6d7bb8c8ee8d8a6f5321d546f009.js" data-turbolinks-track="reload"></script>
    <script src="/assets/login_challenge_expiry-89ada04f9b667e626636779d03e35dba88344815bb86cd4569e97541d308bed0.js" data-turbolinks-track="reload"></script>
    <script>
      var attributionScript = document.createElement('script');
      attributionScript.src = '//www.clio.com/wp-content/themes/clio/assets/js/attribution.min.js?v=' + Date.now();
      attributionScript.type = 'text/javascript';
      document.getElementsByTagName('head')[0].appendChild(attributionScript);

      const TAB_ID = Math.floor(Math.random() * Math.floor(10000));
      window.addEventListener("storage", clioMultiTabLogin.createNewLoginHandler(TAB_ID));
    </script>
  </head>
  <body>
    <header class="ui-header">
      <img alt="Clio Logo" src="/images/brand-logotype.svg" />
        <span>
          <span class="sign-up-text">Don&apos;t have an account?</span>
          <a href="https://www.clio.com/signup">Sign up</a>
        </span>
    </header>
    <main class="ui-main">
      <div class="login ">
        <div class="login__form-container">
          <div>
  <span align="center" class="spacing-top-xl">
    

    <h1 class="products__header">Select the Clio application you would like to sign in to.</h1>
  </span>
  <div class="products__list">
  <div class="card product__card">
    <div id="grow-image" class="product__image grow-image"></div>
    <img alt="Clio Grow Logo" src="/assets/clio-grow-logo-black-fff0098be61d314b660c7f4b3118e7c5334e2a322585284f89df88b26969984f.svg" />
    <div id="grow-text" class="product__text">Streamline your firm's intake process and the way you engage with potential and existing clients.</div>
    <a class="button button--secondary" aria-describedby="grow-text" href="https://grow.clio.com">Sign in to Clio Grow</a>
  </div>

  <div class="card product__card">
    <div id="manage-image" class="product__image manage-image"></div>
    <img alt="Clio Manage Logo" src="/assets/clio-manage-logo-black-205b5991f9d29f2eba6bb905abe0497a5011cd54d5a1de84e9a8d1ef664bc023.svg" />
    <div id="manage-text" class="product__text">Organize your firm’s tasks, matters, documents and payments, all in one place.</div>
    <a class="button button--secondary" aria-describedby="manage-text" href="https://app.clio.com">Sign in to Clio Manage</a>
  </div>
</div>

</div>

          <div class="ui-help">
  <p align="center">
    <strong>Have questions or need help?</strong>
    <br/>
    <a href="https://support.clio.com/hc/en-us" target="_blank">
      Visit the Clio Help Centre
    </a>
    or give us a call at 1-888-858-2546 (Ext 2).
  </p>
</div>

        </div>
        
      </div>
    </main>
    <footer class="ui-footer">
      <p>
  We know that keeping your data secure and safe is important.
  Learn more about our
  <a href=https://app.clio.com/security target="_blank" aria-label="Learn more about our security">security</a>
  and our <a href="https://www.clio.com/privacy/" target="_blank" aria-label="Learn more about our privacy policy">privacy policy</a>.
</p>
<p>Copyright © 2021 Themis Solutions Inc.</p>

    </footer>
  </body>
</html>
```