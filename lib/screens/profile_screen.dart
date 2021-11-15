import 'package:flutter/material.dart';
import 'package:mini_hackathon/screens/profile_clipper.dart';
import 'package:mini_hackathon/screens/widgets/custom_drawer.dart';


class ProfileScreen extends StatefulWidget {
  

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: ProfileClipper(),
                  child: Image(
                    height: 300.0,
                    width: double.infinity,
                    image: AssetImage("assets/profilepic.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                    ),
                    iconSize: 20.0,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0)
                        ]),
                    child: ClipOval(
                      child: Image(
                        height: 120.0,
                        width: 120.0,
                        image: AssetImage("assets/profilepic.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Humza Khan",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Following",
                      style: TextStyle(fontSize: 22.0, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Followers",
                      style: TextStyle(fontSize: 22.0, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    
                  ],
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
