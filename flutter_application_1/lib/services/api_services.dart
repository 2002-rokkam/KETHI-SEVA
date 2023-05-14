import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter_application_1/model/article_model.dart';

class ApiService {
  final endpointUrl =
    "https://newsapi.ai/?referral=2e709b4e3f654ac4868fe1a0f63650a8";
  Future<List<ArticleModel>> getArticle() async {
    Response res = await get(endpointUrl as Uri);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<ArticleModel> articles =
          body.map((dynamic item) => ArticleModel.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
