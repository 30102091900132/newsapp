import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/services_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticlesModel articleModel;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: articleModel.image?? "https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            // Image.network(
            //   articleModel.image ?? "https://images.unsplash.com/photo-1566438480900-0609be27a4be?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW1hZ2V8ZW58MHx8MHx8fDA%3D" ,
            //   width:double.infinity, height: 250,),
          ),

         Text(articleModel.title ,
             maxLines: 2,
             style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500 ,
              color: Colors.black, overflow: TextOverflow.ellipsis ,
            ),
          ),
          SizedBox(height: 10,),
           Text(articleModel.subTitle ?? " " ,
            maxLines: 2,
            style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w200 ,
              color: Colors.grey, overflow: TextOverflow.ellipsis ,
            ),
          ),


        ],
    ),
      );

  }
}
//https://s.yimg.com/ny/api/res/1.2/RPpqep57_PY5f34ZwOnqbA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTM4NA--/https://