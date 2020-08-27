import 'package:flutter/material.dart';

class Roll{
 final String price;
 final String image;
 final String review;
 final String url;
 
 
  Roll({
  
    this.price,
    this.image,
    this.review,
    this.url,
    
  });
}

List<Roll>rolls = [
Roll(
  
  price: '\$229',
  image: 'images/red1.jpg', 
  review: '4.4'
),
Roll(
  
  price: '\$149',
  image: 'images/m2.jpeg', 
  review: '4.2'
),
Roll(
  
  price: '\$300',
  image: 'images/s1.jpeg', 
  review: '4.0'
),
Roll(
  
  price: '\$250',
  image: 'images/m1.jpeg', 
  review: '4.7'
)
];