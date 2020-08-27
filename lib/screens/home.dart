import 'package:flutter/material.dart';
import 'package:music/widgets/card.dart';
import 'package:music/screens/data.dart';
import 'package:music/screens/detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('images/m4.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(':',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  height: 1.5))
                        ]),
                      ),
                      Container(
                          child: Row(
                       
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                              iconSize: 31,
                              onPressed: null),
                          SizedBox(width: 30),
                          IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.black54,
                              ),
                              iconSize: 31,
                              onPressed: null)
                        ],
                      ))
                    ]),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 32,
                    onPressed: null,
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 420,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            child: Scroll(
                              rol: rolls[0],
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detail(scl: rolls[0]),
                                  ));
                            }
                            ),
                        SizedBox(
                          width: 30,
                        ),
                        FlatButton(
                                                  child: Scroll(
                            rol: rolls[1],
                          ),
                           onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detail(scl: rolls[1]),
                                  ));
                            }
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        FlatButton(
                                                  child: Scroll(
                            rol: rolls[2],
                          ),
                           onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detail(scl: rolls[2]),
                                  ));
                            }
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        FlatButton(
                                                  child: Scroll(
                            rol: rolls[3],
                          ),
                           onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detail(scl: rolls[3]),
                                  ));
                            }
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.trending_up),
                        onPressed: null,
                      ),
                      Text('Trending')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.category),
                        onPressed: null,
                      ),
                      Text('Categories')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.style),
                        onPressed: null,
                      ),
                      Text('Style')
                    ],
                  )
                ],
              )
            ]),
      ),
     /* bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconSize: 40,
        fixedColor: Colors.orange,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text('Trending'),
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.style),
            title: Text('Style'),
            )
        ]
      ),*/
    );
  }
}
