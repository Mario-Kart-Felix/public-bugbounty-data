```<!DOCTYPE html>
<html id="top" lang="en" ng-app="demo">
    <head>
        <title>AngularUI for AngularJS</title>

        <link href="logo/UI_Shield.png" rel="shortcut icon">

        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link href="css/app.css" rel="stylesheet">
    </head>

    <body ng-controller="DemoCtrl">
        <header class="navbar navbar-fixed-top navbar-default">
            <div class="navbar-inner">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="http://angular-ui.github.io/">AngularUI</a>
                    </div>

                    <div class="container">
                        <div class="container">
                            <div class="dropdown"></div>

                            <div class="navbar-collapse">
                                <ul class="nav navbar-nav">
                                    <li>
                                        <a href="#modules">Modules</a>
                                    </li>

                                    <li>
                                        <a href="#ide-plugins">IDE Plugins</a>
                                    </li>
                                    <li>
                                        <a href="https://github.com/angular-ui"><i class="fa fa-lg fa-github"></i> GitHub</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <div>
            <header class="jumbotron" id="overview">
                <div class="container">
                    <div class="col-sm-3 logo"></div>
                    <div class="col-sm-7">
                        <h1>AngularUI</h1>

                        <p>The companion suite(s) to the <a href="http://angularjs.org">AngularJS</a> framework.</p>
                    </div>
                </div>

                <div class="bs-docs-social">
                    <div class="container">
                        <ul class="bs-docs-social-buttons">
                            <li>
                                <a href="https://twitter.com/share" class="twitter-share-button" data-hashtags="angularjs">Tweet</a>
                                <script>!function(d, s, id) {
                                                var js, fjs = d.getElementsByTagName(s)[0];
                                                if (!d.getElementById(id)) {
                                                    js = d.createElement(s);
                                                    js.id = id;
                                                    js.src = "//platform.twitter.com/widgets.js";
                                                    fjs.parentNode.insertBefore(js, fjs);
                                                }
                                            }(document, "script", "twitter-wjs");</script>
                            </li>

                            <li>
                                <!-- Place this tag where you want the +1 button to render. -->

                                <div class="g-plusone" data-size="medium"></div><!-- Place this tag after the last +1 button tag. -->
                                <!-- Place this tag after the last +1 button tag. -->
                                <script type="text/javascript">
                                            (function() {
                                                var po = document.createElement('script');
                                                po.type = 'text/javascript';
                                                po.async = true;
                                                po.src = 'https://apis.google.com/js/plusone.js';
                                                var s = document.getElementsByTagName('script')[0];
                                                s.parentNode.insertBefore(po, s);
                                            })();
                                </script>

                            </li>
                        </ul>
                    </div>
                </div>
            </header>

            <div class="container" >
                <section id="modules">
                    <h1 class="page-header">Modules</h1>
                    <p class="text-muted">
                        <input class="form-control" autofocus="autofocus" style="max-width: 15em; display: inline-block;" ng-model="searchText" placeholder="search...">
                        {{(modules| filter:searchText).length}} modules found
                    </p>
                    <div class="list-group">
                        <div ng-repeat="module in modules| filter:searchText | orderBy: 'name'" href="{{module.src}}" class="list-group-item">
                            <p class="pull-right">
                                <a href="{{module.home}}" title="Home / Demo page" ng-if="module.home"><i class="fa fa-3x fa-home"></i></a>
                                <a href="{{module.src}}" title="Code"><i class="fa fa-3x fa-github"></i></a>
                            </p>
                            <h4 class="list-group-item-heading">{{module.name}}</h4>
                            <p class="list-group-item-text text-muted">{{module.desc}}</p>
                        </div>
                    </div>

                </section>


                <section id="ide-plugins">
                    <h1 class="page-header">IDE Plugins <small>AngularJS support in your favorite text editors</small></h1>

                    <div class="clearfix">
                        <ul class="nav nav-tabs nav-stacked col-md-6">
                            <li>
                                <a href="http://github.com/angular-ui/AngularJS.tmbundle">AngularJS.tmbundle <span class="text-muted">TextMate</span></a>
                            </li>

                            <li>
                                <a href="http://github.com/angular-ui/AngularJS-Atom">AngularJS-Atom <span class="text-muted">Atom</span></a>
                            </li>
                        </ul>

                        <ul class="nav nav-tabs nav-stacked col-md-6">
                            <li>
                                <a href="http://github.com/angular-ui/AngularJS-sublime-package">AngularJS.sublime-package <span class="text-muted">SublimeText</span></a>
                            </li>

                            <li>
                                <a href="http://github.com/angular-ui/AngularJS-brackets">AngularJS-brackets <span class="text-muted">Brackets</span></a>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>

        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.1/angular.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
```