// ignore_for_file: non_constant_identifier_names, import_of_legacy_library_into_null_safe, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_hackathon/Tab/Tabs.dart';
import 'package:mini_hackathon/details/mask-details.dart';

import 'package:mini_hackathon/details/masks-details.dart';

import 'package:mini_hackathon/models/shoes-model.dart';
import 'package:mini_hackathon/models/tshirt-model.dart';
import 'package:mini_hackathon/screens/cart_screen.dart';
import 'package:mini_hackathon/screens/favorite_screen.dart';
import 'package:mini_hackathon/screens/profile_screen.dart';
import 'package:mini_hackathon/screens/serach.dart';

import 'package:mini_hackathon/screens/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexselected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text(
          "Home Page",
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
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              " Acessories",
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w300, fontSize: 30),
            ),
            Tabs(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(24),
                width: double.infinity,
                color: Colors.grey.withOpacity(0.3),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Professional ",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 24),
                                ),
                                Spacer(),
                                Text(
                                  "More",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    TshirtItem(
                                      TshirtData: profList[0],
                                    ),
                                    TshirtItem(
                                      TshirtData: profList[2],
                                    ),
                                    ShoeItem(
                                      shoeData: profList1[0],
                                    ),
                                    ShoeItem(
                                      shoeData: profList1[2],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    TshirtItem(
                                      TshirtData: profList[1],
                                    ),
                                    TshirtItem(
                                      TshirtData: profList[3],
                                    ),
                                    ShoeItem(
                                      shoeData: profList1[1],
                                    ),
                                    ShoeItem(
                                      shoeData: profList1[3],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Designing ",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 24),
                                ),
                                Spacer(),
                                Text(
                                  "More",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    TshirtItem(
                                      TshirtData: designerList[0],
                                    ),
                                    TshirtItem(
                                      TshirtData: designerList[2],
                                    ),
                                    ShoeItem(
                                      shoeData: designerList1[0],
                                    ),
                                    ShoeItem(
                                      shoeData: designerList1[2],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    TshirtItem(
                                      TshirtData: designerList[1],
                                    ),
                                    TshirtItem(
                                      TshirtData: designerList[3],
                                    ),
                                    ShoeItem(
                                      shoeData: designerList1[0],
                                    ),
                                    ShoeItem(
                                      shoeData: designerList1[2],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        fixedColor: Colors.red,
        showUnselectedLabels: true,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.person),
                color: Colors.red,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ProfileScreen())),
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.more_horiz,
                ),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SearchScreen())),
                color: Colors.red,
              ),
              label: "Search")
        ],
      ),
    );
  }
}

class TshirtItem extends StatefulWidget {
  final TshirtModel TshirtData;
  int indexselected = 0;

  TshirtItem({required this.TshirtData});

  @override
  State<TshirtItem> createState() => _TshirtItemState();
}

class _TshirtItemState extends State<TshirtItem> {
  get index => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (ctx) => TshirtDetails(
                    TshirtData: widget.TshirtData,
                  ))),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.1,
                  left: 10,
                  right: 10),
              decoration: BoxDecoration(
                color: widget.TshirtData.color,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Image.asset(widget.TshirtData.assetname),
            ),
            Positioned(
                bottom: 0,
                child: ClipPath(
                  clipper: ItemClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.15,
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        )),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      widget.TshirtData.name,
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                )),
            Positioned(
              top: 10,
              right: 10,
              child: LikeButtons(),
            ),
          
          ],
        ),
      ),
    );
  }
}

class ShoeItem extends StatefulWidget {
  final ShoeModel shoeData;

  ShoeItem({required this.shoeData});

  @override
  State<ShoeItem> createState() => _ShoeItemState();
}

class _ShoeItemState extends State<ShoeItem> {
  int indexselected = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (ctx) => ShoeDetails(
                    shoeData: widget.shoeData,
                  ))),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.1,
                  left: 10,
                  right: 10),
              decoration: BoxDecoration(
                color: widget.shoeData.color,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Image.asset(widget.shoeData.assetname),
            ),
            Positioned(
                bottom: 0,
                child: ClipPath(
                  clipper: ItemClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.15,
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        )),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      widget.shoeData.name,
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                )),
            Positioned(
              top: 10,
              right: 10,
              child: LikeButtons1(),
            ),
           
          ],
        ),
      ),
    );
  }
}

class ItemClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(5, -5, size.width * 0.2, size.height * 0.2);
    path.lineTo(size.width * 0.9, size.height * 0.4);
    path.quadraticBezierTo(
        size.width, size.height * 0.45, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
