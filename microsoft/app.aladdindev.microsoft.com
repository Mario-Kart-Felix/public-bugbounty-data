```<!-- HTML for static distribution bundle build -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Swagger UI</title>
    <link rel="stylesheet" type="text/css" href="./swagger-ui.css">
    <link rel="icon" type="image/png" href="./favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="./favicon-16x16.png" sizes="16x16" />
    <style>

        html {
            box-sizing: border-box;
            overflow: -moz-scrollbars-vertical;
            overflow-y: scroll;
        }

        *,
        *:before,
        *:after {
            box-sizing: inherit;
        }

        body {
            margin: 0;
            background: #fafafa;
        }
    </style>
    
</head>

<body>
    <div id="swagger-ui"></div>

    <!-- Workaround for https://github.com/swagger-api/swagger-editor/issues/1371 -->
    <script>
        if (window.navigator.userAgent.indexOf("Edge") > -1) {
            console.log("Removing native Edge fetch in favor of swagger-ui's polyfill")
            window.fetch = undefined;
        }
    </script>

    <script src="./swagger-ui-bundle.js"></script>
    <script src="./swagger-ui-standalone-preset.js"></script>
    <script>
        window.onload = function () {
            var configObject = JSON.parse('{"urls":[{"url":"/swagger/v1/swagger.json","name":"Aladdin Service API V1"},{"url":"/swagger/v2/swagger.json","name":"Aladdin Service API V2"}],"deepLinking":false,"displayOperationId":false,"defaultModelsExpandDepth":1,"defaultModelExpandDepth":1,"defaultModelRendering":"example","displayRequestDuration":false,"docExpansion":"list","showExtensions":false,"showCommonExtensions":false,"supportedSubmitMethods":["get","put","post","delete","options","head","patch","trace"]}');
            var oauthConfigObject = JSON.parse('{"scopeSeparator":" ","useBasicAuthenticationWithAccessCodeGrant":false,"usePkceWithAuthorizationCodeGrant":false}');

            // Workaround for https://github.com/swagger-api/swagger-ui/issues/5945
            configObject.urls.forEach(function (item) {
                if (item.url.startsWith("http") || item.url.startsWith("/")) return;
                item.url = window.location.href.replace("index.html", item.url).split('#')[0];
            });

            // If validatorUrl is not explicitly provided, disable the feature by setting to null
            if (!configObject.hasOwnProperty("validatorUrl"))
                configObject.validatorUrl = null

            // If oauth2RedirectUrl isn't specified, use the built-in default
            if (!configObject.hasOwnProperty("oauth2RedirectUrl"))
                configObject.oauth2RedirectUrl = window.location.href.replace("index.html", "oauth2-redirect.html").split('#')[0];

            // Apply mandatory parameters
            configObject.dom_id = "#swagger-ui";
            configObject.presets = [SwaggerUIBundle.presets.apis, SwaggerUIStandalonePreset];
            configObject.layout = "StandaloneLayout";

            // Begin Swagger UI call region

            const ui = SwaggerUIBundle(configObject);

            ui.initOAuth(oauthConfigObject);

            // End Swagger UI call region

            window.ui = ui
        }
    </script>
</body>
</html>
```