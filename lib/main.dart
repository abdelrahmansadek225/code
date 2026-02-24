import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/pages/categories_page/categories_page.dart';
import 'package:flutter_grocery_app/pages/home_page/home_page.dart';
import 'package:flutter_grocery_app/pages/product_details/product_details.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Grocery App",
      debugShowCheckedModeBanner: false,
      home: HomePage(), //ProductDetailsPage(), //CategoriesPage(),
    );
  }
}