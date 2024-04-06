import 'package:flutter/material.dart';

import 'widgets/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompleteInformationBody(),
    );
  }
}
