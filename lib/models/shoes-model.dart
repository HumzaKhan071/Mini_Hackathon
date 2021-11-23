import 'package:flutter/material.dart';

class ShoeModel {
  final String name;
  final String assetname;
  final String description;
  final double price;
  final Color color;
  bool isselected;

  ShoeModel(
      {required this.name,
      required this.assetname,
      required this.price,
      required this.description,
      required this.color, required this.isselected,});
}

List<ShoeModel> profList1 = [
  ShoeModel(
    name: "Nike Jordans",
    description: "lorem ipsum",
    assetname: "assets/1.png",
    price: 8.0,
    color: Color(0xffbcdaac),
     isselected: false,
  ),
  ShoeModel(
    name: "Coughar ",
    description: "lorem ipsum",
    assetname: "assets/1.png",
    price: 8.0,
    color: Color(0xffeaaeaf),
     isselected: false,
  ),
  ShoeModel(
    name: "Nike Jordans",
    description: "lorem ipsum",
    assetname: "assets/2.png",
    price: 8.0,
    color: Color(0xffEFDBA9),
     isselected: false,
  ),
  ShoeModel(
    name: "Nike Jordans",
    description: "Coughar ",
    assetname: "assets/3.png",
    price: 8.0,
    color: Color(0xffA4afb0),
     isselected: false,
  ),
];

List<ShoeModel> designerList1 = [
  ShoeModel(
    name: "Coughar ",
    description: "lorem ipsum",
    assetname: "assets/1.png",
    price: 8.0,
    color: Color(0xffFFD0BB),
     isselected: false,
  ),
  ShoeModel(
    name: "Nike Joran Highs Retro",
    description: "lorem ipsum",
    assetname: "assets/2.png",
    price: 8.0,
    color: Color(0xffD9D9D9),
     isselected: false,
  ),
  ShoeModel(
    name: "Coughar ",
    description: "lorem ipsum",
    assetname: "assets/3.png",
    price: 8.0,
    color: Color(0xffC0EFA9),
     isselected: false,
  ),
  ShoeModel(
    name: "Nike Joran Highs Retro",
    description: "lorem ipsum",
    assetname: "assets/1.png",
    price: 8.0,
    color: Color(0xffE9C9F8),
     isselected: false,
  ),
];

List<String> shoes = [
  "assets/1.png",
  "assets/2.png",
  "assets/3.png",
  "assets/1.png",
  "assets/2.png",
  "assets/3.png",
  "assets/1.png",
  "assets/2.png",
  "assets/1.png",
  "assets/2.png",
  "assets/3.png",
  "assets/1.png",
  "assets/2.png",
  "assets/3.png",
  "assets/1.png",
  "assets/2.png",
];


List<ShoeModel> cartlist1 = [];
List<ShoeModel> favoritelist1 = [];
