import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/features/onboarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            'Fruit Market',
            style: TextStyle(
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/splash_view_image.png'),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => const OnBoardingView(),
        transition: Transition.fadeIn,
      );
    });
  }
}
