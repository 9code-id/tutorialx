// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

      
/// generated route for
/// [DemoView]

class DemoRouteArgs {
  final Key? key;
  

  const DemoRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'DemoRouteArgs{key: $key, }';
  }
}

class DemoRoute
    extends PageRouteInfo<DemoRouteArgs> {
  DemoRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          DemoRoute.name,
          args: DemoRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'DemoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DemoRouteArgs>(
          orElse: () => DemoRouteArgs());
      return DemoView(
        key: args.key,
        
      );
    },
  );
}

/// generated route for
/// [LoginView]

class LoginRouteArgs {
  final Key? key;
  

  const LoginRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, }';
  }
}

class LoginRoute
    extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LoginRouteArgs>(
          orElse: () => LoginRouteArgs());
      return LoginView(
        key: args.key,
        
      );
    },
  );
}