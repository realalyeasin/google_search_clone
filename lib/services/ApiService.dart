import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class ApiService{
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData({
  required BuildContext context,
    required String queryTerm,
    String start ='0'}) async {
    try {
      if(!isDummyData){
        String q = queryTerm.contains(' ')? queryTerm.split(' ').join('&20'): queryTerm;
        final reponse = await http.get(
          Uri.parse('https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start')
        );
        if(reponse.statusCode == 200){
          final jsonData = reponse.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }

    } catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return apiResponse;
  }
}