

import 'package:flutter/material.dart';
import 'package:nawel/features/on_boarding/presentaion/view/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName='onBoarding';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: OnBoardingBody(),
    );
  }
}
