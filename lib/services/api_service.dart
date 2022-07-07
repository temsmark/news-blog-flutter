import 'package:blog/utils.dart';
import 'package:blog/models/article.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class ApiService {
  static var client = http.Client();

  static Future<Object> getArticles() async {
    try {
      final response = await client.get(Uri.parse(Utils.articleUrl));
      if (response.statusCode == 200) {
        final Article articles = articleFromJson(response.body) ;
        return articles.data;

      }
    } catch (e) {
      return {};
    }
    return    {};
  }

}
