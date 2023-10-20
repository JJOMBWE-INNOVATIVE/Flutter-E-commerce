import 'package:flutter/material.dart';

import '../../foundation/sp_text_button/sp_text_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpTextButton(text: "FAQs",),
        SpTextButton(text: "ABOUT US",),
        SpTextButton(text: "TERMS OF USE",),
        SpTextButton(text: "PRIVACY POLICY",),
      ],
    );
  }
}
