import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../on_boarding/presentaion/view/on_boarding_view.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routeName = 'splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    executeRouting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.65,
                  width: MediaQuery.sizeOf(context).width * 0.65,
                  child: Image.asset(Assets.nawel.path)
              ),
            )
          ],
        ),
      ),
    );
  }

  void executeRouting() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });

    // bool isOnBoardingSeen =
    // SharedPreferenceSingleton.getBool(kIsOnBoardingSeen);
    // Future.delayed(const Duration(seconds: 2), () {
    //   if (isOnBoardingSeen) {
    //     var loggedIn= FirebaseAuthService().isLoggedIn();
    //     if(loggedIn){
    //       Navigator.pushReplacementNamed(context, LoginView.routeName);
    //     }else{
    //       Navigator.pushReplacementNamed(context, LoginView.routeName);
    //     }
    //   } else {
    //     Navigator.pushReplacementNamed(context, OnBoardingView.onBoardingRoute);
    //   }
    // }
    // );
  }
}
