import 'package:auto_route/auto_route.dart';
import 'package:tutorialx/router.gr.dart';

/*
How to use AutoRouter
final appRouter = AppRouter(
  initial: "/splash",
);

return MaterialApp.router(
  routerConfig: appRouter.config(),
  title: 'Flutter Demo',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
);
*/

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  final String initial;
  AppRouter({
    required this.initial,
  });

  @override
  List<AutoRoute> get routes {
    // initial: true must be implemented in one of the routes

    var appRoutes = [
      /// BEGINING OF ROUTES
      
        AutoRoute(
          path: "/conda",
          page: CondaRoute.page,
        ),

        AutoRoute(
          path: "/contoh",
          page: ContohRoute.page,
        ),

      /// END OF ROUTES
      // RedirectRoute(path: '*', redirectTo: '/'),
    ];

    // set default route
    for (var i = 0; i < appRoutes.length; i++) {
      if (appRoutes[i].path == initial) {
        appRoutes[i] = AutoRoute(
          page: appRoutes[i].page,
          path: appRoutes[i].path,
          initial: true,
        );
        break;
      }
    }

    return appRoutes;
  }
}