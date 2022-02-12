import 'package:flutter/cupertino.dart';

import 'SearchButton.dart';

class SearchButtons extends StatefulWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  _SearchButtonsState createState() => _SearchButtonsState();
}

class _SearchButtonsState extends State<SearchButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SearchButton(title: 'Google Search'),
        SizedBox(width: 10,),
        SearchButton(title: 'I am feeling grateful')
      ],
    );
  }
}
