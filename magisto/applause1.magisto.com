```
<!DOCTYPE html>

<!--
  __  __             _     _
 |  \/  | __ _  __ _(_)___| |_ ___
 | |\/| |/ _` |/ _` | / __| __/ _ \
 | |  | | (_| | (_| | \__ \ || (_) |
 |_|  |_|\__,_|\__, |_|___/\__\___/
               |___/
-->


<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Language" content="en" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        
        
            
            <meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
            
        

        <link rel="canonical" href="https://applause1.magisto.com" />

        
        
            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, minimal-ui">
        
        

        <meta name="HandheldFriendly" content="True">
        <meta name="MobileOptimized" content="360"/>
        <meta name="apple-mobile-web-app-capable" content="yes">

        
        
            
                <link rel="shortcut icon" href="https://applause1.magisto.com/media/images/favicon.ico" type="image/vnd.microsoft.icon" />
                <link rel="icon" href="https://applause1.magisto.com/media/images/favicon.ico" type="image/x-icon" />
                <link rel="apple-touch-icon" href="https://applause1.magisto.com/media/images/magisto_ios_icon_large.jpg"/>
            
        

        
        <title>Online Video Editor | Smart Video Maker by Magisto</title>

        <meta name="description" content="Magisto online video editor is a fast & powerful video maker. Turn your photos and video clips into video stories with Magisto movie editor. Start free!">
        <meta name="keywords" content="video marketing, promo video, marketing videos, marketing your business, small business marketing, marketing video, online video marketing, marketing videos, marketing video, promotional videos, product video, online video marketing">

        
            <meta name="apple-itunes-app" content="app-id=486781045, app-argument=">
        

        
            <meta name="google-play-app" content="app-id=com.magisto">
        


        
        <meta property="fb:app_id" content="192161334139408" />
        
    <meta property="og:title" content="Online Video Editor | Smart Video Maker by Magisto"/>
    <meta property="og:type" content="article"/>
    <meta property="og:description" content="Magisto online video editor is a fast & powerful video maker. Turn your photos and video clips into video stories with Magisto movie editor. Start free!"/>
    <meta property="og:image" content="https://drrrhyhe9lfip.cloudfront.net/media/images/ogimage150998230369.jpeg"/>
    <meta property="og:url" content="https://applause1.magisto.com"/>



        
    <meta name="twitter:url" content="https://applause1.magisto.com">
    <meta name="twitter:title" content="Online Video Editor | Smart Video Maker by Magisto">
    <meta name="twitter:description" content="Magisto online video editor is a fast & powerful video maker. Turn your photos and video clips into video stories with Magisto movie editor. Start free!">
    <meta name="twitter:image" content="https://drrrhyhe9lfip.cloudfront.net/media/images/ogimage150998230369.jpeg">



        
            
            <!--<link rel="manifest" href="/media/new/js/apis/web-push/chrome/manifest.json">-->
            <link rel="manifest" href="/media/new/js/apis/web-push/chrome/manifest_proper_android_appinstall.json">
        

        
        
        
        
            
                
                    <link rel="Stylesheet" href="/media/new/components/normalize.min.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-fonts.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-spacing.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-popups.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-headers.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-notification-bar.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-tooltip.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base-footer.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/magisto-base.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/elements/form_inputs.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/css/elements/buttons.css" type="text/css" />
                    <link rel="Stylesheet" href="/media/new/components/flow-player/7.2.6/skin/skin.css" type="text/css"/>
                    <link rel="Stylesheet" href="/media/new/css/sections.css" type="text/css" />
                
            
        
        

    
    
        <script src="https://polyfill.io/v3/polyfill.min.js?version=3.52.1&amp;features=es2015%2Ces2016%2Ces2017%2Ces2018%2Ces2019"></script>
    

    
    
        <script>

            
            var globals = {
                app                 : 'magisto',
                is_debug 			: false,
                is_live 		    : false,
                is_authenticated 	: false,
                is_mobile 			: false,
                is_iphone			: false,
                is_ipad				: false,
                is_android          : false,
                is_desktop          : true,
                static_url 			: 'https://applause1.magisto.com/media/',
                sightera_server 	: 'applause1.magisto.com',
                protocol 			: 'https',
                has_https_support 	: true,
                prot_and_server 	: 'https://applause1.magisto.com',
                user_name			: null,
                is_business		 	: false,
                is_tryout           : false,
                can_remove_watermark: false,
                opt_in_trial        : false,
                opt_in_expire_days  : false,
                optin_upsell_id     : 'optin-business-upsell-popup',
                trial_period        : false,
                blocking_opt_in_trial: false,
                user_plan 			: '',
                has_stock           : false,
                has_getty_marketplace: false,
                can_tweak		    : false,
                can_ad			    : false,
                can_publish			: false,
				can_custompage 		: false,
                publish_branded	    : false,
                can_embed			: false,
                can_brand_video     : false,
                send_analytics 	    : false,
                got_cookies_consent : false,
                ab_tests            : {},
                CRM: { track: function(event_name, extra_data) {} },
                can_connect_to_vimeo: false,
                connected_to_vimeo: false,
                vimeo_account_eligibility: 'None',
                vimeo_user_email: '',
                vimeo_auto_share: false,
                vimeo_share_privacies: JSON.parse('[]'),
                vimeo_token_invalid: false,
                vimeo_connect_state: 'None',
                v6_support: true,
            };
            
                globals.ab_tests.web_pro_tier = false;
            
            
            globals.ab_tests.web_plus_tier = false;
            

            
                globals.ab_tests.web_upsell_image_text = false;
            

            
                globals.ab_tests.web_pro_upsell_popup = false;
            

            

            
            globals.prot_and_server = 'https://applause1.magisto.com';

            var fb_ad_id = null;
            var ad_account_id = null;
            var campaign_ids = null;

            
            globals.fb_ad_id = sessionStorage.getItem('fb_ad_id') || fb_ad_id;

            if(!!globals.fb_ad_id){
                globals.ad_account_id = sessionStorage.getItem('ad_account_id') || ad_account_id;
                globals.campaign_ids = sessionStorage.getItem('campaign_ids') || campaign_ids;

                sessionStorage.setItem('fb_ad_id', globals.fb_ad_id);
                sessionStorage.setItem('ad_account_id', globals.ad_account_id);
                sessionStorage.setItem('campaign_ids', globals.campaign_ids);
                sessionStorage.setItem('embed_on', globals.outerPlatform);
            }

            
            var _is_mobile = globals.is_mobile,
                _is_ipad = globals.is_ipad,
                _is_debug = globals.is_debug,
                _has_https_support = globals.has_https_support,
                _protocol = globals.protocol,
                _prot_and_server = globals.prot_and_server,
                _sightera_server = globals.sightera_server,
                _is_authenticated = globals.is_authenticated,
                _is_channel_admin = false,
                _is_ie = false;
                _google_api_key = 'AIzaSyBK9-ftya0s9CH1f9hzHZcw4QTThUcZRQQ';
                _google_client_id = '774247004952-e9enabia9n1d5m3o6hc8qp84v2ocjav1.apps.googleusercontent.com';
                _google_scope = 'profile email';
                _facebook_app_id = '192161334139408';
                _facebook_scope = 'email,user_about_me';

			var global_debug_queue = [];
			var global_debug_call = function() {};

        </script>

        

    

     
        
            
                <script type="text/javascript" src="/media/new/js/jquery-1.11.3.min.js"></script>
                <script src="/media/js/jquery-ui.min.js"></script>
                <script src="/media/new/js/ng/angular.min.js"></script>
                <script src="/media/new/js/ng/angular-sanitize.min.js"></script>
                <script src="/media/new/js/ng/utils.js"></script>
                <script src="/media/new/js/ng/main.js"></script>
                <script src="/media/new/js/ng/global_directives.js"></script>
                <script src="/media/new/js/global.js"></script>
                <script src="/media/js/managers.js"></script>
                <script src="/media/new/js/business/service.js"></script>
                <script src="/media/new/js/common/navigation.js"></script>
            
        

        
        

        <link rel="preload" as="font" href="/media/new/components/flow-player/7.2.6/skin/icons/magisto_player.ttf?ns2aoq" crossorigin="anonymous"/>
    

    

    
    
        
    

    
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-T4P8MR3');
</script>
<!-- End Google Tag Manager --> 
    </head>

    
    
        
        

        
        

        
    

    

    

    <body ng-cloak class="magisto_app    
                
                 " ng-app="magisto">
        <a id="page_top" name="page_top" href="javascript:void(0)"></a>

        <div id="fb-root"></div> 
        

        
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        

        

        
    
        
    
        
<header id="main_nav" class="mgsto_n_ws  ">
    
    
    
    
    
    
    
    
    
    
    
    <div class="mobile_overflow" onclick="hideHamburgerMenu()"></div>
    <div class="top_nav_placeholder "></div>
	<nav class="topnav original animate">


        <div class="all_wrap ">
            
            <div class="hamburger_wrap">
                
                    <a id="hamburger_icon" onclick="toggleHamburgerMenu()" class="icon animate" href="javascript:void(0);" ><span></span><span></span><span></span><span></span></a>
                
            </div>
            <div class="magisto_logo ">
                
                    <a href="/" class="animate" onclick="track_tableau_event('press','header','logo','magisto');">
                    
                            <img src="/media/new/img/logo_magisto.png" srcset="/media/new/img/logo_magisto_d@2x.png 2x, /media/new/img/logo_magisto.png 1x"/>
                            <img class="vimeo_magisto_logo hidden_logo" src="https://applause1.magisto.com/media/new/img/logo_magisto_by_vimeo.png" srcset="https://applause1.magisto.com/media/new/img/logo_magisto_by_vimeo@2x.png 2x, https://applause1.magisto.com/media/new/img/logo_magisto_by_vimeo.png 1x"/>
                    
                    </a>
                
            </div>
            
            
                
                    <div class="sticky_animation">
                        <span class="" onclick="getStartedClick()">Grow your business with video marketing. Join the revolution <i class="gen_icon right_arrow"></i></span>
                    </div>
                
            

            <ul class="top_menu animated hidden_top_menu">
                
                    <li class="first_line only_mobile">

    
    
        <a href="/connect?business&signup&next=%2Fbusiness%2Fpurchase%3Fvia%3Dget_started_main_cta%26prev_path%3D%2F&via=get_started_main_cta&prev_path=/" onclick="track_tableau_event('press','header','open create flow','get started'); button_link_track(event,'get_started_main_cta','/', '/connect')"><button id="create_btn" class="btn turq btn_create_movie small">Get started</button></a>
    



</li>
                
                
                    
                        
                            

<li class="nav_features  ">
    <a href="/templates?prev_path=/&via=top_menu"  onclick="track_tableau_event('press','header','templates','templates'); track_event('Website Header','Templates','');">
        Templates</a></li>
<li class="nav_business dropdown_container active "  onmouseleave="hideDropdownMenu();">
    <a id="business_navitem" href="/business-video?prev_path=/&via=top_menu" onclick="track_tableau_event('press','header','business','business'); track_event('Website Header','Business','');" onmouseenter="showDropdownMenu(this);">
        What you can do
        <span class="nav_dropdown_icon" onclick="showHideDropdownMenuMobileMenu(this);"></span>
    </a>
    <div class="dropdown_box dropdown_box_scroll">
        <ul>
            <li><a href="/video-maker?prev_path=/&via=top_menu" onclick="track_tableau_event('press','header','consumer','personal'); track_event('Website Header','Personal','');"><div>Video Maker</div></a></li>
            <li><a href="/real-estate-videos?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','Real Estate','');"><div>Real Estate</div></a></li>
            <li><a href="/fitness-video?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','Fitness','');"><div>Fitness</div></a></li>
            <li><a href="/marketing/cooking-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','cooking video maker','');"><div>Cooking</div></a></li>
            <li><a href="/photography?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','Photographers','');"><div>Photographers</div></a></li>
            <li><a href="/marketing/youtube-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','youtube video maker','');"><div>YouTube Ads</div></a></li>
            <li><a href="/marketing/video-ads-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','video ads','');"><div>Video Ads</div></a></li>
            <li><a href="/marketing/promo-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','promo video maker','');"><div>Promo</div></a></li>
            <li><a href="/marketing/facebook-video-ads-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','facebook video ads maker','');"><div>Facebook Ads</div></a></li>
            <li><a href="/marketing/instagram-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','Instagram video maker','');"><div>Instagram</div></a></li>
            <li><a href="/marketing/marketing-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','marketing video maker','');"><div>Marketing</div></a></li>
            <li><a href="/marketing/social-media-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','social media video maker','');"><div>Social Media</div></a></li>
            <li><a href="/marketing/video-slideshow-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','video slideshow maker','');"><div>Video Slideshow</div></a></li>
            <li><a href="/marketing/wedding-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','wedding video maker','');"><div>Wedding</div></a></li>
            <li><a href="/marketing/birthday-video-maker?via=business_top_menu&prev_path=/" onclick="track_event('User Menu','birthday video maker','');"><div>Birthday</div></a></li>
        </ul>
    </div>

</li>

<li>
    <a href="//www.magisto.com/blog/?prev_path=/&via=header" target="_blank" onclick="track_tableau_event('press','header','consumer','blog');">
        Blog</a></li>
<!--li class="">
    <a href="/features?prev_path=/" onclick="track_event('Website Header','Industries','');">
        Industries</a></li-->
<li class="nav_solutions  ">
    <a href="/promotional-video?prev_path=/&via=top_menu" onclick="track_tableau_event('press','header','solutions','solutions'); track_event('Website Header','Solutions','');">
        Solutions</a></li>
<li class="nav_explore  ">
    <a href="/explore?prev_path=/&via=top_menu" onclick="track_tableau_event('press','header','inspiration','explore'); track_event('Website Header','Explore','');">
        Explore</a></li>
<li class="nav_pricing  ">
    <a href="/pricing?prev_path=/&via=top_menu" onclick="track_tableau_event('press','header','pricing','pricing'); track_event('Website Header','Upgrade','');">
        Pricing</a></li>

                        
                    
                

                
                    <li class="only_mobile">
                        
                            
                                
                                    <a
                                        href="/connect?login&next=/&via=mobile_tm_login&prev_path=/"
                                        onclick="button_track(event, {evnt: 'press_button', type: 'mobile_tm_login' , destination_path: '/connect'});hideHamburgerMenu();" >
                                        Login
                                    </a>
                                
                            
                        
                    </li>
                


                <div class="clear"></div>
            </ul>
            
                <div class="user_box">
                        
                        <div class="side_wrap login only_big">
                            <a href="/connect?login&next=/&via=tm_login&prev_path=/" onclick="track_tableau_event('press','header','open sign in popup','sign in'); ">
                                <button class="btn trans dark">Sign In</button>
                            </a>
                        </div>
                        
                        
                        <div class="side_wrap create">
                            

    
    
        <a href="/connect?business&signup&next=%2Fbusiness%2Fpurchase%3Fvia%3Dget_started_main_cta%26prev_path%3D%2F&via=get_started_main_cta&prev_path=/" onclick="track_tableau_event('press','header','open create flow','get started'); button_link_track(event,'get_started_main_cta','/', '/connect')"><button id="create_btn" class="btn turq btn_create_movie ">Get started</button></a>
    




                        </div>
                        
                    
                    
                    
                </div>
            
            
        </div>
	</nav>

</header>

    

    

        
            
                
            
        

        

        
            
                <script>$("body").addClass('has-cookies-consent-bar')</script>
                <div class="notification_bar mgsto_n_ws cookies_consent">
    <script>

        var addCookiesConsent = function(){
            if(!!globals.got_cookies_consent) return;
            var cookie_name = 'cookies_consent';
            
            var next = window.location.href;
            var now = new Date(); var time = now.getTime(); time += 3600 * 1000 * 24 * 365 * 3; now.setTime(time);
            set_cookie(cookie_name,1, now.toUTCString() );
            globals.got_cookies_consent = true;
            cookies_bar_close();
            try {
                flush_page_events();
            } catch(err){}

        }

        var cookies_bar_close = function() {
    		//$('.notification_bar').slideUp();
            $('.notification_bar.cookies_consent').removeClass('open');
            $('.notification_bar.cookies_consent').hide();
            $('body').removeClass('has-cookies-consent-bar')
    	};
    </script>
    <div class="section_content notification_content pt-xxs pb-xxs">
        <div class="relative">
            <div class="cookies_consent_action text-center dark_text" onclick="$('.cookies_consent_section').addClass('open'); $(this).hide();$('body').removeClass('has-cookies-consent-bar')">
                This site uses cookies
                <a href="javascript.void(0);" onclick="event.preventDefault();$('.cookies_consent_section').addClass('open'); $(this).hide();$('body').removeClass('has-cookies-consent-bar')">Learn more</a>
            </div>
            <div class="cookies_consent_section">
                <div class=" text-left no-m dark_text smaller_text ">
                    We use cookies on this website. To find out more about cookies used on this website and your choices <a href="/cookies" target="_blank">Go here</a>.
                    <span class="inline-block mr-sm"></span>

                </div>
                <a class="cookies_accept only_big " href="javascript:void(0)" onclick="addCookiesConsent()">
                    <button class="btn trans light pl-xxxs pr-xxxs medium">Accept</button>
                </a>
                <div class="only_mobile text-right mt-xxxs">
                    <a class="cookies_accept text-right" href="javascript:void(0)" onclick="addCookiesConsent()">
                        <button class="btn trans light pl-xxxs pr-xxxs medium">Accept</button>
                    </a>
                </div>
            </div>
        </div>
    </div>

</div>

            
        

        

        
        
            
        
        

        
        <div class="main_content_wrap_box " >
            <div id="magisto_body" class="">
                
                
    
    
    
    
    
    
        <section class="big_bg_with_m_icons animate shown hp_top_banner ">
    <div class="background_image">
        <div class="image_overlay"></div>
        
        <div class="video_bg">
            <video loop muted autoplay playsinline webkit-playsinline>
                <source src="https://drrrhyhe9lfip.cloudfront.net/media/images/main_video_bg150271209026.mp4"  type='video/mp4' />
                <source src="https://drrrhyhe9lfip.cloudfront.net/media/images/main_video_bg150271213627.webm"  type='video/webm;codecs="vp8, vorbis"' />
            </video>
            <div class="video_overlay"></div>

        </div>
        
        
        <div class="section_content">
            <div class="text_wrap  pt-xl pb-xl">
                <h1 class="intro_title pb-sm">Join The Video Revolution</h1>
                <h2 class="intro_text pb-md">Make outstanding social videos in minutes with the power of Magisto’s smart video editor. <br>Be a video superhero.</h2>
                
                
                <div class="links_wrap">

                    
                        
                            <a href="/connect?business&signup&next=%2Fbusiness%2Fpurchase%3Fvia%3Dget_started_main_cta%26prev_path%3D%2F&via=get_started_main_cta&prev_path=/"
                                onclick="button_track(event,{evnt: 'press_button', type: 'get_started_main_cta' , destination_path: '/connect', via: 'get_started_main_cta'})">
                                <button id="create_btn" class="btn large btn_create_movie turq">Get started</button>
                            </a>
                        
                    
                </div>
                
                

            </div>
            

            
            <div class="bottom_links_wrap">
                <a href="javascript:common.createVideo()" onclick="button_link_track(event,'get_started_main_cta','/', '/create')" class="btn large turq">
                    Get started
                </a>
            </div>
            
        </div> 
    </div>

    
    <div class="section_content grey_background">
        <div class="logos_wrap animate shown">
            <div class="store_icon flex_container">
                
                    <div class="flexi_block">
                        <a href="http://itunes.apple.com/us/app/magisto/id486781045?ls=1&amp;mt=8&amp;via=main_cta&prev_path=/" class="appstore" onclick="track_tableau_event('click_on_get_app','header_link','link','ios_logo', 'iphone');">
                            <img src="https://drrrhyhe9lfip.cloudfront.net/media/images/appstore_btn155196368099.png" />
                        </a>
                    </div>
                
                
                    <div class="flexi_block"><a href="https://play.google.com/store/apps/details?id=com.magisto&amp;via=main_cta&prev_path=/" target="_blank" class="gplay" onclick="track_tableau_event('click_on_get_app','header_link','link','android_logo', 'android');">
                            <img src="https://drrrhyhe9lfip.cloudfront.net/media/images/play_store_btn155196366429.png" />
                    </a></div>
                
            </div>
            
        </div>
    </div>
    

</section>

    
    
    
    

    
    
<style>
div.notification_bar.cookies_consent{
    top: 72px;
    bottom: auto;
}
@media only screen and (min-width: 960px){
    div.notification_bar.cookies_consent{
        top: 84px;
    }
}

</style>
    <!-- <section class="getty_top_section only_big "  onclick="scrollToItem('.getty_top_section',64)">
        <div class="section_content max_912  pt-xs pb-xs">
            <div class="text-center">
                Now with
                <span class="new_tag">
                    <img height="34" src="//applause1.magisto.com/media//new/img/icons/istock.svg" />
                    <i class="new_flag"></i>
                </span>
                <br class="only_mobile" />
                The best stock gallery in the world
            </div>
        </div>
    </section> -->
    <section class="apple_award pt-xs pb-xs">
        <div class="section_content">
            <div class="first_content_box">
                <div class="first_content_box_container">
                    <svg xmlns="http://www.w3.org/2000/svg" width="34" height="39" viewBox="0 0 34 39">
    <path fill="#080844" fill-rule="nonzero" d="M24.397.009a.9.9 0 0 0-.42.043C21.93.46 19.682 1.68 18.25 3.102 17.022 4.322 16 6.356 16 8.186c0 .407.406.814.815.814 2.251-.203 4.503-1.424 5.935-2.848C23.978 4.526 25 2.696 25 .866c0-.457-.23-.8-.603-.857zM25.629 9c-3.522 0-5.084 2.115-7.432 2.115-2.543 0-4.89-1.923-7.824-1.923-4.108 0-10.37 3.845-10.37 12.691C-.191 29.961 7.244 39 11.547 39c2.543 0 3.13-1.54 6.651-1.54 3.522 0 4.304 1.54 6.847 1.54 2.934 0 5.086-3.078 6.847-5.578.782-1.346 1.369-2.114 1.956-3.268.39-.769-.001-1.538-.784-1.923-5.086-2.5-6.062-10.577-.39-13.462.979-.577 1.173-1.733.39-2.31C30.912 10.536 27.78 9 25.63 9z"/>
</svg>

                    <p>Best of</p>
                    <p class="large_text">2019</p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="193" height="68" viewBox="0 0 193 68">
    <path fill="#080844" fill-rule="evenodd" d="M26.948 61.704c1.653-1.108 6.377-2.832 6.908-2.423.884.684-.882 3.703-2.328 4.69-6.467 4.406-10.524 4.02-10.524 4.02s1.2-3.11 5.944-6.287zm132.196-2.423c.531-.41 5.255 1.315 6.908 2.423 4.744 3.177 5.944 6.287 5.944 6.287s-4.057.386-10.524-4.02c-1.446-.987-3.211-4.006-2.328-4.69zm21.594-52.489s2.593 1.202 1.696 8.5c-.09.725-.564 2.042-1.159 3.255.28-.403.574-.798.843-1.209l1.673-1.869-.435.727c-.294.482-.597.96-.905 1.434l-.468.708c.777-.68 1.68-1.393 2.728-2.118 1.957-1.356 7.514-3.623 8.121-3.206 1.015.695-2.836 5.389-4.549 6.594-6.317 4.44-9.465 4.31-10.376 4.128a64.747 64.747 0 0 1-8.24 8.128c1.41-.797 3.228-1.656 5.533-2.437 2.364-.802 8.525-1.582 8.97-1.04.743.906-4.602 4.399-6.677 5.118-8.25 2.857-11.098 1.59-11.627 1.276a71.747 71.747 0 0 1-8.948 5.444c1.31-.34 2.825-.651 4.568-.88 2.554-.34 8.848.038 9.135.641.476 1.007-5.778 3.39-8.025 3.702-8.01 1.109-10.81-.175-11.617-.742a77.213 77.213 0 0 1-4.236 1.578c2.53.305 5.373 1 5.17 1.766-.18.679-6.114 2.51-8.599 2.754-2.028.202-3.766.209-5.229.123a65.21 65.21 0 0 1 9.43 3.375c.448-.39 3.05-2.202 11.312-.64 2.06.391 7.514 3.077 6.88 4.127-.379.63-6.379.857-8.725.43a29.97 29.97 0 0 1-3.542-.862 60.227 60.227 0 0 1 4.082 2.61l-2.303-1.011c-.46-.293-.927-.577-1.396-.857 1.093.882 2.137 1.94 2.535 2.59 3.847 6.273 1.985 8.437 1.985 8.437s-3.196-1.434-5.955-6.027c-.965-1.602-2.155-6.01-1.635-6.433.087-.07.208-.091.348-.087a61.9 61.9 0 0 0-10.139-4.215c.672.367 1.24.736 1.566 1.032 5.616 5.105 4.342 7.711 4.342 7.711s-3.615-.55-7.671-4.303c-1.416-1.308-3.837-5.295-3.432-5.849a70.659 70.659 0 0 0-12.543-1.704c1.674.335 3.556.966 4.347 1.46 6.645 4.142 5.752 6.903 5.752 6.903s-3.832.023-8.642-3.035c-1.678-1.066-4.836-4.61-4.505-5.215a.516.516 0 0 1 .231-.193 77.452 77.452 0 0 0-12.886.976c1.91.117 4.078.51 5.028.914 8.04 3.419 7.463 6.46 7.463 6.46s-4.273.574-10.102-1.964c-1.978-.861-5.861-3.988-5.817-4.79a80.987 80.987 0 0 0-7.4 1.88c-.055-.056-.127-.105-.193-.156-.067.05-.139.1-.193.156a81.087 81.087 0 0 0-7.4-1.88c.045.802-3.838 3.929-5.817 4.79-5.83 2.538-10.102 1.964-10.102 1.964s-.578-3.041 7.462-6.46c.95-.404 3.12-.797 5.03-.914a77.452 77.452 0 0 0-12.888-.976.52.52 0 0 1 .233.193c.33.606-2.828 4.15-4.506 5.215-4.622 2.938-8.34 3.032-8.624 3.035h-.018s-.892-2.76 5.753-6.903c.79-.494 2.672-1.125 4.347-1.46-4.285.2-8.486.77-12.548 1.702l.004.002c.406.554-2.017 4.541-3.431 5.85-4.057 3.753-7.672 4.302-7.672 4.302s-1.273-2.606 4.342-7.711c.327-.296.894-.665 1.567-1.032a61.77 61.77 0 0 0-10.14 4.215c.14-.004.262.016.348.087.52.424-.67 4.83-1.634 6.433-2.76 4.593-5.956 6.027-5.956 6.027s-1.862-2.164 1.985-8.437c.398-.65 1.442-1.708 2.535-2.59-.469.28-.936.564-1.396.857l-2.303 1.012a59.954 59.954 0 0 1 4.083-2.61c-1.036.32-2.21.62-3.543.862-2.346.426-8.345.2-8.725-.431-.634-1.05 4.821-3.736 6.88-4.127 8.262-1.562 10.862.25 11.312.64a65.21 65.21 0 0 1 9.43-3.375c-1.463.086-3.201.079-5.23-.123-2.483-.244-8.418-2.075-8.598-2.754-.203-.767 2.638-1.46 5.171-1.767a76.274 76.274 0 0 1-4.237-1.577c-.806.567-3.606 1.85-11.618.742-2.246-.313-8.5-2.695-8.023-3.702.285-.603 6.579-.98 9.135-.641a37.91 37.91 0 0 1 4.567.88 71.747 71.747 0 0 1-8.949-5.444c-.528.314-3.375 1.58-11.627-1.276-2.073-.719-7.419-4.212-6.677-5.118.445-.542 6.608.238 8.97 1.04 2.306.781 4.124 1.64 5.533 2.437a64.826 64.826 0 0 1-8.24-8.128c-.909.181-4.057.311-10.376-4.128C3.005 18.403-.846 13.71.167 13.014c.608-.417 6.164 1.85 8.123 3.206a30.22 30.22 0 0 1 2.727 2.118 59.511 59.511 0 0 1-1.81-2.87l.001.001 1.675 1.87c.178.273.37.54.559.807l.282.401c-.594-1.213-1.069-2.53-1.159-3.255-.896-7.298 1.696-8.5 1.696-8.5s2.315 2.622 2.92 7.943c.213 1.857-.534 6.36-1.184 6.531-.05.012-.104.005-.16-.002.488.612.84 1.132 1.083 1.53 1.87 2.244 3.935 4.351 6.14 6.339-.428-.578-.767-1.114-.931-1.498-2.993-6.964-.752-8.812-.752-8.812s3.063 1.992 5.197 7.082c.744 1.77 1.292 6.383.699 6.735 3.268 2.489 6.813 4.704 10.575 6.633-1.344-.986-2.72-2.276-3.218-3.025-4.33-6.513-2.37-8.659-2.37-8.659s3.498 1.56 6.607 6.328c1.085 1.662 2.489 6.19 1.936 6.605a.47.47 0 0 1-.218.083 76.991 76.991 0 0 0 9.86 3.758c.319-.005.611.001.846.023.175.015.342.033.512.051-1.543-.865-3.092-1.958-3.722-2.646-5.9-6.428-4.112-8.958-4.112-8.958s4.129 1.238 8.382 5.954c1.23 1.362 3.036 4.792 3.314 6.22 4.683.947 6.231 2.375 6.66 2.905 3.226-.611 6.527-1 9.876-1.163A38.277 38.277 0 0 1 65.7 45.67c-2.466-.745-8.04-3.684-8.05-4.352-.014-1.113 6.667-.702 8.842-.06 7.73 2.287 9.758 4.603 10.265 5.458 3.66.142 7.353.553 11.05 1.232a39.923 39.923 0 0 1-4.104-2.011c-2.276-1.275-7.052-5.314-6.868-5.932.306-1.03 6.933.94 8.943 2.05 7.03 3.889 8.474 6.49 8.77 7.438.652.18 1.303.367 1.952.563.65-.196 1.301-.384 1.952-.563.297-.948 1.742-3.55 8.77-7.438 2.01-1.11 8.637-3.08 8.943-2.05.183.618-4.593 4.657-6.868 5.932a39.914 39.914 0 0 1-4.103 2.011 77.83 77.83 0 0 1 11.049-1.232c.507-.855 2.535-3.171 10.265-5.459 2.174-.641 8.857-1.052 8.842.061-.01.668-5.583 3.607-8.05 4.352a38.22 38.22 0 0 1-4.501 1.078c3.349.163 6.65.552 9.875 1.163.43-.53 1.978-1.958 6.66-2.905.28-1.428 2.085-4.858 3.316-6.22 4.253-4.716 8.38-5.954 8.38-5.954s1.79 2.53-4.111 8.958c-.63.688-2.18 1.781-3.721 2.646.169-.018.336-.036.51-.051.237-.022.528-.028.848-.023a77.042 77.042 0 0 0 9.859-3.758.456.456 0 0 1-.217-.083c-.553-.415.85-4.943 1.936-6.605 3.108-4.769 6.606-6.328 6.606-6.328s1.959 2.146-2.37 8.66c-.499.748-1.875 2.038-3.219 3.024 3.762-1.93 7.308-4.144 10.576-6.633-.592-.352-.044-4.965.7-6.735 2.133-5.09 5.197-7.082 5.197-7.082s2.241 1.848-.752 8.812c-.165.384-.504.92-.933 1.498 2.206-1.988 4.271-4.095 6.14-6.339.244-.398.596-.918 1.084-1.53a.455.455 0 0 1-.16.002c-.65-.172-1.397-4.674-1.184-6.53.604-5.322 2.92-7.944 2.92-7.944zM3.347 0s3.16 2.052 5.289 8.96c.476 1.546.004 4.745-1.03 4.732-.621-.009-3.042-3.973-3.598-5.725C2.414 2.94 3.347 0 3.347 0zm186.306 0s.933 2.94-.661 7.967c-.556 1.752-2.977 5.716-3.598 5.725-1.034.013-1.506-3.186-1.03-4.731 2.13-6.909 5.29-8.961 5.29-8.961z"/>
</svg>

                </div>
            </div>
            <div class="line_divider"></div>
            <div class="second_content_box">
                <p>App trend of the year:</br></p>
                <p>The storyteller within</p>
            </div>
        </div>
    </section>
    <section class="getty_bottom_section">
        <div class="section_content">
            <div class="left_side">
                <div class="h1 text-center">Magisto Business just got <br class="only_big" />way better!</div>
                <div class="p text-center">
                    Millions of new high-quality video and image options<br />
                    perfect for all your social media<br />
                    and marketing needs.
                </div>
            </div>
            <div class="right_side relative">
                <div class="text-center">
                    <div class="icon istock"></div>
                    <img
                        src="https://drrrhyhe9lfip.cloudfront.net/media/images/circle_images153380362562.png"
                        srcset="https://drrrhyhe9lfip.cloudfront.net/media/images/circle_images@2x153380364142.png 2x, https://drrrhyhe9lfip.cloudfront.net/media/images/circle_images153380362562.png 1x"/>

                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>

    
    <section class="partners_section only_big">
        <div class="section_content max_912  pt-xs pb-xs">
            <div class="text-left desc inline-block">
                Certified partner of:
            </div>
            <div class=" badges_wrap">
                <div class="text-center partner_badge facebook inline-block">
                    <a target="_blank" href="https://www.facebook.com/business/solutions-explorer/creative_platform/2059245347642508/Magisto" class="">
                        <img src="/media/new/img/badges/facebook@2x.png" srcset="/media/new/img/badges/facebook@2x.png 2x, /media/new/img/badges/facebook.png 1x"/>
                    </a>
                </div>
                <div class="text-center partner_badge youtube inline-block">
                    <a target="_blank" href="https://servicesdirectory.withyoutube.com/directory/magisto" class="">
                        <img src="/media/new/img/badges/youtube@2x.png" srcset="/media/new/img/badges/youtube@2x.png 2x, /media/new/img/badges/youtube.png 1x"/>
                    </a>
                </div>
                <div class="text-center partner_badge instagram inline-block">
                    <a target="_blank" href="https://www.facebook.com/business/solutions-explorer/creative_platform/2059245347642508/Magisto" class="">
                        <img src="/media/new/img/badges/instagram@2x.png" srcset="/media/new/img/badges/instagram@2x.png 2x, /media/new/img/badges/instagram.png 1x"/>
                    </a>
                </div>
            </div>
        </div>
    </section>
    
        <section class="two_lines_side_image animate purple ">
    <div class="section_content pt-xl pb-xl">
        <div class="left_side">
            <div class="image" style="background-image:url('//applause1.magisto.com/media//new/img/banners/green_icons.png');"></div>
        </div>
        <div class="right_side" >
            <h2 class="promo_section_title mb-lg ">60,000 Business video editors</h2>
            <div class="image only_mobile mb-lg" style="background-image:url('//applause1.magisto.com/media//new/img/banners/green_icons.png');"></div>
            <h4 class="promo_section_text ">Grow brand awareness <span class='mb-xs'>|</span> Build relationships <span class='mb-xs'>|</span> Increase sales</h4>
        </div>
        <div class="clear"></div>
    </div>
</section>

    

    
    
        <section class="brand_line animate hp_top_brands only_big">
    <div class="section_content mt-xs mb-xs">
        <div class="logos_text">
            <h4 class="mt-xs">Trusted By The World's Best</h4>
            <ul class="flex_container">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <!--li><a href="http://venturebeat.com/2013/10/16/magisto-relaunches-its-short-video-editing-service-with-new-features/" target="_blank"></a></li>
                <li><a href="http://ces.cnet.com/8301-33377_1-57358321/magisto-is-magic-at-ces-mobile-apps-showdown/" target="_blank"></a></li-->
            </ul>
            <div class="clear"></div>
        </div>
    </div>
</section>

    

    
    
    
    
    
        
<section class="three_sections_block animate  hp_laptop_banner">
    <div class="section_content mt-lg pb-xl">
        <div class="">
            <h2 class="section_title">The fastest way to accelerate your video marketing</h2>
            <h3 class="section_subtitle  mt-xxs">Scale your business with Magisto video editor</h3>
            
            <div class="sections_wrap">
                <div class="section_block first mt-lg">
                    
                    <h4 class="subsection_title mb-xs">Fast</h4>
                    <p class="subsection_text">Video storytelling as fast as writing a blog post</p>
                    
                    <!--350 million videos produced-->
                </div>
                <div class="section_block second mt-lg">
                    
                    <h4 class="subsection_title mb-xs">Easy</h4>
                    <p class="subsection_text">Video content made as easy as PowerPoint</p>
                    
                    <!--1 Billion video views in 120 countries-->
                </div>
                <div class="section_block third mt-lg ">
                    
                    <h4 class="subsection_title mb-xs">Effective</h4>
                    <p class="subsection_text">Business videos as powerful as a personal meeting, as scalable as digital marketing</p>
                    
                </div>
            </div>
            
        </div>
    </div>
</section>

    
    
    
    


    
    
    
    
    
    
        
<section class="three_sections_block animate  green_sep home_section">
    <div class="section_content mt-lg pb-xl">
        <div class="">
            <h2 class="section_title">The only end-to-end video marketing powered by A.I.</h2>
            <h3 class="section_subtitle  mt-xxs">A superhuman video editing team at your command</h3>
            
            <div class="sections_wrap">
                <div class="section_block first mt-lg">
                    <div class="icon_wrap mb-xs mt-xxs"><img src="/media/new/img/svg_icons/creation.svg" /></div>
                    <h4 class="subsection_title mb-xs">Creation</h4>
                    <p class="subsection_text">A computerized video editor<span class='bottom-hr mt-md mb-md'></span></p>
                    
                    <!--350 million videos produced-->
                </div>
                <div class="section_block second mt-lg">
                    <div class="icon_wrap mb-xs mt-xxs"><img src="/media/new/img/svg_icons/distribution.svg" /></div>
                    <h4 class="subsection_title mb-xs">Distribution</h4>
                    <p class="subsection_text">A seamless omni-channel video marketing distribution platform<span class='bottom-hr mt-md mb-md'></span></p>
                    
                    <!--1 Billion video views in 120 countries-->
                </div>
                <div class="section_block third mt-lg ">
                    <div class="icon_wrap mb-xs mt-xxs"><img src="/media/new/img/svg_icons/analytics.svg" /></div>
                    <h4 class="subsection_title mb-xs">Insights</h4>
                    <p class="subsection_text">Engagement analytics for business videos<span class='bottom-hr mt-md mb-md'></span></p>
                    
                </div>
            </div>
            
            <div class="btn_wrap mt-lg">
                <a
                    href="/video-marketing?via=learn_more_business"
                    onclick="button_track(event,{evnt: 'press_button', type:'learn_more_business', destination_path:'/video-marketing', via:'learn_more_business'})"

                    class="btn white large">
                    Learn more
                </a>
            </div>
            
        </div>
    </div>
</section>

    
    

    
    


    
    <hr />
    <section class="banner_text_line animate mt-lg mb-md">
        <div class="section_content">
            <div class="lines_wrap ">
                <h2 class="section_title mb-xxs">Businesses are adopting video with astounding speed</h2>
            </div>
        </div>
    </section>

    
    
    
    
        <section class="half_video_half_text animate big_num green mb-xs">
    <div class="section_content">
        <div class="content_wrap ">
            <div class="side_block ">
                
                    <div class="flexi animate mb-xxs">
                        
                        <h2 class="animate section_title">Brand awareness</h2>
                        <!--h3 class=" section_subtitle title"></h3-->
                    </div>
                
                <div class="mb-md flexi animate">
                <div class="section_title h1">+200<span>%</span></div>
                <p class=" half">Video marketing is better than TV</p>
                </div>
                <div class="flexi animate btn_wrap">
                <a href="/promotional-video?via=brand_awarness&amp;prev_path=/" class=" mb-xs btn trans">Learn more</a>
                </div>
            </div>
            <div class="side_block ">
                <div class="video_container  " onclick="trackVideoPlay(event,'brand_awareness')" >
                    
                    <script src="https://applause1.magisto.com/media/new/js/embed/embed_code.js?h=MU9NYwUIR24_WUNiCzE&amp;lightbox=true" data-server="applause1.magisto.com" data-autoplay="" data-fwidth="820" data-fheight="460" data-aspect-ratio="16:9" data-poster="https://drrrhyhe9lfip.cloudfront.net/media/images/business_brand_awareness15027009828.jpg" data-poster-img="true" data-analytics="0"></script>
                    
                </div>
                
            </div>
        </div>
    </div>
</section>

    
    

    
    
    
    
        <section class="half_video_half_text animate big_num purple  mb-xs">
    <div class="section_content">
        <div class="content_wrap ">
            <div class="side_block ">
                
                    <div class="flexi animate mb-xxs">
                        
                        <h2 class="animate section_title">Lead generation</h2>
                        <!--h3 class=" section_subtitle title"></h3-->
                    </div>
                
                <div class="mb-md flexi animate">
                <div class="section_title h1">+300<span>%</span></div>
                <p class=" half">Video content improves email click-through rates</p>
                </div>
                <div class="flexi animate btn_wrap">
                <a href="/promotional-video?via=lead_generation&amp;prev_path=/" class=" mb-xs btn trans light">Learn more</a>
                </div>
            </div>
            <div class="side_block ">
                <div class="video_container  " onclick="trackVideoPlay(event,'lead_generation')" >
                    
                    <script src="https://applause1.magisto.com/media/new/js/embed/embed_code.js?h=PFgbMlAHFWk-Qh5hCzE&amp;lightbox=true" data-server="applause1.magisto.com" data-autoplay="" data-fwidth="820" data-fheight="460" data-aspect-ratio="16:9" data-poster="https://drrrhyhe9lfip.cloudfront.net/media/images/business_lead_generation150270091685.jpg" data-poster-img="true" data-analytics="0"></script>
                    
                </div>
                
            </div>
        </div>
    </div>
</section>

    
    

    
    
    
    
        <section class="half_video_half_text animate big_num gray mb-xl">
    <div class="section_content">
        <div class="content_wrap ">
            <div class="side_block ">
                
                    <div class="flexi animate mb-xxs">
                        
                        <h2 class="animate section_title">Sales</h2>
                        <!--h3 class=" section_subtitle title"></h3-->
                    </div>
                
                <div class="mb-md flexi animate">
                <div class="section_title h1">+80<span>%</span></div>
                <p class=" half">Video marketing improves conversion rates. Close more sales</p>
                </div>
                <div class="flexi animate btn_wrap">
                <a href="/promotional-video?via=sales&amp;prev_path=/" class=" mb-xs btn trans">Learn more</a>
                </div>
            </div>
            <div class="side_block ">
                <div class="video_container  " onclick="trackVideoPlay(event,'sales')" >
                    
                    <script src="https://applause1.magisto.com/media/new/js/embed/embed_code.js?h=a1sFMUFTGCw3URZnCzE&amp;lightbox=true" data-server="applause1.magisto.com" data-autoplay="" data-fwidth="820" data-fheight="460" data-aspect-ratio="16:9" data-poster="https://drrrhyhe9lfip.cloudfront.net/media/images/business_sales150270065153.jpg" data-poster-img="true" data-analytics="0"></script>
                    
                </div>
                
            </div>
        </div>
    </div>
</section>

    
    


                
            </div>
        </div>
        <footer class="main-footer  mgsto_n_ws">
    <div class=" pt-sm pb-xl full_width">
        <div class="section_content">
            <div class="footer-sections menus sm-big ">
                <div class="flex big_menu">
                    
                    
                        <div class="footer-menu-section">
                            <h4>Get Started</h4>
                            <ul>
                                <li><a href="javascript:common.createVideo()"
                                        onclick="track_event('footer','create','')">Create</a></li>
                                <li><a href="/templates?prev_path=/&via=footer"
                                        onclick="track_event('footer','templates','')">Templates</a></li>
                                <li><a href="/explore?prev_path=/&via=footer"
                                        onclick="track_event('footer','explore','')">Explore</a></li>
                                <li><a href="http://itunes.apple.com/us/app/magisto/id486781045?ls=1&amp;mt=8" target="_blank">iPhone</a></li>
                                <li><a href="https://play.google.com/store/apps/details?id=com.magisto" target="_blank">Android</a></li>
                                <li><a href="//help.magisto.com/hc/en-us?prev_path=/&via=footer"
                                        onclick="track_event('footer','help','')">Help Center</a></li>
                                <li><a href="/support?prev_path=/&via=footer"
                                        onclick="track_event('footer','support','');">Contact Support</a></li>
                                
                            </ul>
                        </div>
                        <div class="footer-menu-section">
                            <h4>Connect</h4>
                            <ul>
                                <li><a href="//www.magisto.com/blog/?prev_path=/&via=footer" target="_blank"
                                        class="bl"><span>Blog</span></a></li>
                                <li><a href="//www.facebook.com/Magisto" target="_blank" class="fb"><span>Facebook</span></a></li>
                                <li><a href="//www.instagram.com/magistoapp/" target="_blank" class="inst"><span>Instagram</span></a></li>
                                <li><a href="//twitter.com/magisto" target="_blank" class="tw"><span>Twitter</span></a></li>
                                <li><a href="//www.youtube.com/user/magisto" target="_blank" class="yt"><span>YouTube</span></a></li>
                                <li><a href="//www.linkedin.com/company/magisto" target="_blank" class="li"><span>LinkedIn</span></a></li>
                            </ul>
                        </div>
                        
                        <div class="footer-menu-section">
                            <h4>Company</h4>
                            <ul>
                                <li><a href="/about?prev_path=/&via=footer"
                                        onclick="track_event('footer','about','')">About</a></li>
                                <li><a href="/how-it-works?prev_path=/&via=footer"
                                        onclick="track_event('footer','how-it-works','')">How it works</a></li>
                                
                                
                                <li><a href="/jobs?prev_path=/&via=footer"
                                        onclick="track_event('footer','about','')">Careers</a></li>
                            </ul>
                        </div>
                    
                        <div class="footer-menu-section bigger">
                            <h4>Products</h4>
                            <ul>
                                <li><a href="/video-maker?prev_path=/&via=footer"
                                        onclick="track_event('footer','video-maker','')">Online Video Maker</a></li>
                                <li><a href="/fitness-video?prev_path=/&via=footer">Fitness Video Maker</a></li>
                                <li><a href="/marketing/birthday-video-maker?via=footer&prev_path=/">Birthday
                                        Video Maker</a></li>
                                <li><a href="/marketing/wedding-video-maker?via=footer&prev_path=/">Wedding
                                        Video Maker</a></li>
                                <li><a href="/marketing/cooking-video-maker?via=footer&prev_path=/">Cooking
                                    Video Maker</a></li>
                                <li><a href="/marketing/instagram-video-maker?via=footer&prev_path=/">Instagram
                                        Video Maker</a></li>
                                <li><a href="/marketing/video-slideshow-maker?via=footer&prev_path=/">Slideshow
                                        Video Maker</a></li>
                                <li><a href="/marketing/social-media-video-maker?via=footer&prev_path=/">Social
                                        Video Maker</a></li>
                                <li><a href="/marketing/promo-video-maker?via=footer&prev_path=/">Promo
                                        Video Maker</a></li>
                                <li><a
                                        href="https://play.google.com/store/apps/details?id=com.magisto&referrer=utm_source%3DMagistoWebsite%26utm_medium%3DFooterLink" onclick="track_tableau_event('click_on_get_app','footer_link','link','android_video_editor', 'android');">Android
                                        Video Editor</a></li>
                                <li><a href="https://apps.apple.com/app/id486781045" onclick="track_tableau_event('click_on_get_app','footer_link','link','video_maker_for_iphone', 'iphone');">Video Maker for
                                        iPhone</a></li>
                                <li><a
                                        href="https://apps.shopify.com/vimeo_product_video_maker?surface_detail=magisto&surface_inter_position=1&surface_intra_position=1&surface_type=WebSiteFooterLink">Video
                                        Maker for Shopify</a></li>
                                <li><a href="https://vimeo.com/create">Vimeo Create</a></li>
                            </ul>
                        </div>
                        
                    <div class="footer-menu-section blank"></div>
                    
                </div>
            </div>
            <div class="footer-sections branding sm-big">
                <div id="footer_terms" class="footer-menu-section">
                    <div class="sm-hide">
                        <a href="/" class="logo">
                            <img src="/media/new/img/logo_magisto_f.png" srcset="/media/new/img/logo_magisto_f@2x.png 2x, /media/new/img/logo_magisto_f.png 1x" />
                        </a>
                    </div>

                    <ul class="">
                        <li class="copy pt-xs">® 2020 Vimeo, Inc.</li>
                        <li class="sm-hide"><a href="/privacy?prev_path=/&via=footer" onclick="track_event('footer','privacy','')">Privacy</a></li>
                        <li class="sm-hide"><a href="/privacy/california?prev_path=/&via=footer" onclick="track_event('footer','privacy-california','')">CA Privacy</a></li>
                        <li class="sm-hide"><a href="/tos?prev_path=/&via=footer" onclick="track_event('footer','terms','')">Terms of use</a></li>
                        

                        <li class="mt-xs"><a href="https://www.facebook.com/business/solutions-explorer/creative_platform/2059245347642508/Magisto" target="_blank"><img src="/media/new/img/badges/fb_logo.png" srcset="/media/new/img/badges/fb_logo@2x.png 2x, /media/new/img/badges/fb_logo.png 1x" /></a></li>
                        <li class="mt-xxs"><a href="https://servicesdirectory.withyoutube.com/directory/magisto" target="_blank"><img src="/media/new/img/badges/youtube_logo_new.png"/></a></li>
                        <li class="mt-xxs"><a href="https://blog.magisto.com/blog/2018/12/12/magisto-named-a-cool-vendor-in-artificial-intelligence-for-small-and-midsize-businesses-by-gartner/" target="_blank"><img style="width: 80px;object-fit: scale-down;" src="/media//new/img/banners/hp/gartner_cool_vendor_2018.png" /></a></li>
                        

                    </ul>
                </div>

            </div>
            <div class="clear"></div>
        </div>

        <!--div class="clear"></div-->
    </div>
</footer>


        
            
                
                    <connect-form-popup></connect-form-popup>
                    <change-user-info-popup></change-user-info-popup>
                    
                        <script src="/media/new/js/connect/connectForm.js"></script>
                    
                
            
        

        
        
            
            <div id="magisto_popup_overlay"><div class="close popup_close"></div></div>

            
            <message-popup></message-popup>
        

        
		
<!-- start Alooma --><script type="text/javascript">(function(e,b){if(!b.__SV){var a,f,i,g;window.alooma=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="alooma";c.people=c.people||[];c.toString=function(b){var a="alooma";"alooma"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable time_event track track_custom_event track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" "); for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=e.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof ALOOMA_CUSTOM_LIB_URL?ALOOMA_CUSTOM_LIB_URL:"file:"===e.location.protocol&&"//cdn.alooma.com/libs/alooma-latest.min.js".match(/^\/\//)?"https://cdn.alooma.com/libs/alooma-latest.min.js":"//cdn.alooma.com/libs/alooma-latest.min.js";f=e.getElementsByTagName("script")[0];f.parentNode.insertBefore(a,f)}})(document,window.alooma||[]);alooma.init("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnROYW1lIjoibWFnaXN0by1icSIsImlucHV0TGFiZWwiOiJNb2JpbGVfU0RLIiwiaW5wdXRUeXBlIjoiTU9CSUxFX1NESyJ9.jmfIbKqyhtoMnw_YFdmrVbg9PJOxZ4YMyAbUIARBCEk", {"api_host":"https://inputs.alooma.com", "track_pageview": false});</script><!-- end Alooma -->

<script>
	var globals = globals || {};
    //debugger;
    globals.show_page_params = globals.show_page_params || {};
	globals.alooma = {

		uid:  '' ,

        /*
		fv : {
			events: {play_marketing_video_press:1,press_free_trial:1,play_marketing_video_complete:1,hp_business_button_click:1,show_purchase_screen:1,
					 press_purchase: function(d) {return 'press_purchase:'+ ( isBusinessPlan(d.type) ? 'business' : 'other');},
					 connect_try: function(d) {return 'connect_try:'+ (d.is_business ? 'business:' : '') + d.channel;}},
			pages: {'/business-videos':1,'/video-marketing':1,'/marketing-videos':1,'/real-estate-videos':1,'/video/mine':1,'/business/purchase':1,'/account/settings':1,'/album/mine':1,'/account/upgrade':1,'/explore':1},

			calc_events: { play_marketing_video_press: true, show_purchase_screen: true,
						   show_landing_page: function(d) { return d.campaign == 'hp_business_button'}},
			version: '1.0',
			working: false,
			get_event: function(event_name, data) {
				if (event_name == 'show_page') {
					var p = document.location.pathname;
					return this.pages[p] ? ('show_page:'+p) : null;
				} else {
					var ret = this.events[event_name] || null;
					return (typeof(ret) == 'function') ? ret(data) : (ret ? event_name : null);
				}
			},

			do_calc: function(event_name, event_data) {
				var ret = this.calc_events[event_name] || false;
				if (ret)
					return (typeof(ret) == 'function') ? ret(event_data) : ret;
				if (event_name == 'show_page') {
				 	var dc = localStorage.getItem('do_calc_fv');
				 	if (dc) {
						localStorage.removeItem('do_calc_fv');
						return dc == 'yy' ? 'force' : true;
					}
				}
				return false;
			},

			mark_for_calc: function(force) {
				try {
					localStorage.setItem('do_calc_fv', force ? 'yy' : 'y');
				} catch(err) {}
			},

			reset: function() {
				try {
					localStorage.setItem('fv', null);
					console.log('FV: reset');
				} catch(err) {}
			},

			store: function(event_name, data, d) {
				try {
					if (this.working)
						return;

					var key = this.get_event(event_name, data);
					if (key) {
						var fv;
						try {
							fv = JSON.parse(localStorage.getItem('fv')) || {};
						} catch(err){
							fv = {}
						}

						if (!(fv.v && fv.v == this.version))
							fv = {}

						var ts = Math.round(d.getTime() / 1000);

						fv.vtid = data.device_id;  //TODO: if changed ?
						fv.v = this.version;
						if (!fv.data)
							fv.data = {}
						fv.data[key] = ts;
						console.log('FV: store ' + key + ' = ' + ts);
						var sfv = JSON.stringify(fv);
						localStorage.setItem('fv', sfv);

					}
				} catch(err){
					console.log('[FV] error storing ' + event_name + 'in tracking fv: ' + err);
				}

				try{
					var dc = this.do_calc(event_name, data)
					if (dc)
						this.calc(event_name, (dc==='force'));
				} catch(err){
				}
			},

			calc: function(label, force) {
				try{
					setTimeout(function(){globals.alooma.fv._calc(label, force)});
				} catch(err){}
			},

			_calc: function(label, force) {

				if (this.working)
					return;

				var fv = JSON.parse(localStorage.getItem('fv')) || {};
				var d = new Date();
				var n = Math.round(d.getTime() / 1000);

				var CALC_TIME_DIFF = 7; // in minutes
				var FIRE_TIME_DIFF = 25; // in hours

				// need at least 1 client side item in FV
				if (!fv.data || Object.keys(fv.data).length == 0)
					return;

				// calced lately already
				if (!force && fv.calc_ts && fv.calc_ts > (n-60*CALC_TIME_DIFF))
					return;

				// TODO: if all events already fired in the last X hours
				// if (fired_ts && fv.fired_ts > (n-3600*FIRE_TIME_DIFF))
				//	return;

				this.working = true;
				console.log('FV: calc ' + JSON.stringify(fv));
				var me = this;

				$.post(globals.prot_and_server + '/api/proxy_kpi', {vtid: fv.vtid, version: fv.v, fv: JSON.stringify(fv.data), now:n, label:label||''}, function(data){
					try {
						if (data.status && data.status == 'OK' && data.events) {
							if (!fv.fired)
								fv.fired={};
							//console.log('FV: resp ' + JSON.stringify(data));
							for (var i=0; i<data.events.length; i++) {
								if (!fv.fired[data.events[i].name] || fv.fired[data.events[i].name] <  n-3600*FIRE_TIME_DIFF) {
									console.log('FV: firing ' + data.events[i].name);
									globals.fb_pixel.track_custom(data.events[i].name);
									//globals.alooma.track('send_facebook_pixel', {type:data.events[i].name});
									fv.fired[data.events[i].name] = n;
								} else {
									console.log('FV: already fired ' + data.events[i].name + ' ' + (n-fv.fired[data.events[i].name]) + ' sec ago');
								}
							}
							fv.fired_ts = n;
						}
						fv.calc_ts = n;
						localStorage.setItem('fv', JSON.stringify(fv));
					} catch(err){}
					me.working = false;
				}).fail(function(data) {
					try {
						try{
							if (data && data.responseText) {
								var resp = JSON.parse(data.responseText);
								if (resp && resp.errcode == 2040)
									fv.data={}
							}
						} catch(err){}
						fv.calc_ts = n;
						localStorage.setItem('fv', JSON.stringify(fv));
					} catch(err){}
					me.working = false;
				});
			}
		},
		*/

		_prepare: function(extra_data, d) {
			var date_str = (
					d.getFullYear() + "-" +
					("00" + (d.getMonth() + 1)).slice(-2) + "-" +
					("00" + d.getDate()).slice(-2)
				),
				ts_str = (
					d.getFullYear() + "-" +
					("00" + (d.getMonth() + 1)).slice(-2) + "-" +
					("00" + d.getDate()).slice(-2) + " " +
					("00" + d.getHours()).slice(-2) + ":" +
				    ("00" + d.getMinutes()).slice(-2) + ":" +
				    ("00" + d.getSeconds()).slice(-2)
				);

			var device_id_arr = common.get_device_id_arr();

			var web_origin = 'web';
			if (globals.app && globals.app == 'chant') {
                web_origin = 'chant_web';
            }
			if (globals.app && globals.app == 'shopify') {
                web_origin = 'shopify_web';
            }

			var data = {
				log_type: 'web',
				origin: web_origin,
				client_date: date_str,
				client_timestamp: ts_str,
				device_id: device_id_arr[0],
				debug_mode: false,
				plan_type: "" || "free",
				has_opt_out_trial: false,
				has_opt_in_trial: false,
				path: document.location.pathname
			};

			if (device_id_arr[1])
				data.is_first = true;

			if (globals.alooma.uid)
				data.user_id = parseInt(globals.alooma.uid);

			if (extra_data)
				Object.assign(data, extra_data);

			return data;
		},

		_track: function(event_name, data, cb, d) {

			if (typeof cb != 'function')
				cb = function(){};

            if(event_name == 'press_button' && data.prev_path){
                delete data.prev_path;
            } else if(event_name == 'show_page' && !!data && !!data.prev_path){
                data.prev_path = stripVarsFromString(data.prev_path);
            } else if(event_name == 'show_page' && !data.prev_path){
                if(window.location.host.indexOf('magisto.com') !== -1){
                    var prev_path = document.referrer.replace(/^[^:]+:\/\/[^/]+/, '').replace(/#.*/, '')
                    data.prev_path = stripVarsFromString(prev_path);
                }

            }
			//setTimeout(function(){try {globals.alooma.fv.store(event_name, data, d); } catch (err) {}});
            //console.log('IM HERE');
			
			alooma.track(event_name, data, cb);
			

            // fb_segment_tracking
			try {
				var e_type = null;
				if (event_name == 'connect_done') {
					e_type = data.type == 'signup' ? 'signup' : 'login';
				} else if (event_name == 'show_page' && data.is_first) {
					e_type = 'firstPageView';
				} else if (event_name == 'show_landing_page' && data.is_first_time_business) {
					e_type = 'firstBusinessPageView';
				} else if  (event_name == 'createmovie') {
					e_type = 'createmovie';
				} else if  (event_name == 'show_purchase_screen') {
					e_type = 'pricingpage';
				}
				if (e_type)
					pixel_tracking(['fb_custom', 'segment', Object.assign({type: e_type}, globals.alooma.get_device_id_user_segments(12))]);
			} catch(err) {};
		},

		track: function(event_name, extra_data, cb) {
			try {
                if(!!extra_data && !extra_data["prev_path"]){
                    var origin = (document.location && document.location.origin ? document.location.origin : window.origin);
                    var prev_path = document.referrer.replace(origin,'');
                    if(!!prev_path){
                        extra_data["prev_path"] = prev_path;
                    }
                }
				var d = new Date(),
				    data = globals.alooma._prepare(extra_data, d);
				globals.alooma._track(event_name, data, cb, d);
                /*if(!!globals.is_debug) */
                console.log('[al] ' + event_name + ': ' + JSON.stringify(data));
				if (cb)
					setTimeout(cb, 400); // silent fallback
			}
			catch(err){
				console.log('alooma error: ' + err);
				if (cb)
					cb();
			}
		},

		queue: function(event_name, extra_data) {
			try {
				var data = globals.alooma._prepare(extra_data, new Date()),
				    q = [];
				try {
					q = JSON.parse(localStorage.getItem('al_queue')) || [];
				} catch(err){}
				q.push({event:event_name, data:data})
				localStorage.setItem('al_queue' , JSON.stringify(q));
			}
			catch(err){}
		},

		track_queue: function() {
			try {
				var q = JSON.parse(localStorage.getItem('al_queue')) || null;
				if (q) {
					var d = new Date();
					for (var i=0; i< q.length; i++) {
						try {
					 		globals.alooma._track(q[i].event, q[i].data, null, d);
					 		console.log('[al] ' + q[i].event + ': ' + JSON.stringify(q[i].data));
					 	} catch(err){}
					 }
					localStorage.removeItem('al_queue');
				}
			} catch(err){
				console.log('Error processing alooma queue: ' + err);
			}
		},

		store_tracking_data: function(key, data) {
			try {
				localStorage.setItem(key, JSON.stringify(data));
			} catch(err){}
		},

		pop_tracking_data: function(key) {
			var data = null;
			try {
				var data = JSON.parse(localStorage.getItem(key)) || null;
				if (data !== null)
					localStorage.removeItem(key);
			} catch(err){}
			return data;
		},

		get_device_id: function() {
			return common.get_device_id();
		},

		_tonum: function(str) {
			var hash = 0, i, chr;
			str = str + '';
			if (str.length === 0) return hash;
			for (i = 0; i < str.length; i++) {
				chr   = str.charCodeAt(i);
			    hash  = ((hash << 5) - hash) + chr;
			    hash |= 0; // Convert to 32bit integer
			}
			hash = hash >>> 0;
			return hash;
		},

		get_device_id_user_segments: function(num_segments) {
			ret = { device_segment: 1 + globals.alooma._tonum(common.get_device_id()) % num_segments};
			if (globals.alooma.uid)
				ret.user_segment = 1 + globals.alooma._tonum(globals.alooma.uid) % num_segments;
			return ret
		},

		popups_track: function(event_name, extra_params) {

			var ev;
			if (event_name == 'show')
				ev = 'show_popup';
			else if (event_name == 'press')
				ev = 'press_popup';
			else return;

			globals.alooma.track(ev, extra_params);

		},


		get_internal_linking_params: function(via) {
			return 'via='+encodeURIComponent(via)+'&prev_path='+window.location.pathname;
		},

		get_utm_data: function(params) {
			var params = params || {};
			if (common.get_url_param('utm_campaign'))
				params.utm_campaign = common.get_url_param('utm_campaign');
			if (common.get_url_param('utm_term'))
				params.utm_term = common.get_url_param('utm_term');
			if (common.get_url_param('utm_content'))
				params.utm_content = common.get_url_param('utm_content');
			if (common.get_url_param('utm_medium'))
				params.utm_medium = common.get_url_param('utm_medium');
			if (common.get_url_param('utm_source'))
				params.utm_source = common.get_url_param('utm_source');
			if (common.get_url_param('adgroup'))
				params.adgroup = common.get_url_param('adgroup');
			if (common.get_url_param('matchtype'))
				params.matchtype = common.get_url_param('matchtype');
			if (common.get_url_param('distribution'))
				params.distribution = common.get_url_param('distribution');
			if (common.get_url_param('placement'))
				params.placement = common.get_url_param('placement');
			if (common.get_url_param('partner'))
				params.partner = common.get_url_param('partner');
			if (common.get_url_param('via'))
				params.via = common.get_url_param('via');
			if (common.get_url_param('prev_path'))
				params.prev_path = common.get_url_param('prev_path');
			if (common.get_url_param('campaign_id'))
				params.campaign_id = common.get_url_param('campaign_id');
			if (common.get_url_param('adgroup_id'))
				params.adgroup_id = common.get_url_param('adgroup_id');
			if (common.get_url_param('keyword_id'))
				params.keyword_id = common.get_url_param('keyword_id');
            if (common.get_url_param('ad_id'))
				params.ad_id = common.get_url_param('ad_id');
            if (common.get_url_param('fb_ad_id'))
				params.ad_id = common.get_url_param('fb_ad_id');
            if (common.get_url_param('page_type'))
				params.type = common.get_url_param('page_type');
            if (common.get_url_param('gclid'))
                params.gclid = common.get_url_param('gclid');
            if (common.is_optin_flow())
				params.with_optin = true;
			return params;
		}
	};

	(function(){
		setTimeout(function(){
			globals.alooma.track_queue();
			try{
				globals.alooma.track('show_page',globals.alooma.get_utm_data(globals.show_page_params));
			} catch(err){
				console.log('Error auto-tracking pageview with alooma: ' + err);
			}
		});
	})();
</script>

        
<script>
    
        console.log('INIT [DEBUG] GA:UA-21702090-1');
    
</script>


<script>

    function init_external_tracking(flush_events) {
        if (typeof set_ga_tracking !== 'undefined')
            set_ga_tracking();
        if (typeof set_fb_tracking !== 'undefined')
            set_fb_tracking();
        if (typeof set_bing_tracking !== 'undefined')
            set_bing_tracking();
        if (flush_events) {
            //TODO: wait a bit ?
            pixel_tracking([]);
        }

    }

    function flush_page_events() {
        pixel_tracking([]);
    }



    init_external_tracking(false);

    /*
    if (!!has_cookies_consent && !!has_cookies_consent()) {
        init_external_tracking(false);
    } else {
        var is_album = window.location.href.indexOf("/album/") > 0;
        var is_video = (window.location.href.indexOf("/video/") > 0 && window.location.href.indexOf("/video/mine") ==-1);
        if(!is_album && !is_video){
            var ga_ev = ['ga_page', window.location.pathname];
            var fb_ev = ['fb_custom','show_page', {path:window.location.pathname}];
            pixel_tracking(ga_ev);
            pixel_tracking(fb_ev);
        }
    }
    */

	/* ---------------- */
	/*  FB PIXEL        */
	/* ---------------- */
	globals.fb_pixel = {
		_alooma: function(event_name, data) {
			try {
				var a_data = {}
				if (data)
					Object.assign(a_data, data);
				if ('type' in a_data)
					a_data.type2 = event_name;
				else
					a_data.type = event_name;
				globals.alooma.track('send_facebook_pixel', a_data);
			} catch(err){}
		},
        set_user_props: function(props, cb){
            try{
                FB.getLoginStatus(function(response) {
                    if(response && response.authResponse){
                        FB.AppEvents.setUserID(response.authResponse.userID);
                        FB.AppEvents.updateUserProperties(props)
                        console.log('[fb] [DEBUG] set_user_props: ' + JSON.stringify(props));
                    }
                });

            } catch(err){
                console.log('fb tracking error: ' + err);
            }
        },
		track: function(event_name, extra_data, cb){
			if (typeof cb != 'function')
				cb = function(){};
			try {
				var data = {};
				if (extra_data)
					Object.assign(data, extra_data);
				if (typeof fbq !== 'undefined') {
					fbq('track', event_name, data);
					console.log('[fb] ' + event_name + ': ' + JSON.stringify(data));
			    } else {
			        console.log('[fb] [DEBUG] ' + event_name + ': ' + JSON.stringify(data));
			    }
				setTimeout(cb, 800); // silent fallback
				globals.fb_pixel._alooma(event_name, data)
			} catch(err){
				console.log('fb tracking error: ' + err);
				cb();
			}
		},
		track_custom: function(event_name, extra_data, cb) {
			if (typeof cb != 'function')
				cb = function(){};
			try {
				var data = {};
				if (extra_data)
					Object.assign(data, extra_data);
				if (typeof fbq !== 'undefined') {
					fbq('trackCustom', event_name, data);
					console.log('[fbc] ' + event_name + ': ' + JSON.stringify(data));
				} else {
				    console.log('[fbc] [DEBUG] ' + event_name + ': ' + JSON.stringify(data));
				}
				setTimeout(cb, 800); // silent fallback
				globals.fb_pixel._alooma(event_name, data)
			} catch(err){
				console.log('fb custom tracking error: ' + err);
				cb();
			}
		},
		_track_once: function(event_name, extra_data, is_custom, cache_key) {
			try {
				var c_id = 'fbpxl_'+   ( !!cache_key ? cache_key : event_name);
				var last_time = localStorage.getItem(c_id);
				var d = new Date();
				var n = Math.round(d.getTime() / 1000);
				var FIRE_TIME_DIFF = 3600*24*30; //30 days
				if (last_time) {
					last_time = parseInt(last_time);
					if (last_time && last_time > n-FIRE_TIME_DIFF)
						return;
					//backward support thats what was written before , meaning never send again
					if (last_time == 1)
						return;
				}
				localStorage.setItem(c_id, n);
				if (is_custom)
					globals.fb_pixel.track_custom(event_name, extra_data);
				else
					globals.fb_pixel.track(event_name, extra_data);
			} catch(err){
				console.log('fb track_once error: ' + err);
			}
		},
		track_once: function(event_name, extra_data, cache_key) {
			globals.fb_pixel._track_once(event_name, extra_data, false, cache_key);
		},
		track_custom_once: function(event_name, extra_data, cache_key){
			globals.fb_pixel._track_once(event_name, extra_data, true, cache_key);
		}
	};

	/* ---------------- */
	/*  BING PIXEL      */
	/* ---------------- */
    globals.bing = {
        event: function(label) {
            try{
                if (window.uetq) {
                    window.uetq.push ({ 'ec':'category', 'ea':'action', 'el':label /*, 'ev':'Event value'*/ });
                    console.log('[bing] ' + label);
                } else{
                    console.log('[bing] [DEBUG] ' + label);
                }
            } catch(err) { console.log('bing error: ' + err); }
        }
    };

	/* ----------------- */
	/*  Google Analytics */
	/* ----------------- */
	globals.ga = {
		event: function(category, action, label, value, cb) {
			try{
			    if (typeof ga !== 'undefined') {
                    ga('send', 'event', category, action, label, (value || 0), {'nonInteraction': 1});
                    console.log('[GA] E:' + category + ' | ' + action + ' | ' + label);
                } else {
                    console.log('[GA] [DEBUG] E:' + category + ' | ' + action + ' | ' + label);
                }
			} catch(err) { console.log('g.a ev error: ' + err); }
			if (cb && typeof cb == 'function') {
				setTimeout(cb, 800);
			}
		},
		pageview: function(page, cb) {
			try{
			    if (typeof ga !== 'undefined') {
                    ga('send', 'pageview', page);
                    console.log('[GA] P:' + page);
                } else {
                    console.log('[GA] [DEBUG] P:' + page);
                }
			} catch(err){ console.log('g.a pv error: ' + err) }
			if (cb && typeof cb == 'function') {
				setTimeout(cb, 800);
			}
		},
        set: function(metric, data, cb){
            try{
                if (typeof ga !== 'undefined') {
                    ga('set', metric, data);
                    console.log('[GA] S:' + metric ,data);
                } else {
                    console.log('[GA] [DEBUG] P:' + metric ,data);
                }
            } catch(err){ console.log('g.a pv error: ' + err) }
            if (cb && typeof cb == 'function') {
                setTimeout(cb, 800);
            }
        }
	};
</script>

<!-- Global site tag (gtag.js) - Google Ads: 754306960 -->
<!-- /* ----------------- */
	 /*  Google Site Tag  */
	 /* ----------------- */ -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-754306960"></script>
<script>
	try{
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'AW-754306960');
	} catch(err) {}
</script>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T4P8MR3"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
 

        
		
            
                <script src="/media/js/magisto_popup.js"></script>
            

            


    <script src="/media/new/components/flow-player/7.2.6/flowplayer.js"></script>
    <script src="/media/new/components/flow-player/7.2.6/flowplayer.hlsjs.min.js"></script>


        <script src="/media/new/components/flow-player/7.2.6/flowplayer.vod-quality-selector.min.js"></script>
        <script src="/media/new/js/video/player_utils.js"></script>


    <script src="/media/new/components/flow-player/7.2.6/hls.light.min.js"></script>
    <script src="/media/new/js/video/player.js"></script>


		

		
	
    


        
            
        

        
        
            <script>

            
                
            
            </script>
        

        
            
                
                
            
        

        
        
            <script>
                
                
                        common.lazy_load_popup('create-split-popup');
                

                
            </script>
        
    </body>

</html>
```