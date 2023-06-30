import 'package:elemes_movie_tv_apps/ui/navigation/Routes.dart';
import 'package:elemes_movie_tv_apps/ui/pages/pages.dart';
import 'package:go_router/go_router.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/splashscreen", routes: [
  GoRoute(
      path: "/splashscreen",
      name: Routes.splashPage,
      builder: ((context, state) => const SplashPage())),
  GoRoute(
      path: "/signin",
      name: Routes.signinPage,
      builder: ((context, state) => const SignInPage())),
  GoRoute(
      path: "/mainpage",
      name: Routes.mainPage,
      builder: ((context, state) => const MainPage())),
]);
