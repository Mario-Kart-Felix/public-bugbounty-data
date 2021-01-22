```
<!DOCTYPE html>
<html>
<head>
    <!-- Page setup -->
    <title>Idaptive Login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="/vfslow/lib/ui/../uibuild/compiled/idaptive/production/resources/images/logos/idaptive-icon.png"/>

    <!-- CSS includes -->
    <link href='/vfslow/lib/ui/../uibuild/standalonelogin/css/login.css?_ver=1607829597' rel='stylesheet' type='text/css'>

    <!-- Window style -->
    <style type="text/css">
        embed {display:none; width:0; height:0; padding:0; margin:0;}
        html,
        body {
            height: 100%;
            width: 100%;
            margin: 0px;
        }

        .no-script-alert {
            background: #fff;
            text-align: left;
            padding: 10px 20px 10px 45px;
            border-top: 2px solid #ffd324;
            border-bottom: 2px solid #ffd324;
        }
    </style>

    <script type="text/javascript">
        /**
        * Creating a config object that the glued JavaScript can reference without being in an
        * ASP.NET context.
        */
        var AuthData = {"TenantConfig":{"PortalImage":"data:image/png;base64,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","WelcomeMessage":"This welcome text and logo can be configured by visiting\r\nhttps://aak0649.my.centrify.com/manage, under \u0027Settings\u0027.","ForgotUsernameAllowed":false,"LoginImage":"data:image/png;base64,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"},"KnownTenant":true,"Authenticated":false};
        var ServerConfig = {"SkinDef":{"support":{"cloudStatusUrl":"http://status.idaptive.com/","windowOptions":"width=1100,height=800,location=no,menubar=no,status=no,titlebar=no,toolbar=no,resizable=yes,scrollbars=yes","portalUrl":"http://support.idaptive.com/","contactUrl":"https://support.idaptive.com/s/contactsupport"},"brandExperience":"Idaptive","loginFooterImage":"/logos/cyberark-powered-by-shadowed.svg","awsCliUtilitiesUrl":"https://github.com/idaptive/aws-cli-utilities/archive/master.zip","themeColor":"#363a40","theme":"idaptive","adminRegisTxtCSSCls":"","cssDirectory":"compiled/idaptive/production/resources","emailImage":"/logos/cyberark-logo-email.png","footer":{"termsUrl":"https://www.cyberark.com/terms-service-saas/","copyrightText":"© 2019-{0} CyberArk Software Ltd.","termsText":"footer_term","privacyUrl":"https://www.cyberark.com/privacy-policy/","privacyText":"footer_policy"},"navigationColor":"#2F3564","loginCssDirectory":"compiled/jsutil/production/resources","backgroundColor":"#2F3564","proxy":{"download64Bit":"Idaptive-Management-Suite-win64.zip"},"pageIcon":"/logos/idaptive-icon.png","helpDirectoryBrandName":"","mfa":{"waitGif":"/ellipses_anim.gif","stepsFolder":"/steps/"},"loginImage":"/logos/cyberark-logo.svg","macEnrollDialogImage":"/enroll/idaptive-macs.png","brand":"idaptive","helpRoot":"{helpRootServer}/{1}","name":"Idaptive","portalImage":"/logos/cyberark-logo-white.svg","aboutWindowIcon":"/logos/cyberark-logo.svg"},"CustomerLoginBannerMessage":null,"LoginBackgroundImage":null,"Version":"1607829597","EnableCustomLinkOnStandaloneLogin":false,"UsePlainDefaultLoginBackground":false,"EnableBackgroundImageOnStandaloneLogin":true,"LoginSampleText":"user@domain","AutoSubmitUsernameAfterLoginFailure":false,"ResourceBase":"/vfslow/lib/ui/","Locale":"en","LoginFailureRedirectUrlEnabled":false,"DefaultMfaChallenge":null,"EnableLoginBannerFeature":"false","ManifestName":"login","TermsOfUseLink":null,"EnabledSocialUserIdps":"","StandAloneLoginStringsFile":"en.js","LoginImage":"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASYAAAA3CAYAAAChOedQAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAfrSURBVHhe7Zwxbxw3FIT9z5Jf45QXII2V0intlFIXKKXVGTbcGUhluVRKC0hlIKmcUvUl4xyR9dM8csjdu1vr5gMGhu72LffIx+Ej7+BHW2OMWRk2JmPM6rAxGWNWh43JGLM6bEzGmNVhYzLGrA5qTN9evPmqtHn5fvfkxpiHADWmRz/88lXpm/M3uyc3xjwEbEzGmNVhYzLGrA4bkzFmddiYjDGrw8ZkjFkdNiZjzOqwMRljVsewMRljzL6wMRljVoeNSeTTp0/b29vbL4TXjDHLY2Oq8O763fbi4mK7+X6zffzdYyq8h2uur693UTofP37cPv/5+Rd6cfVi924dXBdjcb8WrE1IgbXJhP54/fr1YuattsvU6s/Ly8vuGBBjoBbIpxjz6tWr3bucZ8+f3YtRYG1luvz18vN4KfkTyfJJFZ6TYWMi3NzcbM9+PKNGVBNMKutoxofbD/fugURUwHUxFvdrwdqEFFibikaNuzDaLtTqT5hQjMHY10B+xBio1f/nF+f3Ylr5Eq+HFGB4LLYlfHYljwpZPqnKjNnGNOHu7u7z6sE6sEdYhRXYoD5EYyrqTfrCPo0pM5lapYfxZTGtSotV3q2KMl4PKYwaU5G6wNqYDgBb0Xq12WzkkvjUjKmop6oE+zQmgDGLcbVnzLb2tUqL9fvTn57u3s2JMZDCXGOC5uSTKhtTA1bSTwXTQidOhcSaXtNjSoAN6ikYE9RjTvs2JrYgZVVvVmEVZeOPfInXKmdZMQZSYO09OXvyRf5C6B9mzBD6pYWNaY+gnGadBmFwauU2BqYYlGIMU9igKhMJsMmqtJ8lkgJrkyUWJieMh11fhKoDW2eF0c+qgmeN98+qn2wbV5SZzehniDGQAsYlxuEZGBiHuMgWtZiTwzX2Zky//fEXjduH5v7ye/TMoICBxUray5xBHU101iakwNrMVrwC2stWZPUsbvSzqmQLE1uQsm1cUbY9i9ehTxRiHKTQY0wgy4vWGRiLU3O4ho3pX2LHQkoZO5c5gzo6WbMEVGBttowJoIJi5oRJrjD6WXtgFUPcbuJzxGuwPYqvxcnM+lzNrxgHKSxlTK2jCRan5nCNkzem7MygNSBLMGdQRydrloAKrE3FmADbLkFKpTn6WXtgEzlWdPEcEmbL+vPt27e7iP9g91bP2GIcpNBrTOx6qMWcHK5x8sbEBgSrYA2siPFX4FGtEhjMGdTRycrahBRYm+g/FVZdKPGsXVQ47Ad7UeoCw6qheM6Ev6fvF+OK1WDczrHnV8/XYhykwPIazxXz9Ob3m/QnMq15AFg+oRJmYxFVOyo5eWOKqyDUModsdZlKmXCnZkyj8SxOldInBbbdLAsMM65S7bEzyunCFN/LzqEYMRZSUHK0JaWqy/JJUS3XT96YRiaLMujKhDs1Y2L9ppy1sHZV9RgTM5gyOdkCVqoedhxQtnOsv3v6LMZCCkqO1qSaZ5ZPimq5fvLGhIkRO6w1WZRBV5KPDepDNiY28ZVvPg9lTMxgynYtbuNijsRqq7zPDK3n/DLGQgpzjAnPrm41bUwVLX3G1DIHG9P/6jGm0XgWp6rHmDAZYzwMiW3j4jaHmS7uh8pj+hoMrIdpbJGCkqNRMKQe0wQ2pormGBNKbtZpNXB+gAEpYkk5akxqCc0OknG/FqxNSGGOMbFJDynnGKxd5bOOwNrChI2vxYoi287F10oFphLjIQVmTFMjYDmLA+leWD7VDEdlb8a0FIrBzTEmthpC6te5gCXBqDFBCixuzcbEtjSQsmU4pDFlC9VUcRsHmPGyH2MqP4+YEuMhhZYx4XnZYX/8qUMLG1NFc4wJsOoDSaV85Q9GjQn3j3FQyxTxPotTOIYxZc/LJjjjkMaUjclU2eRllVWUYsRT2D0UWsYE2DXI+55ntDFVNNeY2ABB2FYp5sTilQkLmCniXCNLDrweD2Khud+iKPQaE5716urqXgyE1Vo1/kMaE2BjMlX23JkBF41MWHYfBZaTsX2MD6uaerabNqaK5hoTBihLRqwg+N/9WDLiNbzHjEI1JpZAEIwmTj78HQ9Ti9T2ljYm/Dhv+mM99AeE84p47VTq84Ks3dJWS70mlm07odoCgDxiMUW92yTA7qOgGBPI8k/tM5ZPmA9sHDIxbEw7srOmqPKrVfbeVOrEy1atovIrWnZeUYR43EdhaWMaUe8B8Nx2e0wQsIPsopa51LZzvd94AXYfBdWYsvybW4H3iGFjmtAqxXvUMxnmtot4lWMbU69JgEMbE8gWi9b2MxtLVOQjsHspqMYE2LWQUuHZmCpaypgAOrpWwajqMQuQJUdLS3yLAinMMQjEjlQM4BjGxCofpYqAccU4qLdKLLB7KfQYU3aUoRyE25gqWtKYAAYDA9trUBhcxLVW1QxsIVoHr0W4rverZ3BIY8JExnnNaH8UjmFMrPJR78POAUfGCsT7QAo9xgSySq9lqDamipY2pgIMCgmFyYVBnU6Q8jfeQ9UyWg0wpm2WJMe/pb3RJAf4TEimKAV8RhYbtWRfALXdTCPGyPqpVT0U0F6MHSXeR70Xe4bWuMTri2pk+dQjxrAxLSHFUI5pTMaY42BjMsasDhuTMWZ12JiMMavDxmSMWR02JmPM6rAxGWNWh43JGLM6qDFhoh9Cm5fvdy3m3Pz5N42dSrmPMebrgRqTMcYcExuTMWZ12JiMMavDxmSMWRnb7T8jdfyANkF3UgAAAABJRU5ErkJggg==","PrivacyPolicyLink":null,"Environment":"Aws"};
    </script>
</head>
<body class='standalone-login'>

    <!-- Warning for disabled javascript -->
    <noscript><p class="no-script-alert">JavaScript is currently not supported/disabled by this browser. Please enable JavaScript for full functionality.</p></noscript>

    <!-- Locale strings -->

    <script src="/vfslow/lib/ui/../uibuild/standalonelogin/login.js?_ver=1607829597"></script>

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            LaunchLoginView({
                containerSelector: '.standalone-login',
                challengeId: ''
            });
        });
    </script>
</body>
</html>

```