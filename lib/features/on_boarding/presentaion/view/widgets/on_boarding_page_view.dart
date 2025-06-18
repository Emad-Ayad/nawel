


import 'package:flutter/material.dart';

import 'on_boarding_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        OnBoardingItem(
          title: 'all-in-one delivery ',
          subTitle: 'Order groceries, medicines, and meals \n delivered straight to your door',
        ),
        OnBoardingItem(
          title: 'User-to-User Delivery',
          subTitle: 'Send or receive items from other users quickly \n and easily',
        ),
        OnBoardingItem(
          title: 'Sales & Discounts',
          subTitle: 'Discover exclusive sales and deals every day',
        ),
      ],
    );
  }
}
