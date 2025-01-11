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
        path: "/asaksfoak",
        page: AsaksfoakRoute.page,
      ),

      AutoRoute(
        path: "/cedaok",
        page: CedaokRoute.page,
      ),

      AutoRoute(
        path: "/cendana",
        page: CendanaRoute.page,
      ),

      AutoRoute(
        path: "/cicak",
        page: CicakRoute.page,
      ),

      AutoRoute(
        path: "/demo",
        page: DemoRoute.page,
      ),

      AutoRoute(
        path: "/sendok",
        page: SendokRoute.page,
      ),

      AutoRoute(
        path: "/seondasaf",
        page: SeondasafRoute.page,
      ),

      AutoRoute(
        path: "/sodako",
        page: SodakoRoute.page,
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