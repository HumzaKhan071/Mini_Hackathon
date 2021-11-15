import 'package:flutter/material.dart';

class TshirtModel {
  final String name;
  final String assetname;
  final String description;
  final double price;
  final Color color;

  TshirtModel(
      {required this.name, required this.assetname, required this.price, required this.description, required this.color});
}

List<TshirtModel> profList = [
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname:"assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffbcdaac),
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt5.png",
    price: 8.0,
    color: Color(0xffeaaeaf),
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt6.png",
    price: 8.0,
    color: Color(0xffEFDBA9),
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffA4afb0),
  ),
];

List<TshirtModel> designerList = [
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffFFD0BB),
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname:"assets/tshirt5.png",
    price: 8.0,
    color: Color(0xffD9D9D9),
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt6.png",
    price: 8.0,
    color: Color(0xffC0EFA9),
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffE9C9F8),
  ),
];

List<String> masks = [
  "assets/tshirt4.png"
  "assets/tshirt5.png"
  "assets/tshirt6.png"
  "assets/tshirt4.png"
   "assets/tshirt4.png"
  "assets/tshirt5.png"
  "assets/tshirt6.png"
  "assets/tshirt4.png"
  
  
];
