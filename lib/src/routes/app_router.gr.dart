// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../views/index.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    QrGeneratorViewRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.QrGeneratorView());
    },
    QrScannerViewRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.QrScannerView());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeViewRoute.name, path: '/'),
        _i2.RouteConfig(QrGeneratorViewRoute.name, path: '/generator'),
        _i2.RouteConfig(QrScannerViewRoute.name, path: '/scanner')
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i2.PageRouteInfo<void> {
  const HomeViewRoute() : super(HomeViewRoute.name, path: '/');

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [_i1.QrGeneratorView]
class QrGeneratorViewRoute extends _i2.PageRouteInfo<void> {
  const QrGeneratorViewRoute()
      : super(QrGeneratorViewRoute.name, path: '/generator');

  static const String name = 'QrGeneratorViewRoute';
}

/// generated route for
/// [_i1.QrScannerView]
class QrScannerViewRoute extends _i2.PageRouteInfo<void> {
  const QrScannerViewRoute() : super(QrScannerViewRoute.name, path: '/scanner');

  static const String name = 'QrScannerViewRoute';
}
