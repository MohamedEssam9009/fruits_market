import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            'Fruit Market',
            style: TextStyle(
              fontSize: 51,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/splash_view_image.png'),
        const Spacer(flex: 1),
      ],
    );
  }
}
