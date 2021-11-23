// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_hackathon/models/shoes-model.dart';

import 'package:mini_hackathon/models/tshirt-model.dart';
import 'package:mini_hackathon/screens/cart_screen.dart';
import 'package:mini_hackathon/screens/favorite_screen.dart';

String RandomText =
    "It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 ";

class TshirtDetails extends StatefulWidget {
  final TshirtModel TshirtData;
  TshirtDetails({required this.TshirtData});



  @override
  State<TshirtDetails> createState() => _TshirtDetailsState();
}

class _TshirtDetailsState extends State<TshirtDetails> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text(
          "Details Page",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => FavoriteScreen())),
            child: Icon(
              Icons.favorite_outline,
              size: 43,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => CartScreen())),
            child: Icon(
              CupertinoIcons.cart,
              size: 43,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.2,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              alignment: Alignment.topRight,
              child: Icon(
                Icons.more_horiz_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                padding:
                    EdgeInsets.only(bottom: height * 0.01, left: 20, right: 20),
                height: height * 0.6,
                width: width,
                decoration: BoxDecoration(
                    color: widget.TshirtData.color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Image.asset(widget.TshirtData.assetname),
              ),
            ),
            Positioned(
              top: 20,
              bottom: 20,
              child: LikeButtons(),
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: BackgroundClipper(),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: height * 0.5,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xfff1e9e9),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Text(
                        widget.TshirtData.name,
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        RandomText,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.openSans(
                          height: 1.5,
                          letterSpacing: 1.5,
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "Similar Products",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w300, fontSize: 24),
                            ),
                            Spacer(),
                            Text(
                              "Show All",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w300, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: height * 0.12,
                        width: width,
                        child: ListView.builder(
                          itemCount: shoes.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index ) {
                            return Container(
                              margin: EdgeInsets.only(right: 20),
                              width: height * 0.12,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Image.asset(shoes[index]),
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "\$  ${widget.TshirtData.price}",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 40,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: height * 0.1,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            alignment: Alignment.center,
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    cartlist.add(profList[1]);
                                  });
                                },
                                child: Text(
                                  "Shop Now",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButtons extends StatefulWidget {
  const LikeButtons({Key? key}) : super(key: key);

  @override
  _LikeButtonsState createState() => _LikeButtonsState();
}

class _LikeButtonsState extends State<LikeButtons> {
  bool isLiked = false;
  Color bgColor = Colors.white;
  Color heartColor = Colors.grey;

  void like() {
    setState(() {
      bgColor = bgColor == Colors.white ? Colors.red : Colors.white;
      heartColor = heartColor == Colors.grey ? Colors.white : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: like,
      child: CircleAvatar(
        backgroundColor: bgColor,
        radius: 18,
        child: Icon(
          Icons.favorite_outline,
          color: heartColor,
          size: 18,
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(40, 0);
    // path.quadraticBezierTo(5, -5, size.width*0.2, size.height*0.2);
    path.lineTo(size.width * 0.9, size.height * 0.18);
    path.quadraticBezierTo(
        size.width, size.height * 0.2, size.width, size.height * 0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

_buildCartItem() {
  return Container(
    margin: EdgeInsets.all(20.0),
    height: 170,
    child: Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/tshirt4.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Tshirt",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border:
                                Border.all(width: 0.8, color: Colors.black54)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
