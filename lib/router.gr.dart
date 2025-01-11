// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

      
/// generated route for
/// [CandaView]

class CandaRouteArgs {
  final Key? key;
  

  const CandaRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'CandaRouteArgs{key: $key, }';
  }
}

class CandaRoute
    extends PageRouteInfo<CandaRouteArgs> {
  CandaRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          CandaRoute.name,
          args: CandaRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'CandaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CandaRouteArgs>(
          orElse: () => CandaRouteArgs());
      return CandaView(
        key: args.key,
        
      );
    },
  );
}

/// generated route for
/// [CekView]

class CekRouteArgs {
  final Key? key;
  

  const CekRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'CekRouteArgs{key: $key, }';
  }
}

class CekRoute
    extends PageRouteInfo<CekRouteArgs> {
  CekRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          CekRoute.name,
          args: CekRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'CekRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CekRouteArgs>(
          orElse: () => CekRouteArgs());
      return CekView(
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

/// generated route for
/// [SendakoView]

class SendakoRouteArgs {
  final Key? key;
  

  const SendakoRouteArgs({
    this.key,
    
  });

  @override
  String toString() {
    return 'SendakoRouteArgs{key: $key, }';
  }
}

class SendakoRoute
    extends PageRouteInfo<SendakoRouteArgs> {
  SendakoRoute({
    Key? key,
    
    List<PageRouteInfo>? children,
  }) : super(
          SendakoRoute.name,
          args: SendakoRouteArgs(
            key: key,
             
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'SendakoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<SendakoRouteArgs>(
          orElse: () => SendakoRouteArgs());
      return SendakoView(
        key: args.key,
        
      );
    },
  );
}