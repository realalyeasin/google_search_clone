import 'package:flutter/cupertino.dart';

import '../FooterText.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        FooterText(title: 'About'),
        SizedBox(width: 10,),
        FooterText(title: 'Advertising'),
        SizedBox(width: 10,),
        FooterText(title: 'Business'),
        SizedBox(width: 10,),
        FooterText(title: 'How Search Works'),
        SizedBox(width: 10,),
        FooterText(title: 'Privacy'),
        SizedBox(width: 10,),
        FooterText(title: 'Terms'),
        SizedBox(width: 10,),
        FooterText(title: 'Settings'),
        SizedBox(width: 10,),
      ],
    );
  }
}
