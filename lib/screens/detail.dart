import 'package:flutter/material.dart';
import 'package:music/data/data.dart';

class Detail extends StatefulWidget {
  final Roll scl;
  Detail({this.scl});

  @override
  _Detail createState() => _Detail();
}

class _Detail extends State<Detail> {
  bool touch = false;
  IconData liked = Icons.favorite;
  IconData like = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: (MediaQuery.of(context).size.height / 2) + 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.scl.image), fit: BoxFit.cover)),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 2) - 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 20, 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Libratone',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 22)),
                                SizedBox(height: 15),
                                Text('Q Adapt On-Ear',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ],
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    borderRadius: BorderRadius.circular(20)),
                                child: IconButton(
                                    icon: Icon(touch ? liked : like,
                                        color:
                                            touch ? Colors.red : Colors.grey),
                                    onPressed: () =>
                                        setState(() => touch = !touch)))
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Reviews',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                        height: 1.5)),
                                SizedBox(width: 20),
                                Text(widget.scl.review),
                                Icon(
                                  Icons.star,
                                  color: Colors.red[300],
                                  size: 15,
                                )
                              ],
                            ),
                            Container(
                                child: Row(children: <Widget>[
                              Text(
                                'To read',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.expand_more,
                                  color: Colors.black54,
                                ),
                                iconSize: 15,
                                onPressed: null,
                              )
                            ]))
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'With the Q ADAPT on-ear it only grows and just for the listening experience: rich sound active noise and intuitive. Touch controls are just a few examples',
                          style: TextStyle(
                              color: Colors.black54, fontSize: 18, height: 2),
                        ),
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.orange[900],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '>>>',
                                    style: TextStyle(
                                      color: Colors.white54,
                                    ),
                                  ),
                                  Text(
                                    '>',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.scl.price,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
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
                ))),
        SafeArea(
            child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          iconSize: 25,
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          child: Center(
                              child: Text(
                            '-18%',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 15),
                          )),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: null,
                      iconSize: 20),
                ]),
          ),
        ))
      ]),
    );
  }
}
