```<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- force IE browsers in compatibility mode to use their most aggressive rendering engine -->

    <meta charset="utf-8">
    <title>Wodify Public Status</title>
    <meta name="description" content="Welcome to Wodify Public&#39;s home for real-time and historical data on system performance.">

    <!-- Mobile viewport optimization h5bp.com/ad -->
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

    <!-- Time this page was rendered - http://purl.org/dc/terms/issued -->
    <meta name="issued" content="1611327929">

    <!-- Mobile IE allows us to activate ClearType technology for smoothing fonts for easy reading -->
    <meta http-equiv="cleartype" content="on">

    <!-- Le fonts -->
<style>
  @font-face {
    font-family: 'proxima-nova';
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaLight-f0b2f7c12b6b87c65c02d3c1738047ea67a7607fd767056d8a2964cc6a2393f7.eot?host=00bytzbd1ssp.statuspage.io');
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaLight-f0b2f7c12b6b87c65c02d3c1738047ea67a7607fd767056d8a2964cc6a2393f7.eot?host=00bytzbd1ssp.statuspage.io#iefix') format('embedded-opentype'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaLight-e642ffe82005c6208632538a557e7f5dccb835c0303b06f17f55ccf567907241.woff?host=00bytzbd1ssp.statuspage.io') format('woff'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaLight-0f094da9b301d03292f97db5544142a16f9f2ddf50af91d44753d9310c194c5f.ttf?host=00bytzbd1ssp.statuspage.io') format('truetype');
    font-weight:300;
    font-style:normal;
  }
   
  @font-face {
    font-family: 'proxima-nova';
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegular-366d17769d864aa72f27defaddf591e460a1de4984bb24dacea57a9fc1d14878.eot?host=00bytzbd1ssp.statuspage.io');
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegular-366d17769d864aa72f27defaddf591e460a1de4984bb24dacea57a9fc1d14878.eot?host=00bytzbd1ssp.statuspage.io#iefix') format('embedded-opentype'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegular-2ee4c449a9ed716f1d88207bd1094e21b69e2818b5cd36b28ad809dc1924ec54.woff?host=00bytzbd1ssp.statuspage.io') format('woff'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegular-a40a469edbd27b65b845b8000d47445a17def8ba677f4eb836ad1808f7495173.ttf?host=00bytzbd1ssp.statuspage.io') format('truetype');
    font-weight:400;
    font-style:normal;
  }
   
  @font-face {
    font-family: 'proxima-nova';
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegularIt-0bf83a850b45e4ccda15bd04691e3c47ae84fec3588363b53618bd275a98cbb7.eot?host=00bytzbd1ssp.statuspage.io');
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegularIt-0bf83a850b45e4ccda15bd04691e3c47ae84fec3588363b53618bd275a98cbb7.eot?host=00bytzbd1ssp.statuspage.io#iefix') format('embedded-opentype'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegularIt-0c394ec7a111aa7928ea470ec0a67c44ebdaa0f93d1c3341abb69656cc26cbdd.woff?host=00bytzbd1ssp.statuspage.io') format('woff'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaRegularIt-9e43859f8015a4d47d9eaf7bafe8d1e26e3298795ce1f4cdb0be0479b8a4605e.ttf?host=00bytzbd1ssp.statuspage.io') format('truetype');
    font-weight:400;
    font-style:italic;
  }
   
  @font-face {
    font-family: 'proxima-nova';
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaSemibold-09566917307251d22021a3f91fc646f3e45f8d095209bcd2cded8a1979f06e54.eot?host=00bytzbd1ssp.statuspage.io');
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaSemibold-09566917307251d22021a3f91fc646f3e45f8d095209bcd2cded8a1979f06e54.eot?host=00bytzbd1ssp.statuspage.io#iefix') format('embedded-opentype'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaSemibold-86724fb2152613d735ba47c3f47a9ad2424b898bea4bece213dacee40344f966.woff?host=00bytzbd1ssp.statuspage.io') format('woff'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaSemibold-cf3e4eb7fbdf6fb83e526cc2a0141e55b01097e6e1abfd4cbdc3eda75d183f74.ttf?host=00bytzbd1ssp.statuspage.io') format('truetype');
    font-weight:500;
    font-style:normal;
  }
   
  @font-face {
    font-family: 'proxima-nova';
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaBold-622ea489d20e12e691663f83217105e957e2d3d09703707d40155a29c06cc9d9.eot?host=00bytzbd1ssp.statuspage.io');
    src: url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaBold-622ea489d20e12e691663f83217105e957e2d3d09703707d40155a29c06cc9d9.eot?host=00bytzbd1ssp.statuspage.io#iefix') format('embedded-opentype'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaBold-c8dc577ff7f76d2fc199843e38c04bb2e9fd15889421358d966a9f846c2ed1cd.woff?host=00bytzbd1ssp.statuspage.io') format('woff'),
         url('https://dka575ofm4ao0.cloudfront.net/assets/ProximaNovaBold-27177fe9242acbe089276ee587feef781446667ffe9b6fdc5b7fe21ad73e12f3.ttf?host=00bytzbd1ssp.statuspage.io') format('truetype');
    font-weight:700;
    font-style:normal;
  }
</style>


      <link rel="shortcut icon" type="image/x-icon" href="//dka575ofm4ao0.cloudfront.net/pages-favicon_logos/original/6242/ocEEZSESxO5EAtKU1FTK" />

    <link rel="shortcut icon" href='//dka575ofm4ao0.cloudfront.net/pages-favicon_logos/original/6242/ocEEZSESxO5EAtKU1FTK'>

    <link rel="alternate" type="application/atom+xml" href="https://00bytzbd1ssp.statuspage.io/history.atom" title="Wodify Public Status History - Atom Feed">
    <link rel="alternate" type="application/rss+xml" href="https://00bytzbd1ssp.statuspage.io/history.rss" title="Wodify Public Status History - RSS Feed">

      <!-- Canonical Link to ensure that only the custom domain is indexed when present -->
      <link rel="canonical" href="https://status.wodify.com">

    <meta name="_globalsign-domain-verification" content="y_VzfckMy4iePo5oDJNivyYIjh8LffYa4jzUndm_bZ"/>


    <link rel="alternate" type="application/atom+xml" title="ATOM" href="https://00bytzbd1ssp.statuspage.io/history.atom" />

    <!-- Le styles -->
    <link rel="stylesheet" media="screen" href="https://dka575ofm4ao0.cloudfront.net/packs/0.1317fd96ffaf3861106f.css" />
    <link rel="stylesheet" media="all" href="https://dka575ofm4ao0.cloudfront.net/assets/status/status_manifest-561fc1a1401f751f5bbb43764df0227bf8a957ac6979a7cee4bb3928dcd82eee.css" />

    <script src="https://dka575ofm4ao0.cloudfront.net/assets/jquery-3.5.1.min-729e416557a365062a8a20f0562f18aa171da57298005d392312670c706c68de.js"></script>

    <script>
      window.pageColorData = {"blue":"#3498DB","border":"#E0E0E0","body_background":"#ffffff","font":"#333333","graph":"#000000","green":"#2fcc66","light_font":"#AAAAAA","link":"#e74c3c","orange":"#e67e22","red":"#e74c3c","yellow":"#f1c40f","no_data":"#b3bac5"};
    </script>
    <style>
  /* BODY BACKGROUND */ /* BODY BACKGROUND */ /* BODY BACKGROUND */ /* BODY BACKGROUND */ /* BODY BACKGROUND */
  body,
  .layout-content.status.status-api .section .example-container .example-opener .color-secondary,
  .grouped-items-selector,
  .layout-content.status.status-full-history .history-nav a.current,
  div[id^="subscribe-modal"] .modal-footer,
  div[id^="subscribe-modal"],
  #uptime-tooltip .tooltip-box {
    background-color:#ffffff;
  }

  #uptime-tooltip .pointer-container .pointer-smaller {
    border-bottom-color:#ffffff;
  }




  /* PRIMARY FONT COLOR */ /* PRIMARY FONT COLOR */ /* PRIMARY FONT COLOR */ /* PRIMARY FONT COLOR */
  body.status,
  .color-primary,
  .color-primary:hover,
  .layout-content.status-index .status-day .update-title.impact-none a,
  .layout-content.status-index .status-day .update-title.impact-none a:hover,
  .layout-content.status-index .timeframes-container .timeframe.active,
  .layout-content.status-full-history .month .incident-container .impact-none,
  .layout-content.status.status-index .incidents-list .incident-title.impact-none a,
  .incident-history .impact-none,
  .layout-content.status .grouped-items-selector.inline .grouped-item.active,
  .layout-content.status.status-full-history .history-nav a.current,
  .layout-content.status.status-full-history .history-nav a:not(.current):hover,
  div[id^="subscribe-modal"] .modal-header .close,
  .grouped-item-label,
  #uptime-tooltip .tooltip-box .tooltip-content .related-events .related-event a.related-event-link {
    color:#333333;
  }

  .layout-content.status.status-index .components-statuses .component-container .name {
    color:#333333;
    color:rgba(51,51,51,.8);
  }




  /* SECONDARY FONT COLOR */ /* SECONDARY FONT COLOR */ /* SECONDARY FONT COLOR */ /* SECONDARY FONT COLOR */
  small,
  .layout-content.status .table-row .date,
  .color-secondary,
  .layout-content.status .grouped-items-selector.inline .grouped-item,
  .layout-content.status.status-full-history .history-footer .pagination a.disabled,
  .layout-content.status.status-full-history .history-nav a,
  #uptime-tooltip .tooltip-box .tooltip-content .related-events #related-event-header {
    color:#AAAAAA;
  }




  /* BORDER COLOR */  /* BORDER COLOR */  /* BORDER COLOR */  /* BORDER COLOR */  /* BORDER COLOR */  /* BORDER COLOR */
  body.status .layout-content.status .border-color,
  hr,
  .tooltip-base,
  .markdown-display table,
  div[id^="subscribe-modal"],
  #uptime-tooltip .tooltip-box {
    border-color:#E0E0E0;
  }

  div[id^="subscribe-modal"] .modal-footer,
  .markdown-display table td {
    border-top-color:#E0E0E0;
  }

  div[id^="subscribe-modal"] .modal-header .close:hover {
    color:#E0E0E0;
  }

  .markdown-display table td + td, .markdown-display table th + th {
    border-left-color:#E0E0E0;
  }

  div[id^="subscribe-modal"] .modal-header,
  #uptime-tooltip .pointer-container .pointer-larger {
    border-bottom-color:#E0E0E0;
  }

  #uptime-tooltip .tooltip-box .outage-field {
    /*
      Generate the background-color for the outage-field from the css_body_background_color and css_border_color.

      For the default background (#ffffff) and default css_border_color (#e0e0e0), use the luminosity of the default background with a magic number to arrive at
      the original outage-field background color (#f4f5f7). I used the formula Target Color = Color * alpha + Background * (1 - alpha) to find the magic number of ~0.08.

      For darker css_body_background_color, luminosity values are lower so alpha trends toward becoming transparent (thus outage-field background becomes same as css_body_background_color).
    */
    background-color: rgba(224,224,224,0.31);

    /*
      outage-field border-color alpha is inverse to the luminosity of css_body_background_color.
      That is to say, with a default white background this border is transparent, but on a black background, it's opaque css_border_color.
    */
    border-color: rgba(224,224,224,0.0);
  }




  /* CSS REDS */ /* CSS REDS */ /* CSS REDS */ /* CSS REDS */ /* CSS REDS */ /* CSS REDS */ /* CSS REDS */
  .layout-content.status.status-index .status-day .update-title.impact-critical a,
  .layout-content.status.status-index .status-day .update-title.impact-critical a:hover,
  .layout-content.status.status-index .page-status.status-critical,
  .layout-content.status.status-index .unresolved-incident.impact-critical .incident-title,
  .flat-button.background-red {
    background-color:#e74c3c;
  }

  .layout-content.status-index .components-statuses .component-container.status-red:after,
  .layout-content.status-full-history .month .incident-container .impact-critical,
  .layout-content.status-incident .incident-name.impact-critical,
  .layout-content.status.status-index .incidents-list .incident-title.impact-critical a,
  .status-red .icon-indicator,
  .incident-history .impact-critical,
  .components-container .component-inner-container.status-red .component-status,
  .components-container .component-inner-container.status-red .icon-indicator {
    color:#e74c3c;
  }

  .layout-content.status.status-index .unresolved-incident.impact-critical .updates {
    border-color:#e74c3c;
  }




  /* CSS ORANGES */ /* CSS ORANGES */ /* CSS ORANGES */ /* CSS ORANGES */ /* CSS ORANGES */ /* CSS ORANGES */
  .layout-content.status.status-index .status-day .update-title.impact-major a,
  .layout-content.status.status-index .status-day .update-title.impact-major a:hover,
  .layout-content.status.status-index .page-status.status-major,
  .layout-content.status.status-index .unresolved-incident.impact-major .incident-title {
    background-color:#e67e22;
  }

  .layout-content.status-index .components-statuses .component-container.status-orange:after,
  .layout-content.status-full-history .month .incident-container .impact-major,
  .layout-content.status-incident .incident-name.impact-major,
  .layout-content.status.status-index .incidents-list .incident-title.impact-major a,
  .status-orange .icon-indicator,
  .incident-history .impact-major,
  .components-container .component-inner-container.status-orange .component-status,
  .components-container .component-inner-container.status-orange .icon-indicator {
    color:#e67e22;
  }

  .layout-content.status.status-index .unresolved-incident.impact-major .updates {
    border-color:#e67e22;
  }




  /* CSS YELLOWS */ /* CSS YELLOWS */ /* CSS YELLOWS */ /* CSS YELLOWS */ /* CSS YELLOWS */ /* CSS YELLOWS */
  .layout-content.status.status-index .status-day .update-title.impact-minor a,
  .layout-content.status.status-index .status-day .update-title.impact-minor a:hover,
  .layout-content.status.status-index .page-status.status-minor,
  .layout-content.status.status-index .unresolved-incident.impact-minor .incident-title,
  .layout-content.status.status-index .scheduled-incidents-container .tab {
    background-color:#f1c40f;
  }

  .layout-content.status-index .components-statuses .component-container.status-yellow:after,
  .layout-content.status-full-history .month .incident-container .impact-minor,
  .layout-content.status-incident .incident-name.impact-minor,
  .layout-content.status.status-index .incidents-list .incident-title.impact-minor a,
  .status-yellow .icon-indicator,
  .incident-history .impact-minor,
  .components-container .component-inner-container.status-yellow .component-status,
  .components-container .component-inner-container.status-yellow .icon-indicator,
  .layout-content.status.manage-subscriptions .confirmation-infobox .fa {
    color:#f1c40f;
  }

  .layout-content.status.status-index .unresolved-incident.impact-minor .updates,
  .layout-content.status.status-index .scheduled-incidents-container {
    border-color:#f1c40f;
  }




  /* CSS BLUES */ /* CSS BLUES */ /* CSS BLUES */ /* CSS BLUES */ /* CSS BLUES */ /* CSS BLUES */
  .layout-content.status.status-index .status-day .update-title.impact-maintenance a,
  .layout-content.status.status-index .status-day .update-title.impact-maintenance a:hover,
  .layout-content.status.status-index .page-status.status-maintenance,
  .layout-content.status.status-index .unresolved-incident.impact-maintenance .incident-title,
  .layout-content.status.status-index .scheduled-incidents-container .tab {
    background-color:#3498DB;
  }

  .layout-content.status-index .components-statuses .component-container.status-blue:after,
  .layout-content.status-full-history .month .incident-container .impact-maintenance,
  .layout-content.status-incident .incident-name.impact-maintenance,
  .layout-content.status.status-index .incidents-list .incident-title.impact-maintenance a,
  .status-blue .icon-indicator,
  .incident-history .impact-maintenance,
  .components-container .component-inner-container.status-blue .component-status,
  .components-container .component-inner-container.status-blue .icon-indicator {
    color:#3498DB;
  }

  .layout-content.status.status-index .unresolved-incident.impact-maintenance .updates,
  .layout-content.status.status-index .scheduled-incidents-container {
    border-color:#3498DB;
  }




  /* CSS GREENS */ /* CSS GREENS */ /* CSS GREENS */ /* CSS GREENS */ /* CSS GREENS */ /* CSS GREENS */ /* CSS GREENS */
  .layout-content.status.status-index .page-status.status-none {
    background-color:#2fcc66;
  }
  .layout-content.status-index .components-statuses .component-container.status-green:after,
  .status-green .icon-indicator,
  .components-container .component-inner-container.status-green .component-status,
  .components-container .component-inner-container.status-green .icon-indicator {
    color:#2fcc66;
  }




  /* CSS LINK COLOR */  /* CSS LINK COLOR */  /* CSS LINK COLOR */  /* CSS LINK COLOR */  /* CSS LINK COLOR */  /* CSS LINK COLOR */
  a,
  a:hover,
  .layout-content.status-index .page-footer span a:hover,
  .layout-content.status-index .timeframes-container .timeframe:not(.active):hover,
  .layout-content.status-incident .subheader a:hover {
    color:#e74c3c;
  }

  .flat-button,
  .masthead .updates-dropdown-container .show-updates-dropdown,
  .layout-content.status-full-history .show-filter.open  {
    background-color:#e74c3c;
  }




  /* CUSTOM COLOR OVERRIDES FOR UPTIME SHOWCASE */
  .components-section .components-uptime-link {
    color: #aaaaaa;
  }

  .layout-content.status .shared-partial.uptime-90-days-wrapper .legend .legend-item {
    color: #aaaaaa;
    opacity: 0.8;
  }
  .layout-content.status .shared-partial.uptime-90-days-wrapper .legend .legend-item.light {
    color: #aaaaaa;
    opacity: 0.5;
  }
  .layout-content.status .shared-partial.uptime-90-days-wrapper .legend .spacer {
    background: #aaaaaa;
    opacity: 0.3;
  }
</style>


    <!-- custom css -->
        <link rel="stylesheet" type="text/css" href="//dka575ofm4ao0.cloudfront.net/page_display_customizations-custom_css_externals/6192/external20161101-44342-1ts8srl.css">

      <!-- polyfills -->
      <script crossorigin="anonymous" src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <!-- Le HTML5 shim -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- injection for static -->


    
  </head>


  <body class="status index status-none">

    


  <div class="layout-content status status-index premium">
      <div class="masthead-container premium">
    <div class="masthead">
      <div class="images-container" id="cover-image-container" data-js-hook="images-container"></div>
      <style>
          #cover-image-container {
            background-image:url("//dka575ofm4ao0.cloudfront.net/pages-hero_covers/normal/6242/S2Yto4BCSZq8y3LYFguo");
          }

          @media only screen and (-webkit-min-device-pixel-ratio: 2),
                 only screen and (min-resolution: 192dpi) {
            #cover-image-container {
              background-image:url("//dka575ofm4ao0.cloudfront.net/pages-hero_covers/retina/6242/S2Yto4BCSZq8y3LYFguo") !important;
            }
          }
      </style>

      <div class="text-container">
        <span class="page-name font-largest">
            <a target="_blank" href="http://www.wodify.com">Wodify Public</a>
        </span>
          


  <div class="updates-dropdown-container" data-js-hook="updates-dropdown-container">
    <a href="#" data-js-hook="show-updates-dropdown" id="show-updates-dropdown" class="show-updates-dropdown" aria-label="Subscribe to updates" aria-expanded="false">

    </a>

    <div class="updates-dropdown" data-js-hook="updates-dropdown" style="display:none">
      <div class="updates-dropdown-nav nav-items-4">
          <a href="#updates-dropdown-twitter" id="updates-dropdown-twitter-btn" aria-label="Subscribe via twitter">
            <span class="icon-container twitter">
          </a>
          <a href="#updates-dropdown-support" id="updates-dropdown-support-btn" aria-label="Contact support">
            <span class="icon-container support">
          </a>
          <a href="#updates-dropdown-atom" id="updates-dropdown-atom-btn" aria-label="Subscribe via RSS">
            <span class="icon-container rss">
          </a>
        <a href="#" data-js-hook="updates-dropdown-close" id="updates-dropdown-close-btn" aria-label="Close subscribe form">
          x
        </a>
      </div>
      <div class="updates-dropdown-sections-container">




          <div class="updates-dropdown-section twitter" id="updates-dropdown-twitter" style="display:none">
            <a href="https://twitter.com/wodifystatus" class="twitter-follow-button" data-show-count="false" data-show-screen-name="true" data-width="59px">Follow @wodifystatus</a>
            or&nbsp;
            <a href="https://twitter.com/wodifystatus" target="_blank">view our profile</a>.
            <style>
              .twitter-follow-button {
                margin-bottom: -6px;
              }
            </style>

              <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
          </div>

          <div class="updates-dropdown-section support" id="updates-dropdown-support" style="display:none">
            Visit our <a target="_blank" href="http://help.wodify.com">support site</a>.
          </div>

          <div class="updates-dropdown-section atom" id="updates-dropdown-atom">
            Get the <a href="https://00bytzbd1ssp.statuspage.io/history.atom" target="_blank">Atom Feed</a> or <a href="https://00bytzbd1ssp.statuspage.io/history.rss" target="_blank">RSS Feed</a>.
          </div>
      </div>
    </div>
  </div>

      </div>
    </div>

</div>
 <!-- this is outside of the .container so that the cover photo can go full width on mobile -->

    <div class="container">
        <div class="page-status status-none">
          <span class="status font-large">
            All Systems Operational
          </span>
          <span class="last-updated-stamp  font-small"></span>
        </div>



        <div class="components-section font-regular">
    <div class="components-container one-column">
          <div class="component-container border-color is-group ">
  
<div data-component-id="83b9xgwfg3lg"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="component-group-opener">

   <span class="name">
       <span class="fa group-parent-indicator color-secondary font-small fa-plus-square-o"></span>
       <span>
         Wodify Core
       </span>
   </span>


  <span
    class="component-status tool"
    title="Groups take on the status of their most degraded child component or service. Click to see the status of the individual children."
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>


  <!-- children components -->
  <div class="child-components-container ">
      
<div data-component-id="2km1bk4j88g5"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      APIs
   </span>

    <span class="tooltip-base tool" title="Wodify APIs">?</span>

  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="mdlk8s75lbw8"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Online Sales Portal
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="ffj26nlz6hgg"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      POS Mobile App
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="s1b4lhgpgtq5"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Admin Mobile App
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="lzyt7mzt0t4z"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Athlete Mobile App
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="czkbk5nntlbh"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Database Server
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="6tzdcxh3mf2l"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Application Servers
   </span>

    <span class="tooltip-base tool" title="Wodify Front End Application Servers">?</span>

  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

  </div>
</div>

          <div class="component-container border-color is-group ">
  
<div data-component-id="qmj8h2jllsdd"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="component-group-opener">

   <span class="name">
       <span class="fa group-parent-indicator color-secondary font-small fa-plus-square-o"></span>
       <span>
         Wodify Arena, Rise & Live
       </span>
   </span>


  <span
    class="component-status tool"
    title="Groups take on the status of their most degraded child component or service. Click to see the status of the individual children."
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>


  <!-- children components -->
  <div class="child-components-container ">
      
<div data-component-id="vzspywvfcgyd"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Database Server
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

      
<div data-component-id="vrkss51bfgpg"
     class="component-inner-container status-green "
     data-component-status="operational"
     data-js-hook="">

   <span class="name">
      Application Servers
   </span>


  <span
    class="component-status "
    title=""
  >
    Operational
  </span>

  <span class="tool icon-indicator fa fa-check" title="Operational"></span>

</div>

  </div>
</div>

    </div>
    <div class="component-statuses-legend font-small">
  <div class="legend-item status-green">
    <span class="icon-indicator fa fa-check"></span>
    Operational
  </div>
  <div class="legend-item status-yellow">
    <span class="icon-indicator fa fa-minus-square"></span>
    Degraded Performance
  </div>
  <div class="legend-item status-orange">
    <span class="icon-indicator fa fa-exclamation-triangle"></span>
    Partial Outage
  </div>
  <div class="breaker"></div>
  <div class="legend-item status-red">
    <span class="icon-indicator fa fa-times"></span>
    Major Outage
  </div>
  <div class="legend-item status-blue">
    <span class="icon-indicator fa fa-wrench"></span>
    Maintenance
  </div>
</div>

  </div>




        <div class="custom-metrics-container" id="custom-metrics-container">
          <div class="timeframes-container">
            <a class="font-largest no-link" id="system-metrics" href="#system-metrics">System Metrics</a>
            <a href="#" class="timeframe color-secondary font-regular border-color" data-js-hook="data-time-period-toggle" data-time-period="month">Month</a>
            <a href="#" class="timeframe color-secondary font-regular border-color" data-js-hook="data-time-period-toggle" data-time-period="week"><span class="translation_missing" title="translation missing: en.week">Week</span></a>
            <a href="#" class="timeframe active color-secondary font-regular border-color" data-js-hook="data-time-period-toggle" data-time-period="day">Day</a>
          </div>
          <div class="metrics-container">
              <div class="metric border-color">
                <div class="metric-meta font-large">
                  <div class="metric-name color-primary">
                    Wodify Core Response Time
                                      </div>

                    <div data-js-hook="metrics-display-current-1n0kkbflm3xr" class="metric-average color-secondary"><span class="translation_missing" title="translation missing: en.fetching">Fetching</span></div>
                </div>
                   <div class="metrics-display-graph">
                    <div class="graph-container" id="metrics-display-graph-container-1n0kkbflm3xr" data-js-hook= "metrics-display-graph-container-1n0kkbflm3xr"></div>
                  </div>
              </div>
              <div class="metric border-color">
                <div class="metric-meta font-large">
                  <div class="metric-name color-primary">
                    Wodify Core Application Uptime
                                      </div>

                    <div data-js-hook="metrics-display-current-87ljkngf858x" class="metric-average color-secondary"><span class="translation_missing" title="translation missing: en.fetching">Fetching</span></div>
                </div>
                   <div class="metrics-display-graph">
                    <div class="graph-container" id="metrics-display-graph-container-87ljkngf858x" data-js-hook= "metrics-display-graph-container-87ljkngf858x"></div>
                  </div>
              </div>
              <div class="metric border-color">
                <div class="metric-meta font-large">
                  <div class="metric-name color-primary">
                    Wodify Arena Response Time
                                      </div>

                    <div data-js-hook="metrics-display-current-7h6j36xwscxs" class="metric-average color-secondary"><span class="translation_missing" title="translation missing: en.fetching">Fetching</span></div>
                </div>
                   <div class="metrics-display-graph">
                    <div class="graph-container" id="metrics-display-graph-container-7h6j36xwscxs" data-js-hook= "metrics-display-graph-container-7h6j36xwscxs"></div>
                  </div>
              </div>
              <div class="metric border-color">
                <div class="metric-meta font-large">
                  <div class="metric-name color-primary">
                    Wodify Arena Application Uptime
                                      </div>

                    <div data-js-hook="metrics-display-current-r2wbzsd6f4d0" class="metric-average color-secondary"><span class="translation_missing" title="translation missing: en.fetching">Fetching</span></div>
                </div>
                   <div class="metrics-display-graph">
                    <div class="graph-container" id="metrics-display-graph-container-r2wbzsd6f4d0" data-js-hook= "metrics-display-graph-container-r2wbzsd6f4d0"></div>
                  </div>
              </div>
          </div>
        </div>


      <div class="incidents-list format-expanded">
        <a class="font-largest no-link" id="past-incidents" href="#past-incidents">Past Incidents</a>
          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">22</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported today.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">21</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">20</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">19</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">18</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">17</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">16</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">15</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">14</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">13</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">12</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">11</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date">10</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date"> 9</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

          
  <div class="status-day font-regular no-incidents">
    <div class="date border-color font-large">Jan <var data-var="date"> 8</var>, <var data-var="year">2021</var></div>
        <p class="color-secondary">No incidents reported.</p>
  </div>

      </div>


      <div class="page-footer border-color font-small">
          <a href="/history" class="history-footer-link"><span style="font-family:arial">&larr;</span> Incident History</a>

        <span class="color-secondary powered-by"><a class="color-secondary" target="_blank" rel="noopener noreferrer nofollow" href="https://www.atlassian.com/software/statuspage/powered-by?utm_campaign=status.wodify.com&amp;utm_content=status-pages&amp;utm_medium=powered-by&amp;utm_source=inapp">Powered by Statuspage</a></span>
      </div>
    </div>

    

  </div>



  <!-- custom metrics stuff -->
  




    <script src="https://dka575ofm4ao0.cloudfront.net/assets/status_manifest-b4a6db189b59ecb282e04bde6731bc6686b04d31be55874b7d4353cfc9da007d.js"></script>
    <div id="cpt-notification-container"></div>
    




    <!-- all of the content_for stuff -->
      <script src="https://dka575ofm4ao0.cloudfront.net/assets/register_subscription_form-879ad6742751a5926359f0430c1692c94f00c87d533ed504ee28db2c0de01100.js"></script>

  <script type="text/javascript">


  </script>
  <script src="https://dka575ofm4ao0.cloudfront.net/assets/status_common-b059787fd2480825e068a19542051bd88613ab38786324ccf188976e76e013b5.js"></script>
    <script>
      SP.pollForChanges('/api/v2/status.json');
    </script>

  <script>
    $(function() {
      $('.tool').tooltipster({
        animationDuration: 100,
        contentAsHTML: true,
        delay: 100,
        theme: 'tooltipster-borderless',
        functionInit: function (instance, helper) {
          var $origin = $(helper.origin),
              dataOptions = $origin.attr('data-tooltip-config');
          if (dataOptions){
            dataOptions = JSON.parse(dataOptions);
            $.each(dataOptions, function(name, option){
                instance.option(name, option);
            });
          }
        }
      });
      // clicks on first tab in subscribe popout since we won't know which is first
      // upon construction in the ruby code
      $('.updates-dropdown-nav > a').eq(0).click();

      // twitter follow button needs some margin
      $('.twitter-follow-button').css('margin-right', '6px');
    });

    $(function() {
      // open/close component groups
      HRB.utils.djshook('component-group-opener').on('click', function() {
        $(this).find('.group-parent-indicator').toggleClass('fa-plus-square-o').toggleClass('fa-minus-square-o').end().parent().toggleClass('open');
      });
    });

    $(function() {
      $(document).on('ajax:complete', '.modal.in', function(e) {
        // Close the active modal.
        $('.modal.in').modal('hide');
      });
    });

  </script>
  <script src="https://dka575ofm4ao0.cloudfront.net/assets/vendor/highstock.min-9de8c325692300efdf4b01e93caaa5668693434b74882c25c3b13d58b2d583cb.js"></script>

  <script>
    //<![CDATA[
    String.prototype.commafy = function () {
      return this.replace(/(^|[^\w.])(\d{4,})/g, function($0, $1, $2) {
        return $1 + $2.replace(/\d(?=(?:\d\d\d)+(?!\d))/g, "$&,");
      });
    }

    Number.prototype.commafy = function () {
      return String(this).commafy();
    }

    $(function() {
      SP.currentPage.numberToDecimalPlaces = function(num, dec) {
        if (dec == 0) {
          return Math.round(num).commafy();
        }

        newnum = num.toFixed(dec)
        var finalValue;

        // this gets rid of the 100.000% thing
        if (num == parseInt(newnum))
          finalValue = Math.round(num);
        else
          finalValue = newnum;

        return finalValue.commafy();
      }

      SP.currentPage.getDataForTimePeriod = function(period) {
          $.ajax({
            type: "GET",
            // this line must be end up with "//status.*" type of URLs (no protocol, just leading slashes). customers use SSL through us or by offloading with
            // cloudflare or something like it and the request.protocol the server sees is different than what the browser sees
            url: "//00bytzbd1ssp.statuspage.io/metrics-display/1n0kkbflm3xr/_.json".replace('_', period)
          }).done(function(metricsDisplay, textStatus, xhr) {
            var summary = metricsDisplay.summary
              , $metricSummaryLabel = HRB.utils.djshook('metrics-display-current-1n0kkbflm3xr')
              , $graphContainer = HRB.utils.djshook('metrics-display-graph-container-1n0kkbflm3xr');
            var errorMsg = null;

            if(summary === "unavailable") {
              errorMsg = 'We\'re having issues retrieving data for <strong>Wodify Core Response Time</strong>.</div>';
            } else if(summary) {
              // we need to do a basic check to make sure we have any data at all
              var hasDataRollupsAvailable = false;
              for(var h = 0; h < metricsDisplay.metrics.length; h++) {
                if(metricsDisplay.metrics[h].data.length > 0) {
                  hasDataRollupsAvailable = true;
                  break;
                }
              }
              if(!hasDataRollupsAvailable) {
                errorMsg = "Oops! No data has been indexed for <strong>Wodify Core Response Time</strong> for this time period yet.";
              }
            } else {
              errorMsg = "Failed to load. <strong>Wodify Core Response Time</strong>";
            }

            if(errorMsg !== null) {
              $metricSummaryLabel.text("--"); // display -- instead of number
              $graphContainer.html('<div class="small"  style="text-align:center;">' + errorMsg + '</div>'); // removed .parent().find('.metric-meta').remove() so name still shows
              $graphContainer.removeAttr("style");
              return;
            }

            $graphContainer.show();
            $graphContainer.attr("style", "height: 120px"); // set style after error message removed it
            // proceed since we have data
            $metricSummaryLabel.text(SP.currentPage.numberToDecimalPlaces(summary['mean'], 0 ) + ' ms');

            var metricDataPoints = {}
              , intervalMsec = metricsDisplay.period.interval * 1000;

            var startingBucketMsec = parseInt((new Date()).getTime() / intervalMsec) * intervalMsec;

            for(var h = 0; h < metricsDisplay.metrics.length; h++) {
              metricDataPoints[metricsDisplay.metrics[h].metric.id] = []
              var data = metricsDisplay.metrics[h].data
                , currentBucketMsec = startingBucketMsec;

              for(var i = metricsDisplay.period.count; i > 0; i--) {
                // loop over the data and pull out the data point with the following characteristics
                //  -> closest to currentBucketMsec
                //  -> without being greater than currentMsecBucket
                //  -> without being more than 1 intervalMsec bucket away
                var valueToUse = null;
                for(var j = data.length - 1; j >= 0; j--) {
                  var currentTimestampMsec = data[j].timestamp * 1000;
                  if(currentTimestampMsec <= currentBucketMsec && currentTimestampMsec > (currentBucketMsec - intervalMsec)) {
                    valueToUse = data[j].value;
                    // console.log("Using ts:" + currentTimestampMsec + " with value:" + valueToUse + " for bucket:" + currentBucketMsec);
                    break;
                  }
                }

                // local time
                var offset = -1 * (new Date()).getTimezoneOffset() * 60 * 1000;

                metricDataPoints[metricsDisplay.metrics[h].metric.id].push([currentBucketMsec + offset, valueToUse])
                  currentBucketMsec -= intervalMsec;
              }

              metricDataPoints[metricsDisplay.metrics[h].metric.id].reverse();
            }

                  // set Global options
      Highcharts.setOptions({
        lang: {
          thousandsSep: ','
        }
      });

      $('#metrics-display-graph-container-1n0kkbflm3xr').highcharts('StockChart', {
        plotOptions : {
          series : {
            animation : false,
            color : '#000000',
            connectNulls: false
          },
        },

        chart : {
          backgroundColor: '#ffffff'
        },

        title : {
          text: '',
          style: {
                display: 'none',
             }
        },

        credits : {
          enabled : false
        },

        exporting : {
          enabled : false
        },

        rangeSelector : {
          enabled : false
        },

        scrollbar : {
          enabled : false
        },

        navigator : {
          enabled : false
        },

        xAxis: {
          gridLineColor : 'rgba(224,224,224,.8)',
          labels: {
            style : {
              color: '#AAAAAA'
            }
          },
          lineColor: '#E0E0E0',
        },

        yAxis: {
          gridLineColor : 'rgba(224,224,224,.5)',
          labels: {
            align: 'left',
            x: 5,
            y: 3,
            style : {
              color: '#AAAAAA'
            },
            enabled : true
          },
          showLastLabel: true,
                         tickPixelInterval: 40,
               min: 0.0,
               startOnTick: false,

        },

        series : [
              {
      name : 'Wodify Core Response Time',
      data : metricDataPoints['gdkkryh4y3hk'],
      tooltip: {
        valueSuffix: ' ms'
      },
      enableMouseTracking : ($(window).outerWidth() > 480) && true
    }

        ],

        tooltip: {
          borderWidth: 0,
          enabled: ($(window).outerWidth() > 480) && true,
          headerFormat: "<span style='font-size: 10px'>{point.key}  </span>",
          hideDelay: 300,
          pointFormat: "<span style='color:{point.color}'>●</span>  <b>{point.y}</b><br/>",
          positioner: function() { return {x: 0, y: 0 }; },
          shadow: false,
          shape: "square",
          split: false
        }
      });

          });
          $.ajax({
            type: "GET",
            // this line must be end up with "//status.*" type of URLs (no protocol, just leading slashes). customers use SSL through us or by offloading with
            // cloudflare or something like it and the request.protocol the server sees is different than what the browser sees
            url: "//00bytzbd1ssp.statuspage.io/metrics-display/87ljkngf858x/_.json".replace('_', period)
          }).done(function(metricsDisplay, textStatus, xhr) {
            var summary = metricsDisplay.summary
              , $metricSummaryLabel = HRB.utils.djshook('metrics-display-current-87ljkngf858x')
              , $graphContainer = HRB.utils.djshook('metrics-display-graph-container-87ljkngf858x');
            var errorMsg = null;

            if(summary === "unavailable") {
              errorMsg = 'We\'re having issues retrieving data for <strong>Wodify Core Application Uptime</strong>.</div>';
            } else if(summary) {
              // we need to do a basic check to make sure we have any data at all
              var hasDataRollupsAvailable = false;
              for(var h = 0; h < metricsDisplay.metrics.length; h++) {
                if(metricsDisplay.metrics[h].data.length > 0) {
                  hasDataRollupsAvailable = true;
                  break;
                }
              }
              if(!hasDataRollupsAvailable) {
                errorMsg = "Oops! No data has been indexed for <strong>Wodify Core Application Uptime</strong> for this time period yet.";
              }
            } else {
              errorMsg = "Failed to load. <strong>Wodify Core Application Uptime</strong>";
            }

            if(errorMsg !== null) {
              $metricSummaryLabel.text("--"); // display -- instead of number
              $graphContainer.html('<div class="small"  style="text-align:center;">' + errorMsg + '</div>'); // removed .parent().find('.metric-meta').remove() so name still shows
              $graphContainer.removeAttr("style");
              return;
            }

            $graphContainer.show();
            $graphContainer.attr("style", "height: 120px"); // set style after error message removed it
            // proceed since we have data
            $metricSummaryLabel.text(SP.currentPage.numberToDecimalPlaces(summary['mean'], 1 ) + '');

            var metricDataPoints = {}
              , intervalMsec = metricsDisplay.period.interval * 1000;

            var startingBucketMsec = parseInt((new Date()).getTime() / intervalMsec) * intervalMsec;

            for(var h = 0; h < metricsDisplay.metrics.length; h++) {
              metricDataPoints[metricsDisplay.metrics[h].metric.id] = []
              var data = metricsDisplay.metrics[h].data
                , currentBucketMsec = startingBucketMsec;

              for(var i = metricsDisplay.period.count; i > 0; i--) {
                // loop over the data and pull out the data point with the following characteristics
                //  -> closest to currentBucketMsec
                //  -> without being greater than currentMsecBucket
                //  -> without being more than 1 intervalMsec bucket away
                var valueToUse = null;
                for(var j = data.length - 1; j >= 0; j--) {
                  var currentTimestampMsec = data[j].timestamp * 1000;
                  if(currentTimestampMsec <= currentBucketMsec && currentTimestampMsec > (currentBucketMsec - intervalMsec)) {
                    valueToUse = data[j].value;
                    // console.log("Using ts:" + currentTimestampMsec + " with value:" + valueToUse + " for bucket:" + currentBucketMsec);
                    break;
                  }
                }

                // local time
                var offset = -1 * (new Date()).getTimezoneOffset() * 60 * 1000;

                metricDataPoints[metricsDisplay.metrics[h].metric.id].push([currentBucketMsec + offset, valueToUse])
                  currentBucketMsec -= intervalMsec;
              }

              metricDataPoints[metricsDisplay.metrics[h].metric.id].reverse();
            }

                  // set Global options
      Highcharts.setOptions({
        lang: {
          thousandsSep: ','
        }
      });

      $('#metrics-display-graph-container-87ljkngf858x').highcharts('StockChart', {
        plotOptions : {
          series : {
            animation : false,
            color : '#000000',
            connectNulls: false
          },
        },

        chart : {
          backgroundColor: '#ffffff'
        },

        title : {
          text: '',
          style: {
                display: 'none',
             }
        },

        credits : {
          enabled : false
        },

        exporting : {
          enabled : false
        },

        rangeSelector : {
          enabled : false
        },

        scrollbar : {
          enabled : false
        },

        navigator : {
          enabled : false
        },

        xAxis: {
          gridLineColor : 'rgba(224,224,224,.8)',
          labels: {
            style : {
              color: '#AAAAAA'
            }
          },
          lineColor: '#E0E0E0',
        },

        yAxis: {
          gridLineColor : 'rgba(224,224,224,.5)',
          labels: {
            align: 'left',
            x: 5,
            y: 3,
            style : {
              color: '#AAAAAA'
            },
            enabled : true
          },
          showLastLabel: true,
                        tickPositions: [0.0, 50.0, 100.0],
               min: 0.0,
               startOnTick: false,
               max: 100.0,
               endOnTick: false,

        },

        series : [
              {
      name : 'Wodify Core Application Uptime',
      data : metricDataPoints['qvv9jqxy5mph'],
      tooltip: {
        valueSuffix: ''
      },
      enableMouseTracking : ($(window).outerWidth() > 480) && true
    }

        ],

        tooltip: {
          borderWidth: 0,
          enabled: ($(window).outerWidth() > 480) && true,
          headerFormat: "<span style='font-size: 10px'>{point.key}  </span>",
          hideDelay: 300,
          pointFormat: "<span style='color:{point.color}'>●</span>  <b>{point.y}</b><br/>",
          positioner: function() { return {x: 0, y: 0 }; },
          shadow: false,
          shape: "square",
          split: false
        }
      });

          });
          $.ajax({
            type: "GET",
            // this line must be end up with "//status.*" type of URLs (no protocol, just leading slashes). customers use SSL through us or by offloading with
            // cloudflare or something like it and the request.protocol the server sees is different than what the browser sees
            url: "//00bytzbd1ssp.statuspage.io/metrics-display/7h6j36xwscxs/_.json".replace('_', period)
          }).done(function(metricsDisplay, textStatus, xhr) {
            var summary = metricsDisplay.summary
              , $metricSummaryLabel = HRB.utils.djshook('metrics-display-current-7h6j36xwscxs')
              , $graphContainer = HRB.utils.djshook('metrics-display-graph-container-7h6j36xwscxs');
            var errorMsg = null;

            if(summary === "unavailable") {
              errorMsg = 'We\'re having issues retrieving data for <strong>Wodify Arena Response Time</strong>.</div>';
            } else if(summary) {
              // we need to do a basic check to make sure we have any data at all
              var hasDataRollupsAvailable = false;
              for(var h = 0; h < metricsDisplay.metrics.length; h++) {
                if(metricsDisplay.metrics[h].data.length > 0) {
                  hasDataRollupsAvailable = true;
                  break;
                }
              }
              if(!hasDataRollupsAvailable) {
                errorMsg = "Oops! No data has been indexed for <strong>Wodify Arena Response Time</strong> for this time period yet.";
              }
            } else {
              errorMsg = "Failed to load. <strong>Wodify Arena Response Time</strong>";
            }

            if(errorMsg !== null) {
              $metricSummaryLabel.text("--"); // display -- instead of number
              $graphContainer.html('<div class="small"  style="text-align:center;">' + errorMsg + '</div>'); // removed .parent().find('.metric-meta').remove() so name still shows
              $graphContainer.removeAttr("style");
              return;
            }

            $graphContainer.show();
            $graphContainer.attr("style", "height: 120px"); // set style after error message removed it
            // proceed since we have data
            $metricSummaryLabel.text(SP.currentPage.numberToDecimalPlaces(summary['mean'], 0 ) + ' ms');

            var metricDataPoints = {}
              , intervalMsec = metricsDisplay.period.interval * 1000;

            var startingBucketMsec = parseInt((new Date()).getTime() / intervalMsec) * intervalMsec;

            for(var h = 0; h < metricsDisplay.metrics.length; h++) {
              metricDataPoints[metricsDisplay.metrics[h].metric.id] = []
              var data = metricsDisplay.metrics[h].data
                , currentBucketMsec = startingBucketMsec;

              for(var i = metricsDisplay.period.count; i > 0; i--) {
                // loop over the data and pull out the data point with the following characteristics
                //  -> closest to currentBucketMsec
                //  -> without being greater than currentMsecBucket
                //  -> without being more than 1 intervalMsec bucket away
                var valueToUse = null;
                for(var j = data.length - 1; j >= 0; j--) {
                  var currentTimestampMsec = data[j].timestamp * 1000;
                  if(currentTimestampMsec <= currentBucketMsec && currentTimestampMsec > (currentBucketMsec - intervalMsec)) {
                    valueToUse = data[j].value;
                    // console.log("Using ts:" + currentTimestampMsec + " with value:" + valueToUse + " for bucket:" + currentBucketMsec);
                    break;
                  }
                }

                // local time
                var offset = -1 * (new Date()).getTimezoneOffset() * 60 * 1000;

                metricDataPoints[metricsDisplay.metrics[h].metric.id].push([currentBucketMsec + offset, valueToUse])
                  currentBucketMsec -= intervalMsec;
              }

              metricDataPoints[metricsDisplay.metrics[h].metric.id].reverse();
            }

                  // set Global options
      Highcharts.setOptions({
        lang: {
          thousandsSep: ','
        }
      });

      $('#metrics-display-graph-container-7h6j36xwscxs').highcharts('StockChart', {
        plotOptions : {
          series : {
            animation : false,
            color : '#000000',
            connectNulls: false
          },
        },

        chart : {
          backgroundColor: '#ffffff'
        },

        title : {
          text: '',
          style: {
                display: 'none',
             }
        },

        credits : {
          enabled : false
        },

        exporting : {
          enabled : false
        },

        rangeSelector : {
          enabled : false
        },

        scrollbar : {
          enabled : false
        },

        navigator : {
          enabled : false
        },

        xAxis: {
          gridLineColor : 'rgba(224,224,224,.8)',
          labels: {
            style : {
              color: '#AAAAAA'
            }
          },
          lineColor: '#E0E0E0',
        },

        yAxis: {
          gridLineColor : 'rgba(224,224,224,.5)',
          labels: {
            align: 'left',
            x: 5,
            y: 3,
            style : {
              color: '#AAAAAA'
            },
            enabled : true
          },
          showLastLabel: true,
                         tickPixelInterval: 40,
               min: 0.0,
               startOnTick: false,

        },

        series : [
              {
      name : 'Wodify Arena Response Time',
      data : metricDataPoints['x6nm06bffqw8'],
      tooltip: {
        valueSuffix: ' ms'
      },
      enableMouseTracking : ($(window).outerWidth() > 480) && true
    }

        ],

        tooltip: {
          borderWidth: 0,
          enabled: ($(window).outerWidth() > 480) && true,
          headerFormat: "<span style='font-size: 10px'>{point.key}  </span>",
          hideDelay: 300,
          pointFormat: "<span style='color:{point.color}'>●</span>  <b>{point.y}</b><br/>",
          positioner: function() { return {x: 0, y: 0 }; },
          shadow: false,
          shape: "square",
          split: false
        }
      });

          });
          $.ajax({
            type: "GET",
            // this line must be end up with "//status.*" type of URLs (no protocol, just leading slashes). customers use SSL through us or by offloading with
            // cloudflare or something like it and the request.protocol the server sees is different than what the browser sees
            url: "//00bytzbd1ssp.statuspage.io/metrics-display/r2wbzsd6f4d0/_.json".replace('_', period)
          }).done(function(metricsDisplay, textStatus, xhr) {
            var summary = metricsDisplay.summary
              , $metricSummaryLabel = HRB.utils.djshook('metrics-display-current-r2wbzsd6f4d0')
              , $graphContainer = HRB.utils.djshook('metrics-display-graph-container-r2wbzsd6f4d0');
            var errorMsg = null;

            if(summary === "unavailable") {
              errorMsg = 'We\'re having issues retrieving data for <strong>Wodify Arena Application Uptime</strong>.</div>';
            } else if(summary) {
              // we need to do a basic check to make sure we have any data at all
              var hasDataRollupsAvailable = false;
              for(var h = 0; h < metricsDisplay.metrics.length; h++) {
                if(metricsDisplay.metrics[h].data.length > 0) {
                  hasDataRollupsAvailable = true;
                  break;
                }
              }
              if(!hasDataRollupsAvailable) {
                errorMsg = "Oops! No data has been indexed for <strong>Wodify Arena Application Uptime</strong> for this time period yet.";
              }
            } else {
              errorMsg = "Failed to load. <strong>Wodify Arena Application Uptime</strong>";
            }

            if(errorMsg !== null) {
              $metricSummaryLabel.text("--"); // display -- instead of number
              $graphContainer.html('<div class="small"  style="text-align:center;">' + errorMsg + '</div>'); // removed .parent().find('.metric-meta').remove() so name still shows
              $graphContainer.removeAttr("style");
              return;
            }

            $graphContainer.show();
            $graphContainer.attr("style", "height: 120px"); // set style after error message removed it
            // proceed since we have data
            $metricSummaryLabel.text(SP.currentPage.numberToDecimalPlaces(summary['mean'], 1 ) + '%');

            var metricDataPoints = {}
              , intervalMsec = metricsDisplay.period.interval * 1000;

            var startingBucketMsec = parseInt((new Date()).getTime() / intervalMsec) * intervalMsec;

            for(var h = 0; h < metricsDisplay.metrics.length; h++) {
              metricDataPoints[metricsDisplay.metrics[h].metric.id] = []
              var data = metricsDisplay.metrics[h].data
                , currentBucketMsec = startingBucketMsec;

              for(var i = metricsDisplay.period.count; i > 0; i--) {
                // loop over the data and pull out the data point with the following characteristics
                //  -> closest to currentBucketMsec
                //  -> without being greater than currentMsecBucket
                //  -> without being more than 1 intervalMsec bucket away
                var valueToUse = null;
                for(var j = data.length - 1; j >= 0; j--) {
                  var currentTimestampMsec = data[j].timestamp * 1000;
                  if(currentTimestampMsec <= currentBucketMsec && currentTimestampMsec > (currentBucketMsec - intervalMsec)) {
                    valueToUse = data[j].value;
                    // console.log("Using ts:" + currentTimestampMsec + " with value:" + valueToUse + " for bucket:" + currentBucketMsec);
                    break;
                  }
                }

                // local time
                var offset = -1 * (new Date()).getTimezoneOffset() * 60 * 1000;

                metricDataPoints[metricsDisplay.metrics[h].metric.id].push([currentBucketMsec + offset, valueToUse])
                  currentBucketMsec -= intervalMsec;
              }

              metricDataPoints[metricsDisplay.metrics[h].metric.id].reverse();
            }

                  // set Global options
      Highcharts.setOptions({
        lang: {
          thousandsSep: ','
        }
      });

      $('#metrics-display-graph-container-r2wbzsd6f4d0').highcharts('StockChart', {
        plotOptions : {
          series : {
            animation : false,
            color : '#000000',
            connectNulls: false
          },
        },

        chart : {
          backgroundColor: '#ffffff'
        },

        title : {
          text: '',
          style: {
                display: 'none',
             }
        },

        credits : {
          enabled : false
        },

        exporting : {
          enabled : false
        },

        rangeSelector : {
          enabled : false
        },

        scrollbar : {
          enabled : false
        },

        navigator : {
          enabled : false
        },

        xAxis: {
          gridLineColor : 'rgba(224,224,224,.8)',
          labels: {
            style : {
              color: '#AAAAAA'
            }
          },
          lineColor: '#E0E0E0',
        },

        yAxis: {
          gridLineColor : 'rgba(224,224,224,.5)',
          labels: {
            align: 'left',
            x: 5,
            y: 3,
            style : {
              color: '#AAAAAA'
            },
            enabled : true
          },
          showLastLabel: true,
                        tickPositions: [0.0, 50.0, 100.0],
               min: 0.0,
               startOnTick: false,
               max: 100.0,
               endOnTick: false,

        },

        series : [
              {
      name : 'Wodify Arena Application Uptime',
      data : metricDataPoints['k3x1kj7dwn57'],
      tooltip: {
        valueSuffix: '%'
      },
      enableMouseTracking : ($(window).outerWidth() > 480) && true
    }

        ],

        tooltip: {
          borderWidth: 0,
          enabled: ($(window).outerWidth() > 480) && true,
          headerFormat: "<span style='font-size: 10px'>{point.key}  </span>",
          hideDelay: 300,
          pointFormat: "<span style='color:{point.color}'>●</span>  <b>{point.y}</b><br/>",
          positioner: function() { return {x: 0, y: 0 }; },
          shadow: false,
          shape: "square",
          split: false
        }
      });

          });
      }

      var $timePeriodToggles = HRB.utils.djshook('data-time-period-toggle');

      SP.currentPage.activeTimePeriodToggle = function(period) {
        $timePeriodToggles.removeClass('active');
        $timePeriodToggles.filter('[data-time-period="' + period + '"]').addClass('active');
      }

      SP.currentPage.getAndDisplayInitialChartData = function() {
        if (window.location.hash == '#week') {
          SP.currentPage.getDataForTimePeriod('week');
          SP.currentPage.activeTimePeriodToggle('week');
        }
        else if (window.location.hash == '#month') {
          SP.currentPage.getDataForTimePeriod('month');
          SP.currentPage.activeTimePeriodToggle('month');
        }
        else {
          SP.currentPage.getDataForTimePeriod('day');
          SP.currentPage.activeTimePeriodToggle('day');
        }
      }

      $timePeriodToggles.on('click', function() {
        var newPeriod = $(this).attr('data-time-period');

        SP.currentPage.activeTimePeriodToggle(newPeriod);
        SP.currentPage.getDataForTimePeriod(newPeriod);
        window.location.hash = newPeriod;

        return false;
      });

      SP.currentPage.getAndDisplayInitialChartData();
    })
    //]]>
  </script>



      <script>
  /** INITIALIZATION **/
  var recaptchaIds = {}

  // Unfortunately there's no unique selectors on the parent divs that recaptcha adds. The first unique selector
  // is the iframe rendered 2 levels deep. So this waits until the iframes are added to the page, then finds
  // the parent div and sets the z index so that it'll render above our modals & dropdowns from the start.
  function setZIndex(captchaCount, startTime) {
    // bail after 10s just in case so we don't do this forever if something whaky happens
    if (new Date() - startTime > 10000) {
      return;
    }

    var iframes = document.querySelectorAll('iframe[title="recaptcha challenge"]');
    if (iframes.length != captchaCount) {
      setTimeout(function() {
        setZIndex(captchaCount, startTime);
      }, 500);
    }

    for (var i = 0; i < iframes.length; i++) {
      // incident subscribe modal is 1050, so this has to be above that
      iframes[i].parentElement.parentElement.style.zIndex = "1100";
    }
  }

  function addIncidentCaptcha() {
    var incidentCaptcha = document.createElement('div');
    incidentCaptcha.setAttribute('id', 'subscribe-incident-recaptcha');
    incidentCaptcha.setAttribute('class', 'g-recaptcha');
    incidentCaptcha.setAttribute('data-sitekey', '6LcZ-b0UAAAAAENi956aWzynTT2ZJ80dGU3F80Op');
    incidentCaptcha.setAttribute('data-callback', 'submitIncidentSubscriberSuccess');
    incidentCaptcha.setAttribute('data-error-callback', 'submitIncidentSubscriberError');
    incidentCaptcha.setAttribute('data-size', 'invisible');
    document.body.appendChild(incidentCaptcha);
    var incidentCode = document.createElement('input');
    incidentCode.setAttribute('type', 'hidden');
    incidentCode.setAttribute('id', 'submit_incident_code');
    document.body.appendChild(incidentCode);
  }

  var onloadCallback = function() {
    // if there is an incident, then add incident captcha element
    if (document.getElementsByClassName('modal-open-incident-subscribe').length > 0) {
      addIncidentCaptcha();
    }

    var captchas = document.getElementsByClassName("g-recaptcha");

    for(var i = 0; i < captchas.length; i++) {
      var elId = captchas[i].id;
      recaptchaIds[elId] = grecaptcha.render(elId);
    }

    setZIndex(captchas.length, new Date());
  }


  /** SUBSCRIBE DROPDOWN */

  // callbacks for captcha success
  function submitNewSubscriber(type, error) {
    if (error) document.querySelector('#subscribe-form-' + type + ' #captcha_error').value = 'true';

    document.getElementById('subscribe-form-' + type).dispatchEvent(new Event('submit', {bubbles: true, cancelable: true}));
    grecaptcha.reset(recaptchaIds['subscribe-btn-' + type]);
  }
  function submitNewEmailSubscriber(token) {
    submitNewSubscriber('email');
  }
  function submitNewSmsSubscriber(token) {
    submitNewSubscriber('sms');
  }
  function submitNewWebhookSubscriber(token) {
    submitNewSubscriber('webhook');
  }
  function submitIncidentSubscriber(token, error) {
    var incidentCode = document.getElementById('submit_incident_code').value;
    var incidentForm = document.getElementById('subscribe-form-' + incidentCode);

    incidentForm.querySelector('input[name="captcha_error"]').value = error;
    incidentForm.querySelector('input[name="g-recaptcha-response"]').value = token;
    incidentForm.dispatchEvent(new Event('submit', {bubbles: true, cancelable: true}));
    grecaptcha.reset(recaptchaIds['subscribe-incident-recaptcha']);
  }
  function submitIncidentSubscriberSuccess(token) {
    submitIncidentSubscriber(token, 'false');
  }

  // callbacks if we get captcha network errors
  function emailSubscriberCaptchaError(token) {
    submitNewSubscriber('email', true);
  }
  function smsSubscriberCaptchaError(token) {
    submitNewSubscriber('sms', true);
  }
  function webhookSubscriberCaptchaError(token) {
    submitNewSubscriber('webhook', true);
  }
  function submitIncidentSubscriberError(token) {
    submitIncidentSubscriber(token, 'true');
  }

  // tracking clicks
  ['email', 'sms', 'webhook'].forEach(function(type) {
    var el = document.getElementById('subscribe-btn-' + type);
    el && el.addEventListener("click", function() {
      $.ajax({
        type: "POST",
        url: "/subscriptions/track_attempt",
        data: {
          type: type
        }
      })
    })
  })

  // form submission success callbacks
  $('#subscribe-form-email').on('ajax:success', function(e, data, status, xhr){
    if (data.type === 'success') {
      SP.currentPage.updatesDropdown.hide();
      document.getElementById('email').value = '';
    }
  });
  $('#subscribe-form-sms').on('ajax:success', function(e, data, status, xhr){
    if (data.type === 'success') {
      SP.currentPage.updatesDropdown.hide();
      document.getElementById('phone-number').value = '';
    }
  });
  $('#subscribe-form-webhook').on('ajax:success', function(e, data, status, xhr){
    if (data.type === 'success') {
      SP.currentPage.updatesDropdown.hide();
      document.getElementById('endpoint-webhooks').value = '';
      document.getElementById('email-webhooks').value = '';
    }
  });

  function submitCaptchaIncidentSubscribe(event) {
    var incidentCode = event.target.id.split('-')[2];
    event.preventDefault();

    $.ajax({
      type: "POST",
      url: "/subscriptions/track_attempt",
      data: {
        type: 'incident'
      }
    })

    document.getElementById('submit_incident_code').value = incidentCode;
    grecaptcha.execute(recaptchaIds['subscribe-incident-recaptcha']);
  }
</script>

<script src='https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit' async defer></script>


    
  <script src="https://dka575ofm4ao0.cloudfront.net/packs/common-a6e2c4d802fa3f37c172.chunk.js"></script>
  <script src="https://dka575ofm4ao0.cloudfront.net/packs/globals-135813b9aea0a3a208ac.chunk.js"></script>

    <script src="https://dka575ofm4ao0.cloudfront.net/packs/runtime-2a31043c63a89f77e4f5.js"></script>
    
    


    <script>
  window.addEventListener('load', function () {
    const urlParams = new URLSearchParams(window.location.search);
    const messageToken = urlParams.get('slack_message_token');
    const channelName = escape(urlParams.get('channel_name'));

    if(!!messageToken) {
      switch(messageToken) {
        case 'slack_auth_error':
          HRB.utils.notify('The Slack authorization attempt was unsuccessful. Try again.', {cssClass:'error'});
          break;
        case 'subscribers_disabled_error':
          HRB.utils.notify('Slack subscriptions are not enabled on this page.', {cssClass:'error'});
          break;
        case 'direct_message_channel_error':
          HRB.utils.notify('Subscriptions aren’t supported in direct messages. Try subscribing again and choose a channel instead.', {cssClass:'error'});
          break
        case 'duplicate_error':
          HRB.utils.notify("You're already subscribed to get Slack notifications in that channel.", {cssClass:'error'});
          break;
        case 'duplicate_private_channel_error':
          HRB.utils.notify(`You're already subscribed to get Slack notifications in #${channelName}. Invite the @Statuspage app to that channel to start getting status updates.`, {cssClass: 'error'});
          break;
        case 'default_success':
          HRB.utils.notify("You're now subscribed to get Statuspage updates in Slack!", {cssClass:'success'});
          break;
        case 'private_channel_success':
          HRB.utils.notify(`IMPORTANT: Invite the @Statuspage app to your Slack channel #${channelName} to start getting status updates.`, {cssClass:'success'});
          break;
      }
    }
  });
</script>

    
<!-- FOR FLASH NOTICES -->

<!-- FOR ERROR -->


    <script>
  $(function() {
    var $link = $('<span class="color-secondary powered-by"><a class="color-secondary" target="_blank" rel="noopener noreferrer nofollow" href="https://www.atlassian.com/software/statuspage/powered-by?utm_campaign=status.wodify.com&amp;utm_content=status-pages&amp;utm_medium=powered-by&amp;utm_source=inapp">Powered by Statuspage</a></span>');

  	var setPoweredByStyles = function() {
  		if (!$('.powered-by').length) {
  			$link.appendTo($('.page-footer'))
  		}
  		$('.powered-by').attr('style', 'display: inline !important; visibility:visible !important; opacity: 1 !important; position:static !important; text-indent:0px !important; transform:scale(1) !important');
  	}

  	setInterval(setPoweredByStyles, 1000);
  });
</script>





  </body>
</html>
```