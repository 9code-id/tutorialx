// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

      
/// generated route for
/// [CendanaView]

class CendanaRouteArgs {
  final Key? key;
  

  const CendanaRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'CendanaRouteArgs{key: $key, }';
  }
}

class CendanaRoute
    extends PageRouteInfo<CendanaRouteArgs> {
  CendanaRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          CendanaRoute.name,
          args: CendanaRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'CendanaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CendanaRouteArgs>(
          orElse: () => CendanaRouteArgs());
      return CendanaView(
        key: args.key,
        
      );
    },
  );
}