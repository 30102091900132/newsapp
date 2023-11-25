//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/caategoryCard.dart';
import 'package:news_app/widget/newsTile.dart';
import 'package:news_app/widget/news_list_view_biuldre.dart';

import '../widget/categoryListView.dart';
import '../widget/newsListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("News " , style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
              Text("Cloud" , style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
              ),),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        //shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(child:SizedBox(height:100 ,child: CategoryListView()) ,),
         NewsListViewBuilder(
           category: 'general',
         ), //Custom widget for sliver list
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(childCount: 10 ,(context, index) {
          //       return NewsTile() ;
          //     },
          //     )
          // ),
          // SliverToBoxAdapter(child: NewsListView()),
        ],
      )

    );
  }
}




