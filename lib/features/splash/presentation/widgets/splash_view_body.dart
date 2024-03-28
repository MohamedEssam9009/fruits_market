import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        const Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 51,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Color(0xFFFFFFFF),
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/splash_view_image.png'),
        const Spacer(flex: 1),
      ],
    );
  }
}
