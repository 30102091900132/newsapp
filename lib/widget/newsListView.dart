import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/services_model.dart';
import 'newsTile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlesModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
// ListView.builder(
// physics: NeverScrollableScrollPhysics(),
// shrinkWrap: true,
// itemCount: 10,
// itemBuilder: (context, index) {
// return  NewsTile() ;
// },
// );