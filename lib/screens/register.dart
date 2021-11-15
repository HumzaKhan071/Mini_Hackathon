// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final Function togScreen;
  final _formKey = GlobalKey<FormState>();

   Register({Key? key, required this.togScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed:()=>togScreen, icon: Icon(Icons.arrow_back,
                          color: Theme.of(context).primaryColor,
                          size: 30,

                        )),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    SizedBox(height: 13,),
                    Text("Create Account ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Create new Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(height: 30,),

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Container(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,

                            ),
                            decoration: InputDecoration(


                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.person_outlined,size: 30,color: Theme.of(context).primaryColor,),
                                labelText: "NAME",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).primaryColor,


                                )
                            ),
    validator: (text) {
    if (text == null || text.isEmpty) {
    return 'Text is empty';
    }
    return null;
    }
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:10),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Container(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,

                            ),
                            decoration: InputDecoration(


                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.mail,size: 30,color: Theme.of(context).primaryColor,),
                                labelText: "EMAIL",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).primaryColor,


                                )
                            ),
    validator: (text) {
    if (text == null || text.isEmpty) {
    return 'Text is empty';
    }
    return null;}
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Container(
                          child: TextFormField(
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,

                            ),
                            decoration: InputDecoration(


                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.phone,size: 30,color: Theme.of(context).primaryColor,),
                                labelText: "PHONE NUMBER",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).primaryColor,


                                )
                            ),
                            validator: (text) {
    if (text == null || text.isEmpty) {
    return 'Text is empty';
    }
    return null;}
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Container(
                          child: TextFormField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,

                            ),
                            decoration: InputDecoration(


                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock,size: 30,color: Theme.of(context).primaryColor,),
                                labelText: "PASSWORD",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).primaryColor,


                                )
                            ),
    validator: (text) {
    if (text == null || text.isEmpty) {
    return 'Text is empty';
    }
    return null;}
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Container(
                          child: TextFormField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,

                            ),
                            decoration: InputDecoration(


                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock,size: 30,color: Theme.of(context).primaryColor,),
                                labelText: "CONFORM PASSWORD",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).primaryColor,


                                )
                            ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Text is empty';
                                }
                                return null;}
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 55,
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: (){
                          if (_formKey.currentState!.validate()) {

                          }
                        },
                        child: Text("Create account"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account ",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        GestureDetector(
                          onTap: ()=>togScreen(),
                          child: Text("Login ",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
