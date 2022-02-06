import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search_clone/widgets/SignInButton.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            )),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                tabs: [
                  Tab(
                    text: 'ALL',
                  ),
                  Tab(
                    text: 'IMAGES',
                  ),
                ],
              )),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const SignInButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      const SizedBox(
                        height: 20,
                      ),
                      TranslationButton(),
                    ],
                  ),
                  const MobileFooter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
