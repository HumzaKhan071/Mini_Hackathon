import 'package:flutter/material.dart';

class TshirtModel {
  final String name;
  final String assetname;
  final String description;
  final double price;
  final Color color;
  bool isselected;

  TshirtModel({
    required this.name,
    required this.assetname,
    required this.price,
    required this.description,
    required this.color,
    required this.isselected,
  });
}

List<TshirtModel> profList = [
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffbcdaac),
    isselected: false,
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt5.png",
    price: 8.0,
    color: Color(0xffeaaeaf),
    isselected: false,
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt6.png",
    price: 8.0,
    color: Color(0xffEFDBA9),
    isselected: false,
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffA4afb0),
    isselected: false,
  ),
];

List<TshirtModel> designerList = [
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffFFD0BB),
    isselected: false,
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt5.png",
    price: 8.0,
    color: Color(0xffD9D9D9),
    isselected: false,
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt6.png",
    price: 8.0,
    color: Color(0xffC0EFA9),
    isselected: false,
  ),
  TshirtModel(
    name: "TShirt",
    description: "lorem ipsum",
    assetname: "assets/tshirt4.png",
    price: 8.0,
    color: Color(0xffE9C9F8),
    isselected: false,
  ),
];

List<String> masks = [
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
  "assets/tshirt4.png"
      
];

List<TshirtModel> cartlist = [];
List<TshirtModel> favoritelist = [];
