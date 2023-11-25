import 'package:flutter/cupertino.dart';

import '../model/categoryModel.dart';
import 'caategoryCard.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({
    super.key,
  });
   List<CategoryModel> categories = [
     CategoryModel(image:"assets/images/businies.jpeg"  , categoryName:'Business'),
     CategoryModel(image:"assets/images/entertainment.jpeg"  , categoryName:'Entertainment'),
     CategoryModel(image:"assets/images/health.jpeg"  , categoryName:'Health'),
     CategoryModel(image:"assets/images/science.jpeg"  , categoryName:'Science'),
     CategoryModel(image:"assets/images/sports.jpeg"  , categoryName:'Sport'),
     CategoryModel(image:"assets/images/technology.jpeg"  , categoryName:'Technology'),
     CategoryModel(image:"assets/images/general.jpeg"  , categoryName:'General'),

   ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(category: categories[index],) ;
      },

    );
  }
}