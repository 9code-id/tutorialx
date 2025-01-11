// Shortcut to access the router
import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

// Shortcut to access the service locator
AppRouter get appRouter => sl.get<AppRouter>();

// Shortcut to access the navigator key
GlobalKey<NavigatorState> appRouterNavigatorKey = appRouter.navigatorKey;

// Shortcut to access the navigator context
BuildContext get appRouterContext =>
    appRouterNavigatorKey.currentState!.context;

// Shortcut to access the router
StackRouter get router => appRouterContext.router;