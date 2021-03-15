import 'package:flutter/material.dart';
import 'package:music/widgets/card.dart';
import 'package:music/data/data.dart';
import 'package:music/screens/detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
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
                            SizedBox(width: 5)
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
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                Container(
                  height: (MediaQuery.of(context).size.height) / 2,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        HomeCard(0),
                        SizedBox(width: 35),
                        HomeCard(1),
                        SizedBox(width: 35),
                        HomeCard(2),
                        SizedBox(width: 35),
                        HomeCard(3),
                      ],
                    ),
                  ),
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
      ),
    );
  }
}

