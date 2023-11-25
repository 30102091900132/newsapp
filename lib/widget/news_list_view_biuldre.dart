import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/services_model.dart';
import '../services/new_services.dart';
import 'newsListView.dart';
import 'newsTile.dart';


class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({required this.category});
  String category ;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilder();
}

class _NewsListViewBuilder extends State<NewsListViewBuilder> {
  @override

  var future ;
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewServices(Dio()).getNews(
        category: widget.category,
    );
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(builder: (context , snapshot)
    {
      return FutureBuilder<List<ArticlesModel>>(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return NewsListView(
                articles: snapshot.data!,
              );
            } else if (snapshot.hasError) {
              return const SliverToBoxAdapter(
                child: Text('oops  was an error, try later'),
              );
            } else {
              return const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          });
    });
  }
}


      // isLoading
      //   ? const SliverToBoxAdapter(
      //       child: Center(child: CircularProgressIndicator()))
      //   : SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         childCount: articles.length,
      //         (context, index) {
      //           return Padding(
      //             padding: const EdgeInsets.only(bottom: 22),
      //             child: NewsTile(
      //               articleModel: articles[index],
      //             ),
      //           );
      //         },
      //       ),
      //     );
