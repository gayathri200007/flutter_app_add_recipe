import 'package:flutter_app_add_recipe/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Container(
          child: SingleChildScrollView(
            /**scrollDirection: Axis.vertical,**/
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/th.jpg'),
                    fit: BoxFit.cover,

                  ),
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                margin: EdgeInsets.only(top: 50),
                                child: Center(
                                  child: Text("ADD YOUR RECIPE", style: TextStyle(color: Colors.white70, fontSize: 25,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            FadeAnimation(1.8, Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Name of the Recipe",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                      /**padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                                          child: Material(
                                          elevation: 10.0,
                                          borderRadius: BorderRadius.circular(25.0),
                                          child: TextFormField(
                                          decoration: InputDecoration(
                                          hintText: 'diiii',
                                          hintStyle: TextStyle(color: Colors.grey)
                                          ),
                                          ),
                                          ),**/
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Time",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Ingredients",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Time",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Time",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Time",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "About Recipe",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Calories",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Cooking Method",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Add Image URL",
                                            hintStyle: TextStyle(color: Colors.grey[400])
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            ),
                            SizedBox(height: 30,),
                            FadeAnimation(2, Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(143, 148, 251, 1),
                                        Color.fromRGBO(143, 148, 251, .6),
                                      ]
                                  )
                              ),
                              child: Center(
                                child: Text("CREATE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )),
                            /**SizedBox(height: 70,),
                                FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),**/
                          ],
                        ),
                      )
                    ],
                  ),

                ),
              )
          )
      ),
    );
  }
}