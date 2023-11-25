import 'dart:convert';

class ArticlesModel{
  late final String? image ;
  late final  String title ;
  late final String? subTitle ;

  ArticlesModel({required this.image , required this.title , required this.subTitle});

  factory ArticlesModel.fromjson(json){
    return ArticlesModel(
        image: json['Image'],
        title: json['title'],
        subTitle: json['subTitle'],
    ) ;
  }
}