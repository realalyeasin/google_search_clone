import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_search_clone/services/ApiService.dart';
import 'package:google_search_clone/widgets/SearchTabs.dart';
import 'package:google_search_clone/widgets/web/WebSearchHeader.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen({Key? key, required this.searchQuery, this.start = '0'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Title(
        color: Colors.blue,
        title: searchQuery,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WebSearchHeader(),
                Padding(
                    padding: EdgeInsets.only(left: size.width<= 768 ? 10 : 150.0),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SearchTabs(),
                ),
                ),
                const Divider(
                  height: 0,
                  thickness: 0,
                ),
                FutureBuilder<Map<String, dynamic>>(
                  future: ApiService().fetchData(
                    context: context,
                    queryTerm: searchQuery,
                    start: start
                  ),
                  builder: (context, snapshot){
                    if(snapshot.hasData){
                      return Column();
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
