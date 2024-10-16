import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/responsive/build_layout.dart';
import 'package:weather_app/view/home/home_desktop.dart';
import 'package:weather_app/view/home/home_mobile.dart';

/// The route configuration.
final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const BuildLayout(desktop: HomeViewDesktop(), mobile: HomeViewMobile()),
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) => const BuildLayout(desktop: HomeViewDesktop(), mobile: HomeViewMobile())
        ),
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) => const BuildLayout(desktop: HomeViewDesktop(), mobile: HomeViewMobile())
        ),
      ],
    ),
  ],
);