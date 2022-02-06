import 'package:flutter/cupertino.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/google-logo.png',
            height: size.height * 0.12,),
          )
        ],
      ),
    );
  }
}
