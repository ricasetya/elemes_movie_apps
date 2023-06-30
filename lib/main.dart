import 'package:elemes_movie_tv_apps/ui/navigation/SARoute.dart';
import 'package:elemes_movie_tv_apps/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: saRouter.routerDelegate,
      routeInformationParser: saRouter.routeInformationParser,
      routeInformationProvider: saRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,

      //MainPage(),
      //SignInPage(),
      // SplashPage(),
    );
  }
}


//  @override
//   Widget build(BuildContext context) {
//     return StreamProvider.value(
//       value: AuthServices.userStream,
//       child: MultiBlocProvider(
//           providers: [
//             BlocProvider(create: (_) => PageBloc()),
//             BlocProvider(create: (_) => UserBloc()),
//             BlocProvider(create: (_) => ThemeBloc()),
//             BlocProvider(
//               create: (_) => MovieBloc()..add(FetchMovies()),
//             ),
//             BlocProvider(create: (_) => TicketBloc())
//           ],
//           child: BlocBuilder<ThemeBloc, ThemeState>(
//               builder: (_, themeState) => MaterialApp(
//                   theme: themeState.themeData,
//                   debugShowCheckedModeBanner: false,
//                   home: Wrapper()))),
//     );
//   }
// }
