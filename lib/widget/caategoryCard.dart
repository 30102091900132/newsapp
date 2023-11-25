//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/categoryModel.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key , required this.category });
 CategoryModel category ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: category.categoryName,
          ) ;
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 8),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(image: AssetImage(category.image), fit: BoxFit.cover ,  ),
          ),
          child: Center(
            child:  Text(category.categoryName, style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),),
          )
        ),
      ),
    ) ;
  }
}
