import 'package:flutter/material.dart';
import 'package:nawel/features/splash/presentaion/view/splash_view.dart';

import 'core/helper_functions/router_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routerGenerator,
      initialRoute: SplashView.routeName,
    );
  }
}
