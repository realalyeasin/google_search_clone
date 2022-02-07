import 'package:flutter/cupertino.dart';

import 'LanguageText.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: const [
        Text('Google offered in:'),
        SizedBox(width: 5,),
        LanguageText(title: 'English',),
        SizedBox(width: 5,),
        LanguageText(title: 'বাংলা',),
        SizedBox(width: 5,),
        LanguageText(title: 'हिन्दी',),
        SizedBox(width: 5,),
        LanguageText(title: 'French',),
        SizedBox(width: 5,),
        LanguageText(title: 'German',),
        SizedBox(width: 5,),
        LanguageText(title: 'Arabic',),
        SizedBox(width: 5,),
        LanguageText(title: 'Japanese',),
      ],
    );
  }
}
