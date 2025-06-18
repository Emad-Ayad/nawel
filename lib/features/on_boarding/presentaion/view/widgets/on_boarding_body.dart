import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawel/gen/assets.gen.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'on_boarding_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            Assets.onBoarding.path,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(Assets.green.path),
        ),
        Column(
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox.shrink(),
            ),
            Expanded(
              flex: 1,
              child: OnBoardingPageView(
                pageController: pageController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 34.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomButton(
                      onPressed: () {
                        // Navigator.pushReplacementNamed(context, LoginView.routeName);
                      },
                      title: 'Get Started',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (pageController.page! < 2) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: const Text("Next"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
