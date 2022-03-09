import 'package:auto_route/auto_route.dart';

// ------------------------------- //
//            Pages
// ------------------------------- //
import 'package:qr_perron/src/views/index.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,View',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomeView,
      initial: true,
    ),
    AutoRoute(
      path: '/generator',
      page: QrGeneratorView,
    ),
    AutoRoute(
      path: '/scanner',
      page: QrScannerView,
    ),
  ],
)
class $AppRouter {}
