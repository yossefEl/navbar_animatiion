import 'package:flutter/material.dart';

class NavBarConcept extends StatefulWidget {
  @override
  _NavBarConceptState createState() => _NavBarConceptState();
}

class _NavBarConceptState extends State<NavBarConcept>
    with TickerProviderStateMixin {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Navigation Bar Concept",
              style: TextStyle(color: Colors.black54)),
          centerTitle: true,
        ),
        bottomNavigationBar: AnimatedSize(
            duration: Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            vsync: this,
            child: Container(
              height: expand ? 200 : 70,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: 02,
                  offset: Offset(0, -2),
                  color: Colors.black12.withOpacity(0.2),
                )
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: expand?0:1,
                        curve:Curves.easeIn,
                        child: IconButton(
                          highlightColor: Colors.blueAccent,
                          icon: Icon(Icons.home),
                          onPressed: () {},
                        ),
                      ),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: expand?0:1,
                        curve:Curves.easeIn,
                        child: IconButton(
                          highlightColor: Colors.blueAccent,
                          icon: Icon(Icons.account_balance_wallet),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          color: Colors.white,
                          highlightColor: Colors.blueAccent,
                          icon: Icon(expand ? Icons.close : Icons.add),
                          onPressed: () {
                            if (expand) {
                              setState(() {
                                expand = false;
                              });
                            } else {
                              setState(() {
                                expand = true;
                              });
                            }
                          },
                        ),
                      ),
                   AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: expand?0:1,
                        curve:Curves.easeIn,
                        child: IconButton(
                          highlightColor: Colors.blueAccent,
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                      ),
                    AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: expand?0:1,
                        curve:Curves.easeIn,
                        child: IconButton(
                          highlightColor: Colors.blueAccent,
                          icon: Icon(
                            Icons.shopping_cart,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  expand
                      ? AnimatedOpacity(
                          duration: Duration(milliseconds: 600),
                          opacity: expand?1:0,
                          child: Container(
                              margin: EdgeInsets.only(top: 25, left: 30),
                              child: Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.edit),
                                        SizedBox(width: 10),
                                        Text("Edit profile",style:TextStyle(fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.accessibility_new),
                                        SizedBox(width: 10),
                                        Text("Accessibility",style:TextStyle(fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.settings),
                                        SizedBox(width: 10),
                                        Text("Settings",style:TextStyle(fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        )
                      : Container(height: 0, width: 0),
                ],
              ),
            )));
  }
}
