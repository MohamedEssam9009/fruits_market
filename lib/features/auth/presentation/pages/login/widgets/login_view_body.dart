import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:get/get.dart';

import '../../../../../onboarding/presentation/widgets/space_widget.dart';
import '../../complete_information/complete_informatin_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(kLogo),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            const Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Login with ',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => const CompleteInformationView(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: const Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Login with ',
                ),
              ),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
