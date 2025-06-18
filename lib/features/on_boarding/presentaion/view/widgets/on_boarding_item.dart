import 'package:flutter/material.dart';

import '../../../../../core/constant/app_text_styles.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key, required this.title, required this.subTitle});

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.heading2,
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyText2,
          ),
        ),
      ],
    );
  }
}
