// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tutorialx/core.dart';

      
/// generated route for
/// [CondaView]

class CondaRouteArgs {
  final Key? key;
  

  const CondaRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'CondaRouteArgs{key: $key, }';
  }
}

class CondaRoute
    extends PageRouteInfo<CondaRouteArgs> {
  CondaRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          CondaRoute.name,
          args: CondaRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'CondaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CondaRouteArgs>(
          orElse: () => CondaRouteArgs());
      return CondaView(
        key: args.key,
        
      );
    },
  );
}

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