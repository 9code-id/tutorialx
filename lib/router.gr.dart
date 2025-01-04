// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tutorialx/core.dart';

      
/// generated route for
/// [ContohView]

class ContohRouteArgs {
  final Key? key;
  

  const ContohRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'ContohRouteArgs{key: $key, }';
  }
}

class ContohRoute
    extends PageRouteInfo<ContohRouteArgs> {
  ContohRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          ContohRoute.name,
          args: ContohRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'ContohRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ContohRouteArgs>(
          orElse: () => ContohRouteArgs());
      return ContohView(
        key: args.key,
        
      );
    },
  );
}

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