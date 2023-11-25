
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_app/main.dart';
import 'package:news_app/model/services_model.dart';

class NewServices{
  NewServices(this.dio);
  final Dio dio ;
  Future<List<ArticlesModel>> getNews({required String category}) async{
    try{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=a0f4d6a4e5b249648a155ede8e40655a&category=$category") ;
    List<ArticlesModel> articlesList = [];

      Map<String , dynamic> jsonData = response.data ;
      // print(jsonData) ;  To check data is exist
      List<dynamic> articles = jsonData['articles'] ;
      for(var article in articles){
        ArticlesModel articlesModel = ArticlesModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']
        );
        articlesList.add(articlesModel) ;
      }
      //print(articlesList) ;
    return articlesList ;
    }
    catch(e){
      return [];
    }
    }
}