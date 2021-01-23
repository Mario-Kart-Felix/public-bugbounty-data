```<!DOCTYPE html>
<html lang="en" ng-app="monet" class="ng-scope">
    <head>
        <meta name="description" content="">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="chrome-webstore-item" href="https://chrome.google.com/webstore/detail/mdpjklapiilnbdllcggmalghfkicoegi">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Coda+Caption:800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Global configuration for the app, even before angular is loaded -->
        <script type="text/javascript" src="/monet/js/app-global-setup.js"></script>

        <link rel="stylesheet"
              type="text/css"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"/>

        <!-- External Dependencies -->
        <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="/bower_components/angular-xeditable/dist/css/xeditable.css">
        <link rel="stylesheet" href="/bower_components/selectize/dist/css/selectize.bootstrap3.css">
        <link rel="stylesheet" href="/bower_components/angular-bootstrap-datetimepicker/src/css/datetimepicker.css"/>
        <link rel="stylesheet" href="/bower_components/angular-datepicker/dist/angular-datepicker.css"/>
        <link rel="stylesheet" href="/bower_components/ng-tags-input/ng-tags-input.min.css">
        <link rel="stylesheet" href="/bower_components/ng-tags-input/ng-tags-input.bootstrap.min.css">
        <link rel="stylesheet" href="/bower_components/angularjs-toaster/toaster.min.css">
        <link rel="stylesheet" href="/bower_components/angular-bootstrap-nav-tree/dist/abn_tree.css">
        <link rel="stylesheet" href="/bower_components/angularjs-slider/dist/rzslider.min.css">
        <link rel="stylesheet" href="/bower_components/angular-resizable/angular-resizable.min.css">
        <link rel="stylesheet" href="/bower_components/overflow-marquee/build/overflow-marquee.min.css">
        <link rel="stylesheet" href="/bower_components/codemirror/lib/codemirror.css">
        <link rel='stylesheet' href="/bower_components/angular-object-diff/dist/angular-object-diff.css" type="text/css">
        <link rel='stylesheet' href="/bower_components/smart-area/dist/smart-area.min.css" type="text/css">
        <link rel='stylesheet' href="/bower_components/angular-ui-select/dist/select.min.css" type="text/css">
        <link rel="stylesheet" href="/bower_components/slick-carousel/slick/slick.css">
        <link rel="stylesheet" href="/bower_components/slick-carousel/slick/slick-theme.css">
        <link rel="stylesheet" href="/bower_components/angular-ui-switch/angular-ui-switch.min.css">
        <link rel="stylesheet" href="/bower_components/bootstrap-daterangepicker/daterangepicker-bs3.css">
        <link rel="stylesheet" href="/bower_components/jsgrid/dist/jsgrid.min.css">
        <link rel="stylesheet" href="/bower_components/angular-bootstrap-toggle/dist/angular-bootstrap-toggle.min.css">


        <script type="text/javascript" src="/bower_components/lodash/dist/lodash.min.js"></script>
        <script type="text/javascript" src="/bower_components/jquery/dist/jquery.min.js"></script>
        <script type="text/javascript" src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/bower_components/immutable/dist/immutable.js"></script>
        <script type="text/javascript" src="/bower_components/moment/moment.js"></script>
        <script type="text/javascript" src="/bower_components/moment-timezone/builds/moment-timezone-with-data.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular/angular.js"></script>
        <script type="text/javascript" src="/bower_components/angular-moment/angular-moment.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-sanitize/angular-sanitize.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-ui-router/release/angular-ui-router.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-resource/angular-resource.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-animate/angular-animate.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-bootstrap/ui-bootstrap-tpls.js"></script>
        <script type="text/javascript" src="/bower_components/selectize/dist/js/standalone/selectize.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-datepicker/dist/angular-datepicker.js"></script>
        <script type="text/javascript" src="/bower_components/angular-bootstrap-datetimepicker/src/js/datetimepicker.js"></script>
        <script type="text/javascript" src="/bower_components/angular-bootstrap-datetimepicker/src/js/datetimepicker.templates.js"></script>
        <script type="text/javascript" src="/bower_components/angular-selectize2/dist/angular-selectize.js"></script>
        <script type="text/javascript" src="/bower_components/ng-tags-input/ng-tags-input.min.js"></script>
        <script type="text/javascript" src="/bower_components/angularjs-toaster/toaster.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-bootstrap-nav-tree/dist/abn_tree_directive.js"></script>
        <script type="text/javascript" src="/bower_components/spin-js/spin.js"></script>
        <script type="text/javascript" src="/bower_components/angular-spinner/angular-spinner.js"></script>
        <script type="text/javascript" src="/bower_components/angular-xeditable/dist/js/xeditable.js"></script>
        <script type="text/javascript" src="/bower_components/angularjs-slider/dist/rzslider.min.js"></script>
        <script type="text/javascript" src="/bower_components/angularUtils-pagination/dirPagination.js"></script>
        <script type="text/javascript" src="/bower_components/angular-clipboard/angular-clipboard.js"></script>
        <script type="text/javascript" src="/bower_components/angular-file-saver/dist/angular-file-saver.bundle.js"></script>
        <script type="text/javascript" src="/bower_components/angular-resizable/angular-resizable.min.js"></script>
        <script type="text/javascript" src="/bower_components/ngDraggable/ngDraggable.js"></script>
        <script type="text/javascript" src="/bower_components/overflow-marquee/build/overflow-marquee.min.js"></script>
        <script type="text/javascript" src="/bower_components/codemirror/lib/codemirror.js"></script>
        <script type="text/javascript" src="/bower_components/angular-ui-codemirror/ui-codemirror.min.js"></script>
        <script type="text/javascript" src="/bower_components/codemirror/mode/javascript/javascript.js"></script>
        <script type="text/javascript" src="/bower_components/angular-object-diff/dist/angular-object-diff.min.js"></script>
        <script type="text/javascript" src="/bower_components/smart-area/dist/smart-area.js"></script>
        <script type="text/javascript" src="/bower_components/ajv/dist/ajv.min.js"></script>
        <script type="text/javascript" src="/bower_components/escodegen/escodegen.browser.min.js"></script>
        <script type="text/javascript" src="/bower_components/urijs/src/URI.min.js"></script>
        <script type="text/javascript" src="/bower_components/validator-js/validator.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-ui-select/dist/select.min.js"></script>
        <script type="text/javascript" src="/bower_components/intersection-observer/index.js"></script>
        <script type="text/javascript" src="/bower_components/angular-elastic/elastic.js"></script>
        <script type="text/javascript" src="/bower_components/angular-ui-switch/angular-ui-switch.min.js"></script>
        <script type="text/javascript" src="/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script type="text/javascript" src="/bower_components/angular-daterangepicker/js/angular-daterangepicker.min.js"></script>
        <script type="text/javascript" src="/bower_components/jsgrid/dist/jsgrid.min.js"></script>
        <script type="text/javascript" src="/bower_components/angular-bootstrap-toggle/dist/angular-bootstrap-toggle.min.js"></script>

        <script src="/bower_components/jquery-bridget/jquery-bridget.js"></script>
        <script src="/bower_components/ev-emitter/ev-emitter.js"></script>
        <script src="/bower_components/desandro-matches-selector/matches-selector.js"></script>
        <script src="/bower_components/fizzy-ui-utils/utils.js"></script>
        <script src="/bower_components/get-size/get-size.js"></script>
        <script src="/bower_components/outlayer/item.js"></script>
        <script src="/bower_components/outlayer/outlayer.js"></script>
        <script src="/bower_components/masonry/masonry.js"></script>
        <script src="/bower_components/imagesloaded/imagesloaded.js"></script>
        <script src="/bower_components/angular-masonry/angular-masonry.js"></script>
        <script src="/bower_components/ngstorage/ngStorage.min.js"></script>
        <script src="/bower_components/jszip/dist/jszip.min.js"></script>

        <script src="/bower_components/slick-carousel/slick/slick.js"></script>
        <script src="/bower_components/angular-slick/dist/slick.js"></script>

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/esprima/2.7.3/esprima.min.js"></script>

    </head>
    <body>

        <!-- Angular App Dependencies -->
        <link href="/common/css/monet-slider.css" rel="stylesheet" type="text/css">
        <link href="/monet/css/monet-selectable.css" rel="stylesheet" type="text/css">
        <link href="/monet/css/dynamic.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/facetedsearch.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/approvals-list.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/creatives-list.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/creative-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/comments-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/comment-view.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/title-tag-view.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/creative-preview.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/approval-status-selector.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/dev-portal.css" rel="stylesheet" type="text/css"/>
        <link href="monet/css/selector-widget.css" rel="stylesheet" type="text/css"/>
        <link href="monet/css/date-range-picker.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/containersetup.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/campaign-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/assignment-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/title-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/entity-usage.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/dcs-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/localization-presets.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/asset-mgmt.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/rule-config-editor.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/components-list-readonly-view.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/fb-deposit.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/w-entity-table.css" rel="stylesheet" type="text/css"/>
        <link href="/monet/css/navbar.css" rel="stylesheet" type="text/css"/>

        <!-- Material -->
        <link rel="stylesheet" href="/monet/css/material/material-theme.css" type="text/css">
        <link rel="stylesheet" href="/monet/css/material/material-button.css" type="text/css">
        <link rel="stylesheet" href="/monet/css/material/material-nav.css" type="text/css">
        <link rel="stylesheet" href="/monet/css/material/material-sidebar.css" type="text/css">

        <!-- flex-box -->
        <link rel="stylesheet" href="/monet/css/flex.css" type="text/css">
        <link rel="stylesheet" href="/monet/css/non-reusable-classes.css" type="text/css">
        <link rel="stylesheet" href="/monet/css/table.css" type="text/css">


        <link rel="stylesheet" href="/monet/css/landing-page.css" type="text/css">

        <script src="/monet/js/app.js"></script>
        <script src="/monet/js/monet-app-config.js"></script>
        <script src="/monet/js/directives/iframesetdimensionsonload.js"></script>
        <script src="/common/js/constants.js"></script>
        <script src="/common/js/directives/common.js"></script>
        <script src="/common/js/directives/navbar.js"></script>
        <script src="/common/js/directives/loadingspinner.js"></script>
        <script src="/common/js/directives/monet-on-viewport-intersection.js"></script>
        <script src="/common/js/directives/monet-lazy-src.js"></script>
        <script src="/common/js/directives/monet-slider.js"></script>
        <script src="/common/js/directives/monet-event-listener.js"></script>
        <script src="/common/js/directives/monet-js-grid.js"></script>
        <script src="/monet/js/directives/widgets/monet-selectable.js"></script>
        <script src="/common/js/models/observable-json.js"></script>
        <script src="/common/js/services/context.js"></script>
        <script src="/common/js/services/tagsbindingservice.js"></script>
        <script src="/common/js/services/generic-validators.js"></script>
        <script src="/common/js/services/schema-processing-service.js"></script>
        <script src="/common/js/services/schema-instantiation-service.js"></script>
        <script src="/common/js/services/json-schema-validation-service.js"></script>
        <script src="/common/js/services/env.js"></script>
        <script src="/common/js/services/monet-video-metadata-service.js"></script>
        <script src="/common/js/services/auto-flushing-http-request-queue.js"></script>
        <script src="/common/js/services/event-logger.js"></script>
        <script src="/common/js/services/monet-global-exception-handler.js"></script>
        <script src="/common/js/models/logged-event-type.js"></script>

        <script src="/monet/js/directives/campaign-editor.js"></script>
        <script src="/monet/js/directives/entity-view/container-editor.js"></script>
        <script src="/monet/js/directives/entity-view/creative-editor.js"></script>
        <script src="/monet/js/directives/entity-view/dcs-editor.js"></script>
        <script src="/monet/js/directives/entity-view/creative-concept-editor.js"></script>
        <script src="/monet/js/directives/title-editor.js"></script>
        <script src="/monet/js/directives/onlinepreview.js"></script>
        <script src="/monet/js/directives/refreshable.js"></script>
        <script src="/monet/js/directives/treatmentpreview.js"></script>
        <script src="/monet/js/directives/edit-component.js"></script>
        <script src="/monet/js/directives/vast-creative.js"></script>
        <script src="/monet/js/directives/container-root-components.js"></script>
        <script src="/monet/js/directives/admin-tools.js"></script>
        <script src="/monet/js/directives/sidebar.js"></script>
        <script src="/monet/js/directives/jumbotron.js"></script>
        <script src="/monet/js/directives/entityusage.js"></script>
        <script src="/monet/js/directives/facetedsearch.js"></script>
        <script src="/monet/js/directives/upload-bar.js"></script>
        <script src="/monet/js/directives/entity-view/id-entity-view.js"></script>
        <script src="/monet/js/directives/entity-view/new-entity-view.js"></script>
        <script src="/monet/js/directives/entity-view/clone-entity-view.js"></script>
        <script src="/monet/js/directives/json-validation-error-view.js"></script>
        <script src="/monet/js/directives/overrides/monet-ng-model.js"></script>
        <script src="/monet/js/directives/overrides/monet-ui-select-choices.js"></script>
        <script src="/monet/js/directives/counterfactual-component.js"></script>
        <script src="/monet/js/directives/doubleclick-component.js"></script>
        <script src="/monet/js/directives/iframesetdimensionsonload.js"></script>
        <script src="/monet/js/directives/creatives-list.js"></script>
        <script src="/monet/js/directives/dev-portal.js"></script>
        <script src="/monet/js/directives/assignment-editor.js"></script>
        <script src="/monet/js/directives/fvideoad-editor.js"></script>
        <script src="/monet/js/directives/widgets/date-range-picker.js"></script>
        <script src="/monet/js/directives/widgets/creative-preview.js"></script>
        <script src="/monet/js/directives/widgets/approve-localizations.js"></script>
        <script src="/monet/js/directives/widgets/selectors/selector-widget-util.js"></script>
        <script src="/monet/js/directives/widgets/selectors/array-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/title-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/treatment-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/container-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/campaign-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/template-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/dcs-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/country-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/region-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/approval-status-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/ad-type-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/creative-issue-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/dcs-reward-type-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/title-type-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/movie-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/studio-advertiser-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/studio-campaign-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/concept-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/creative-platform-type-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/fcampaign-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/fcontainer-selector.js"></script>
        <script src="/monet/js/directives/widgets/selectors/language-selector.js"></script>
        <script src="/monet/js/directives/widgets/comments/comments-editor.js"></script>
        <script src="/monet/js/directives/widgets/comments/comment-view.js"></script>
        <script src="/monet/js/directives/widgets/rule-config/rule-config-editor.js"></script>
        <script src="/monet/js/directives/widgets/upload-widget.js"></script>
        <script src="/monet/js/directives/widgets/monet-assets.js"></script>
        <script src="/monet/js/directives/widgets/monet-assets-controller.js"></script>
        <script src="/monet/js/directives/widgets/edit-vandam-asset.js"></script>
        <script src="/monet/js/directives/widgets/edit-assets-popup-controller.js"></script>
        <script src="/monet/js/directives/widgets/upload-dialog-controller.js"></script>
        <script src="/monet/js/directives/widgets/components-list-readonly-view.js"></script>
        <script src="/monet/js/directives/widgets/entity-table-controller.js"></script>
        <script src="/monet/js/directives/widgets/w-entity-table.js"></script>
        <script src="/monet/js/directives/widgets/ad-spot-table-controller.js"></script>
        <script src="/monet/js/directives/widgets/ad-spot-table.js"></script>
        <script src="/monet/js/directives/widgets/entity-table-row-controller.js"></script>
        <script src="/monet/js/directives/widgets/w-entity-table-row.js"></script>
        <script src="/monet/js/directives/widgets/drawer-widget-controller.js"></script>
        <script src="/monet/js/directives/widgets/drawer-dialog-controller.js"></script>
        <script src="/monet/js/directives/widgets/adspot-drawer-dialog-controller.js"></script>
        <script src="/monet/js/directives/widgets/drawer-widgets.js"></script>
        <script src="/monet/js/directives/widgets/fcampaign-table-controller.js"></script>
        <script src="/monet/js/directives/widgets/fcampaign-table.js"></script>

        <script src="/monet/js/controllers/entity-view/base-entity-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/container-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/campaign-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/creative-editor-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/assignment-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/title-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/dcs-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/creative-concept-view-controller.js"></script>
        <script src="/monet/js/controllers/entity-view/fvideoad-view-controller.js"></script>
        <script src="/monet/js/controllers/assignments.js"></script>
        <script src="/monet/js/controllers/daocontroller.js"></script>
        <script src="/monet/js/controllers/diffcontroller.js"></script>
        <script src="/monet/js/controllers/entitycommoncontroller.js"></script>
        <script src="/monet/js/controllers/titles.js"></script>
        <script src="/monet/js/controllers/instances.js"></script>
        <script src="/monet/js/controllers/sidebar.js"></script>
        <script src="/monet/js/controllers/templates.js"></script>
        <script src="/monet/js/controllers/previewsheet.js"></script>
        <script src="/monet/js/controllers/create-previewsheet.js"></script>
        <script src="/monet/js/controllers/dashboardsystemstatus.js"></script>
        <script src="/monet/js/controllers/vast-creative-controller.js"></script>
        <script src="/monet/js/controllers/modal-container-select.js"></script>
        <script src="/monet/js/controllers/accountmgmt.js"></script>
        <script src="/monet/js/controllers/accountsetup.js"></script>
        <script src="/monet/js/controllers/base-component-controller.js"></script>
        <script src="/monet/js/controllers/approvalssetup.js"></script>
        <script src="/monet/js/controllers/entity-loader/base-entity-loader-controller.js"></script>
        <script src="/monet/js/controllers/entity-loader/id-entity-loader-controller.js"></script>
        <script src="/monet/js/controllers/entity-loader/new-entity-loader-controller.js"></script>
        <script src="/monet/js/controllers/entity-loader/clone-entity-loader-controller.js"></script>
        <script src="/monet/js/controllers/json-validation-error-view-controller.js"></script>
        <script src="/monet/js/controllers/creatives-list-controller.js"></script>
        <script src="/monet/js/controllers/dev-portal-controller.js"></script>
        <script src="/monet/js/controllers/widgets/localized-text-controller.js"></script>
        <script src="/monet/js/controllers/widgets/monet-selectable-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/ad-type-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/dcs-reward-type-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/campaign-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/enum-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/base-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/array-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/enum-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/base-entity-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/title-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/treatment-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/container-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/title-container-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/template-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/dcs-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/country-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/region-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/approval-status-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/creative-issue-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/movie-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/studio-advertiser-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/studio-campaign-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/concept-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/title-type-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/creative-platform-type-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/fcampaign-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/fcontainer-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/selectors/language-selector-controller.js"></script>
        <script src="/monet/js/controllers/widgets/comments/comments-editor-controller.js"></script>
        <script src="/monet/js/controllers/widgets/comments/comment-view-controller.js"></script>
        <script src="/monet/js/controllers/widgets/rule-config/rule-config-editor-controller.js"></script>
        <script src="/monet/js/controllers/widgets/date-range-picker-controller.js"></script>
        <script src="/monet/js/controllers/widgets/creative-preview-controller.js"></script>
        <script src="/monet/js/controllers/widgets/tag-vandam-assets-controller.js"></script>
        <script src="/monet/js/controllers/asset-mgmt.js"></script>
        <script src="/monet/js/controllers/admin/cdn-admin-controller.js"></script>
        <script src="/monet/js/controllers/admin/transcoding-admin-controller.js"></script>
        <script src="/monet/js/controllers/fb-deposit-controller-component.js"></script>
        <script src="/monet/js/controllers/fb-deposit-controller.js"></script>
        <script src="/monet/js/controllers/fb-campaign-controller.js"></script>

        <script src="/monet/js/services/authinterceptor.js"></script>
        <script src="/monet/js/services/autocompleteservice.js"></script>
        <script src="/monet/js/services/entity-search-service.js"></script>
        <script src="/monet/js/services/crudservice.js"></script>
        <script src="/monet/js/services/dirtynavigationprotector.js"></script>
        <script src="/monet/js/services/denormalizedfetcher.js"></script>
        <script src="/monet/js/services/doubleclick-metadata-service.js"></script>
        <script src="/monet/js/services/doubleclick-studio-service.js"></script>
        <script src="/monet/js/services/dynamicservice.js"></script>
        <script src="/monet/js/services/flashfillservice.js"></script>
        <script src="/monet/js/services/httpEventInterceptor.js"></script>
        <script src="/monet/js/services/loadingspinnerinterceptor.js"></script>
        <script src="/monet/js/services/moviemetadataservice.js"></script>
        <script src="/monet/js/services/rules-tree-service.js"></script>
        <script src="/monet/js/services/previewservice.js"></script>
        <script src="/monet/js/services/previewsessionservice.js"></script>
        <script src="/monet/js/services/usagefinder.js"></script>
        <script src="/monet/js/services/algopipeline.js"></script>
        <script src="/monet/js/services/component-class.js"></script>
        <script src="/monet/js/services/component-propagate.js"></script>
        <script src="/monet/js/services/containerservice.js"></script>
        <script src="/monet/js/services/session-service.js"></script>
        <script src="/monet/js/services/versionservice.js"></script>
        <script src="/monet/js/services/file-service.js"></script>
        <script src="/monet/js/services/ratingservice.js"></script>
        <script src="/monet/js/services/assetsize.js"></script>
        <script src="/monet/js/services/counterFactualService.js"></script>
        <script src="/monet/js/services/localeservice.js"></script>
        <script src="/monet/js/services/previewsheetservice.js"></script>
        <script src="/monet/js/services/accountmgmtservice.js"></script>
        <script src="/monet/js/services/template-propagate.js"></script>
        <script src="/monet/js/services/approvalservice.js"></script>
        <script src="/monet/js/services/artworkservice.js"></script>
        <script src="/monet/js/services/region-metadata-service.js"></script>
        <script src="/common/js/services/intersection-observer-service.js"></script>
        <script src="/monet/js/directives/title-tag-view.js"></script>
        <script src="/monet/js/services/entities/entity-service.js"></script>
        <script src="/monet/js/services/entities/entity-factory.js"></script>
        <script src="/monet/js/services/entities/entity-util.js"></script>
        <script src="/monet/js/services/entities/component-entity-factory.js"></script>
        <script src="/monet/js/services/entities/configuration-entity-factory.js"></script>
        <script src="/monet/js/services/util.js"></script>
        <script src="/monet/js/services/confirmation-dialog-service.js"></script>
        <script src="/monet/js/services/creative-service.js"></script>
        <script src="/monet/js/services/entities/configuration-entity-factory.js"></script>
        <script src="/monet/js/services/entities/instance-behavior-factory.js"></script>
        <script src="/monet/js/services/entities/creative-selection-behavior-factory.js"></script>
        <script src="/monet/js/services/entity-search-service.js"></script>
        <script src="/monet/js/services/campaign-metadata-service.js"></script>
        <script src="/monet/js/services/vandam-service.js"></script>
        <script src="/monet/js/services/treatment-container-backup-generation-service.js"></script>
        <script src="/monet/js/services/cdn-admin-service.js"></script>
        <script src="/monet/js/services/transcoding-service.js"></script>
        <script src="/monet/js/services/monet-intersection-observer.js"></script>
        <script src="/monet/js/services/screenshot-service.js"></script>
        <script src="/common/js/services/meechum-service.js"></script>
        <script src="/monet/js/services/app-version-service.js"></script>

        <script src="/monet/js/models/entity-type.js"></script>
        <script src="/monet/js/models/base-entity.js"></script>
        <script src="/monet/js/models/container-entity.js"></script>
        <script src="/monet/js/models/component-entity-type.js"></script>
        <script src="/monet/js/models/vast-media-file-entity.js"></script>
        <script src="/monet/js/models/vast-media-file-list-entity.js"></script>
        <script src="/monet/js/models/campaign-entity.js"></script>
        <script src="/monet/js/models/campaign-type.js"></script>
        <script src="/monet/js/models/assignment-entity.js"></script>
        <script src="/monet/js/models/dcs-entity.js"></script>
        <script src="/monet/js/models/ad-type.js"></script>
        <script src="/monet/js/models/dcs-reward-type.js"></script>
        <script src="/monet/js/models/fvideoad-entity.js"></script>
        <script src="/monet/js/models/configuration/configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/configuration-type.js"></script>
        <script src="/monet/js/models/configuration/country-rule-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/date-rule-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/default-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/instance-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/dcs-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/rule-configuration-entity.js"></script>
        <script src="/monet/js/models/external-campaign-entity.js"></script>
        <script src="/monet/js/models/creative-entity.js"></script>
        <script src="/monet/js/models/creative-execution-entity.js"></script>
        <script src="/monet/js/models/title/title-entity.js"></script>
        <script src="/monet/js/models/image-metadata-entity.js"></script>
        <script src="/monet/js/models/video-metadata-entity.js"></script>
        <script src="/monet/js/models/creative-status-type.js"></script>
        <script src="/monet/js/models/creative-issue-type.js"></script>
        <script src="/monet/js/models/user-comment-entity.js"></script>
        <script src="/monet/js/models/creative-concept-entity.js"></script>
        <script src="/monet/js/models/qa-status-type.js"></script>
        <script src="/monet/js/models/component-entities/localized-component-values.js"></script>
        <script src="/monet/js/models/component-entities/localized-media-file-list-entity.js"></script>
        <script src="/monet/js/models/component-entities/vast-creative-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/base-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/bool-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/image-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/number-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/text-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/url-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/vast-creative-component-entity.js"></script>
        <script src="/monet/js/models/component-entities/video-component-entity.js"></script>
        <script src="/monet/js/models/configuration/configuration-type.js"></script>
        <script src="/monet/js/models/configuration/configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/rule-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/default-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/instance-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/country-rule-configuration-entity.js"></script>
        <script src="/monet/js/models/configuration/date-rule-configuration-entity.js"></script>
        <script src="/monet/js/models/instance/instance-entity.js"></script>
        <script src="/monet/js/models/instance/instance-type.js"></script>
        <script src="/monet/js/models/instance/instance-behavior/instance-behavior-type.js"></script>
        <script src="/monet/js/models/instance/instance-behavior/base-instance-behavior-entity.js"></script>
        <script src="/monet/js/models/instance/instance-behavior/default-instance-behavior-entity.js"></script>
        <script src="/monet/js/models/instance/instance-behavior/random-title-instance-behavior-entity.js"></script>
        <script src="/monet/js/models/instance/instance-behavior/random-weighted-title-instance-behavior-entity.js"></script>
        <script src="/monet/js/models/instance/instance-behavior/user-id-sequenced-instance-behavior-entity.js"></script>
        <script src="/monet/js/models/instance/creative-behavior/creative-behavior-type.js"></script>
        <script src="/monet/js/models/instance/creative-behavior/creative-selection-behavior.js"></script>
        <script src="/monet/js/models/instance/creative-behavior/default-creative-selection-behavior.js"></script>
        <script src="/monet/js/models/instance/creative-behavior/tentpole-swap-creative-selection-behavior.js"></script>
        <script src="/monet/js/models/template/template-type.js"></script>
        <script src="/monet/js/models/template/base-template-entity.js"></script>
        <script src="/monet/js/models/template/title-template-entity.js"></script>
        <script src="/monet/js/models/template/treatment-template-entity.js"></script>
        <script src="/monet/js/models/title/title-type.js"></script>
        <script src="/monet/js/models/title/title-entity.js"></script>
        <script src="/monet/js/models/creative-platform-type.js"></script>
        <script src="/monet/js/models/fcampaign-entity.js"></script>
        <script src="/monet/js/models/fadspot-entity.js"></script>
        <script src="/monet/js/models/fvideocomponent-entity.js"></script>

        <script src="/monet/js/helpers/casting-helper.js"></script>
        <script src="/monet/js/helpers/state-helper.js"></script>

        <div ng-controller="DynamicPageController">
            <div ng-if="isAuthenticated() && !hideHeader()">
                <picasso-navbar location="monet" environment="{{context.environment}}" user="{{context.user}}"
                                is-admin="{{context.admin}}" navigation-bread-crumbs="navigationBreadCrumbs"}></picasso-navbar>
            </div>

            <div class="container-fluid">
                <div class="row master" master>
                    <div ng-if="isAuthenticated() && !hideNavBar()" class="col-md-2 hidden-sm hidden-xs sidebar-root">
                        <div id="sidebar-outer" class="flex flex-1" ng-controller="SidebarController">
                            <dynamic-sidebar class="flex flex-1"></dynamic-sidebar>
                        </div>
                    </div>
                    <div ng-class="hideNavBar() ? 'col-xs-12' : 'col-xs-10'" style="min-height: 100vh">
                        <toaster-container
                                toaster-options="{'time-out': {'toast-success': 5000, 'toast-warning': 10000, 'toast-error': 15000}, 'close-button': true,  'position-class': 'toast-bottom-right'}"></toaster-container>
                        <loading-spinner></loading-spinner>
                        <script type="text/ng-template" id="myModalContent.html">
                            <div class="modal-header">
                                <h4 class="modal-title">Please Confirm</h4>
                            </div>
                            <div class="modal-body">
                                {{ confirmationOptions.confirmText }}
                            </div>
                            <div class="modal-footer material-dialog-footer">
                                <button class="material-button material-button-secondary" ng-click="cancel()">{{ confirmationOptions.cancelButtonText || 'Cancel' }}</button>
                                <button class="material-button material-button-primary" ng-click="ok()">{{ confirmationOptions.okButtonText || 'Proceed' }}</button>
                            </div>
                        </script>
                        <script type="text/ng-template" id="myHtmlModalContent.html">
                            <div class="modal-header">
                                <h4 class="modal-title">Please Confirm</h4>
                            </div>
                            <div class="modal-body" ng-bind-html="confirmationOptions.confirmText">
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-warning" ng-click="yes()">{{ confirmationOptions.okButtonText || 'Yes' }}</button>
                                <button class="btn btn-default" ng-click="no()">{{ confirmationOptions.cancelButtonText || 'No' }}</button>
                                <button ng-show="confirmationOptions.dismissButton" class="btn btn-info" ng-click="cancel()">{{ confirmationOptions.dismissButton }}</button>
                            </div>
                        </script>
                        <script type="text/ng-template" id="myHtmlModalInfo.html">
                            <div class="modal-header">
                                <h4 class="modal-title">{{options.title}}</h4>
                            </div>
                            <div class="modal-body" ng-bind-html="options.text">
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-info" ng-click="cancel()">{{ options.dismissButton || 'Ok' }}</button>
                            </div>
                        </script>
                        <script type="text/ng-template" id="myTemplateModal.html">
                            <div class="modal-header">
                                <h4 class="modal-title">Please Confirm</h4>
                            </div>
                            <div class="modal-body">
                                <div id="templateModel">
                                    <div class="form-horizontal">
                                        <label>{{confirmationOptions.message}}</label>
                                    </div>
                                    <div class="form-horizontal" ng-Form="templateForm" editable-form ng-show="confirmationOptions.showOverwriteOptions">
                                        <div class="form-group">
                                            <label class="checkbox-inline">
                                                <input type="radio" ng-value="true" name="overwriteValues" ng-model="templateConfirmation.overwriteValues" ng-checked="templateConfirmation.overwriteValues">Propagate Template Values OVERWRITING Local Changes
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <label class="checkbox-inline">
                                                <input type="radio" ng-value="false" name="overwriteValues" ng-model="templateConfirmation.overwriteValues" ng-checked="!templateConfirmation.overwriteValues">Propagate Template Values AND PRESERVE Local Changes
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-primary" ng-click="done()">OK</button>
                                <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
                            </div>
                        </script>
                        <script type="text/ng-template" id="renewSessionModal.html">
                            <div class="modal-header">
                                <h4 class="modal-title">Login</h4>
                            </div>
                            <div class="modal-body refresh-session-body">
                                <a href="javascript:void(0)" ng-click="reAuthenticate()"><img ng-src="{{image()}}" alt="Click here to authenticate"/></a><br/>
                                Click <a href="javascript:void(0)" ng-click="reAuthenticate()">here</a> to log into Monet or
                                Refresh the page.
                            </div>
                        </script>
                        <div ng-if="isViewAuthenticated()">
                            <div ui-view></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div ng-drag-clone="" class="under-dragger">
            <img class="small-preview" ng-src="{{clonedData.tooltipImage}}"/>
            {{clonedData.fileName}}
        </div>
    </body>
</html>
```