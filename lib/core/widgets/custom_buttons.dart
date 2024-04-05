import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, required this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child:  Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
