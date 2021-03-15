import 'package:flutter/material.dart';
import 'package:music/screens/data.dart';

class Scroll extends StatelessWidget {
  final Roll rol;
  Scroll({this.rol});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) / 2,
      decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: AssetImage(rol.image), fit: BoxFit.cover)),
      child: Container(
        
        margin: EdgeInsets.all(22),
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Libratone',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white60,
                    ),
                  ),
                  Text(
                    'Q Adapt On-Ear',
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    rol.price,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          rol.review,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.star, color: Colors.yellowAccent, size: 15),
                      ],
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
