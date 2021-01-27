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
    <link href='/vfslow/lib/ui/../uibuild/standalonelogin/css/login.css?_ver=1611430209' rel='stylesheet' type='text/css'>

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
        var AuthData = {"TenantConfig":{"PortalImage":"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAAAkCAYAAAAO7jHjAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAABEdSURBVHhe7VwJVBRX1m52BEUQFHdHxQURaJqlWRsaaGhoNlkEQWxkExVw3/9M/2eMMTMkUbJNjH+icdecGIOKsjY0zaaohOASNTExkjkZo8nJ6GQy4/T77y1etY1sjQiC4TvnHpq6b7n16qv73r31qjhPC0IIl/7sMVRXr47Ydeu7y+OKq8jGKzdU3/7j10CqGsIQ+hbk2DG92SWKnZyTZSrOp2cJ57NiMrWo8vJHV+5Y0iJDGELfIfXChfEmJ0t+4XxWQjgnihjRPVNJnMqV8bTIc4PqeqFRS0uLSVKOzEwq22G+dPt2C7lcrk/V/YpMmcxk6cbtFqnr1o2gh4bwLBBW1TDZ6LPiB+j51AQsUhB3eU06LdLvILfkxtJNf4qaI0kssPIIuWnoILhtzPVrMXEJaOFGL1pBi/Ub5oYnWJvwhJ8b84Qtps7+t/iJ6c5UNYTeAqfgyWcrj+qV1RDO6XLCOasgE4sq//6X69en0yL9CgIeT5CU9aGZm4hwbD1bZQ6Vud4ECPgmLdpv4EUtmm5g7/Mb2mDAFZKo7E3RVDWEZ4F9N/82xr68Nm/MmYrK6eU1h9ZfveFJVf0KIpPpusSk/Fnf0ReI58GIzlwfgv8z4iQkTtHSPFpcjdVbX5tkExy7wjYsMTd//ycT6eEO4ZuUMxHaiOHOWxRrI45xooe7hEv04mlAwIdIQEOuH4nM3hRFVc8EhMPRyd72htcscfwWwcKlmXfv3u18mnd2NrCTzA92BvvtJAuCc3JyjKhm8AMGQo/+bAccJBT6b59AmJo1y9jR9yHr+ay9JfecoqRbhCnLEwOkOUnClNzE8Ow1U2lxBpmy16ysPMVf6NoLiJ6DL5noF1Etk8mMqbodhvOES/WBRHpQ3pIf9AUhxJCqOkVfE3D51jy/Md6SX3XsvIkReFi3uMUHVNevd0gsx8hErhHcjHr2PsTCQ0xefu/DcKoa+AAPow8DbkD/VQOIpSv78stpgtqLIv+6i3MI3GVUxSFxcYbLG6/GzCqvfWtaqfKdAOX5SFV+fp/cdQ7hSVs54PHwQps4CX9ZvGWrd3ekd5onFes5CNTTtD789lu4jE/V7WBk752JUzkSfLSH+BqMR6dkZdHXBARv/DoHyMecwyw+mewf9d/6xiszqboNeDGL+QZ4vjA7mLuLyet7DiZQ1cAFerbYusa00UWKc2aF5V84llVvu07vMLzAktqGDKtixX3DQjkxOVPxL5viqtfhwjDRpkh5frV5qRLWhpWEA9GxSbGSeCnq/4KkRf2zApFxdMf5hH3MmeNFOHZexNJdfEqbPkSpuXOHcYX/ZgkIxL0nWbJqAlW3QxsCeoqvDgQChmWtXm7o5M/YhDJTPP8G2GVB1W3gHJvmpknA1z488NyzFd0ivP6S3YjTZb9xTssJ51QZ0S9RkmlFlVLUBZSUWBqfLGnB40wUDNGwAUTBourzscfv3LEcear075yCxykaTNcYFZQ8ENXVtZkKewtyLE5vnHfYaYaAQBCDud47qapL4LqRH5eaYcEPvjRWEN4Ynb0hpSuvORAJqFKphnklLnnT3FV0GZYQ8rRN27yoqh0GJQG55VVSHfRgLIngt9nJkt2oG18k5+pS4j3WK4hNsUK2tvlLril4RfVxKvpwzKWiNoRp/BmBEvBUTwnIAohkANLtem4gEhCBNw3aT7rJcw5KAgZUn3MyOVX2iHOylKDolVYT2xJFLur8S2uthxWU3OOcpB4QxKC4igir6hMxOh5xsuSnth4QPGRB8T8DFPUdrlGeFr0loLYYqATUFoOSgBBI6EXWXFg/tqTq1rBTZV87lFe/3/zDD8MZHayz/BT1q03PVPyie6aCmIB3tCmq3Ce/dYu5MJ6Kuj8OxxxhYQWInBiX1hCHsuq3uprmegq0gcjmGE4SRqoJCGu5fFwXMjoNoVXaQQs9RvG6I3nCDJaAY71Dr5Jm+XC2LpV259UVAQmMU9rGV2zcYlKD+PGpKa7zU5O4kQs9N7/+1wmk+Vi3HlkTnfWPwOOoj1q60dmQpqksPELI3hOFsbRep/YPCKBxzT+Q4cuam3HA2xiJOvRo0+XVUZLaS35kzx61V8DfyReaUqeWKvdOL1MeDoKARdXYaErVvcYYj5Aoc/fgI9YQgIzyCL6HA4vkGOkmahntGXLM3E10BPXm7qIjlp6So64xi8NoVQa4BrQLT1g5ykN8FDzCkTHu4nlUpYaVh9hpJD/4oCWUsXAPuoxEwn7MXAJ/nSCMOMH2MYofdNSCL/rAJyljHK3K4EkCSrLWB5OffjJP3fzyhmmBsXUjeP4PMfrGaBxF396HmLsG3rcLW1CyavuORaSlwYQ21SFkcA7mfNFLeA6jPIMPu8Wn+1AVg0jpCnMLt6B3RoGNk/yjlNg+2o9EnBOWeBHHpnWMQNyCDmNmgFYdPAASGqj27TPFv/SQGph2ibvQ5BxRe56PC2Z6mMGeW7fGOivqVg0rKH1lVnnNn166fC0A2ug0n6gJvBHGeYd+xJkLUwp6PiQfkoMViIaZ9AQr9gLiGLWwzZMQsmuXwQTfMCWjh3asPIL3YrtUzWCcb3g2xx68Bran2T7Tn2YfXsSIF0BiczeJaFUGagLCjYEEXPPnN9+2DY2vMVZHrq1J88ftssc8yQgXEfFIzDxdrFSOp821Qx6MuwlP2II26Dj4Eudo6RaqYpD+0nZnE5fAVluxbU37Z4Oo7Qex9SIhGas/oVX7F2/DtCqovui65sLlKXAR2kxH7968Pdeh8tymyaXKP65puiLR1K9tuubgWFF31vpsxbfTy2rOZ4DHI76+zGI4u7HZf1Jp1TVDWDsagIwrUd5OaWiKQ936yzfsJhYrburBmhEDGx0IXkYXKx5F1V/IerL/jvCYgHhHw4DOdn88uIwgYTQE7vwnH8UhASFyLGPKwwUY7SHe/SQBx/tELEfytraj0b6aNI/7MOL5k+jsjW22o2l6QD2Yvsf6hrfWpWIAnsjU2f/BMK7fV7B0+M7Eye+/OjjNIzlArwPEnh2a0HjoRHGHJEQCQv2vsX1dOEfXmJQNVMUAPK0LQ0CG2Br2ozDn8Nh+1IdmrT5Oq/YfGu7/vHxMobwZiKKyLFbcF1XVMyRBbPnixqQpxYrvdIuVRKdIQSyKFI8S6i7Gou7Vr74aaV1YfgUjXybYOF1OzArlj9wra3hX794dMfGM/FsmfcMGIafKifmpsh+2NTVZTy6q/ISpx+pQoI1Rp8t+2XL56ylM593ARjQ/fEZowgHXuNRP/hAY/ZAhIQwiTDff2EoWHJwZOp9KAsoB4aKcIFqVgTYE5EVJnWdIFuyfLUk4ONYnrIm9cNDHr7zYlE9niFv7mCWJPzRVFPMuN3bxaFqVgSYBGWFsBOKBt7KVJDTF527OXiZ7xSYvb5/pCtkO8/TNL7v7SZe+MUEQ8UBNGLBtRnBcAWloaDfDdEfAxI0bLaaLY/PR/jnhiRWaUzAvWlo9MzT+ADtG04Pn7/dISPenVfsPERebWwmEJIBgYeTJ0jrcaIA6CDpykXhqkkBAMf5sBZPotS2pCtTTJBgKeLOxZ8q3h9RfcNFn84MaogfBStqFpjzjguKv2kTIVHShf/sSZSRjmBZAO8glublXYubnnFlwccF7GHP9dpA4jh4TiLDSgVfVhoAIpg9obyTPP10dhPhIrqmuKkc80Ue7uu0IyJBPQITS5e8R8nOHCWMM/N7b9zEfyH2NJSGSa5IwIoIWUaM7AiLQLrRv3vJ1PDYIMQFvvTHvbf4T9nc78/QJBjMBEQSCI/CCjYx3AYJonYjWkoAsepuGYUgCSwbHqOSPtYly3977sd1YQfh9JAzWBa97/snnvNoQkIVmGmaYk5DEr97yXDaOtEN3U/DkZzgFj2wzBWskuFGgjZ5MwSwGDQGhnjk/6P5f9x+dQ9VdAm0RLMzcgKTF+gYOPo+cIpJdqJrBC0FAhLZByMoOghB7Nggp1z4IWdN4Ze7UUuU3+hpBiFUPghBNDBoCQh/W3qF7qUorpG3ahhta72F93F7mnZT1ClUxeGEI2BvARXuqNMzhO3cmOSvqVz9NGkYTg4WASJDZkvhMqtIKGHgAaWtZG6f4R+3TtPF3QUA4Ya0S0RHnLwlJQYE6cdrXiWgWg4WAmHLxSV7Ss/UtjO9oz5BDaB+mSsb5hJ3GrXFU/eITUOtHcRCcmMIacWZp1YH+fBSHGMgEdItNnwoEfIB9GDr6keD0lT0loA4+YWEJOF4QXvS7ImCXmxFq229G0C96DpsRBjABgzNWjjNy9L2PfeBOaseIhUlUpRVwo4WVp/gMkyhGG71CDuEjRKp+8Qn4NNuxpkGw0q/bsQYwAY8ePTrMlOd/k+kDgogpAdGvUpVW2COXGw939r/RWt8bPGDE7ysI6W5DKnjA7zG9whAMiGgEUa24piHuo/7ckPp8CHhFGwIyHsxD/Fnr4y7M5QV9jrtgqLpb+EmXBejb+zzCurhZgRuRrE6RIXpDwAVrX/KgqoELuCCtW/KLFfXDC+WNT27JF1efS7UoUtxt3ZIv/5dtifItuDBMkrX9lvyqvtmS308ENHXyz2YICOXNXAK/hH612jI1OyQuQxcvPNTDJxGhGauWUFWXUN2+Pcw+MqkOCY+kGeES+NP6V/PbvLnXEwJy56W4Gji05hTRDvHiXG+qGvjA3B4Qq92OW7xgWxqvTVW/lMThqMtovpT0h+KqdwRV58L74qWk/iLgtOCYLB24yFjeyNHvP7E5W5LxERZVd4ptO3dbm7mKWlgiWXtLft767geBXfVFGgpMRGm5eYzHovbx49OOsk+oWPSEgIEpuTMMHQT/xLI64JE9EjKO9EVW4rkABlOvswHF410Ndm/RXwR0T8ywhwvY+hITEMnCPeih6/zUN3wXZS/0X5y9UJC8NDp21ao2uU4W3MjkZZrvLEM0+4/I7A1rjh8vscRpmh0j/KTIa7v3OvsszDqO0yRTfrYHGeUh/lH25q7ZtDk1ekJAlUplOiVw3jfsThtsnztv0UlBclZqQGpOku+iZQucIhI63fo1INH6YnpNnvXZSoVNec3h5/Fien8RkBCZ7hhP8UdYliUh9se+/G7qEkgilq0R0OJtoFJdN7INTTjMvAZKSYUbUS09gr8b6yP51CYoZvd4Qdj78LtqlHvwb8z+Q6acOz6+U0k3bU2jTbVBTwiI0XPYkjWrMB3EtI0C9ZiNsHgOEKUHpeXuocUHPtp8mgMDEYiAn8enORgCzk+9rCagnfdbVNUlkIAT/MIrWQJCsLCnO0+d//7+ibbhCxoxqcxMqTS4QDECjzJ/xeZgWrQdfvzxRzOXuMUHTJwDWusyJKBtIKk1ic14KU/0lA9SN7+c9eTUy4IS8DbWw+WBW0zKZqrqEOhhPRdk/t9wdo8gtZ0R6DNs6boTtOjAx0D5OBHuEOHFSA8aO/q2GPOEd4y5vmupqkvg1DdFGLUbP16EHw+ycg/e3B0BEd9///3oyOXrt070jag2cvC5bsT1hT79WszcRN+EZKyyp8U6BNq6aP3/LpnoF34R7GSe77aS7zEJkdxWniH/5senn8r7YB+/K5t2wU003DmgEO0HYt/hRSYnUlWnwA84pf/P9hTwyGdNef5X2Q84gT13gJzraLGBj4H0eba4uGN6+Bk2qUxmHhcXp/XzZJlMZthab0eP6iEIaTCA/oylK2TmiRu3W+Tk55tRVbfACFckzfaaLIxcC15unwVf9Cm+X2LtKd4pTl+xcuf+I65IFFq8S+Tk5Bvh598yN7w6EgLFbm8gFqRhl0FhYaERfsIO6+PYUdXgAE4LQx+o7D3Aw7FvpXW4qfWFB9w1Q5/oHUIvweH8P7KEet6DfgBmAAAAAElFTkSuQmCC","WelcomeMessage":"Welcome to Idaptive for Fitbit","ForgotUsernameAllowed":false,"LoginImage":"data:image/png;base64,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"},"KnownTenant":true,"Authenticated":false};
        var ServerConfig = {"SkinDef":{"support":{"cloudStatusUrl":"http://status.idaptive.com/","windowOptions":"width=1100,height=800,location=no,menubar=no,status=no,titlebar=no,toolbar=no,resizable=yes,scrollbars=yes","portalUrl":"http://support.idaptive.com/","contactUrl":"https://support.idaptive.com/s/contactsupport"},"brandExperience":"Idaptive","loginFooterImage":"/logos/cyberark-powered-by-shadowed.svg","awsCliUtilitiesUrl":"https://github.com/idaptive/aws-cli-utilities/archive/master.zip","themeColor":"#363a40","theme":"idaptive","adminRegisTxtCSSCls":"","cssDirectory":"compiled/idaptive/production/resources","emailImage":"/logos/cyberark-logo-email.png","footer":{"termsUrl":"https://www.cyberark.com/terms-service-saas/","copyrightText":"© 2019-{0} CyberArk Software Ltd.","termsText":"footer_term","privacyUrl":"https://www.cyberark.com/privacy-policy/","privacyText":"footer_policy"},"navigationColor":"#2F3564","loginCssDirectory":"compiled/jsutil/production/resources","backgroundColor":"#2F3564","proxy":{"download64Bit":"Idaptive-Management-Suite-win64.zip"},"pageIcon":"/logos/idaptive-icon.png","helpDirectoryBrandName":"","mfa":{"waitGif":"/ellipses_anim.gif","stepsFolder":"/steps/"},"loginFooterImageCustomized":"/logos/cyberark-powered-by-shadowed.svg","loginImage":"/logos/cyberark-logo.svg","macEnrollDialogImage":"/enroll/idaptive-macs.png","brand":"idaptive","helpRoot":"{helpRootServer}/{1}","name":"Idaptive","portalImage":"/logos/cyberark-logo-white.svg","aboutWindowIcon":"/logos/cyberark-logo.svg"},"ShowNgLogin":false,"CustomerLoginBannerMessage":null,"LoginBackgroundImage":null,"Version":"1611430209","EnableCustomLinkOnStandaloneLogin":false,"UsePlainDefaultLoginBackground":false,"EnableBackgroundImageOnStandaloneLogin":true,"LoginSampleText":"user@domain or user@suffix","AutoSubmitUsernameAfterLoginFailure":false,"ResourceBase":"/vfslow/lib/ui/","Locale":"en","ShowNgLoginFormLeft":false,"LoginFailureRedirectUrlEnabled":false,"DefaultMfaChallenge":null,"EnableLoginBannerFeature":"false","ManifestName":"login","TermsOfUseLink":null,"EnabledSocialUserIdps":"","StandAloneLoginStringsFile":"en.js","LoginImage":"data:image/png;base64,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","PrivacyPolicyLink":null,"Environment":"Aws"};
    </script>
</head>
<body class='standalone-login'>

    <!-- Warning for disabled javascript -->
    <noscript><p class="no-script-alert">JavaScript is currently not supported/disabled by this browser. Please enable JavaScript for full functionality.</p></noscript>

    <!-- Locale strings -->

    <script src="/vfslow/lib/ui/../uibuild/standalonelogin/login.js?_ver=1611430209"></script>

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