import 'package:flutter/material.dart';
import 'package:technical_test/Star.dart';

class FoodCard extends StatelessWidget {
  final String name, imageurl, reviews, price;
  final double star;

  FoodCard(this.name, this.imageurl, this.reviews, this.price,this.star);

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0)),
                child: Image.network(
                  imageurl,
                  fit: BoxFit.fill,height: 120,width: 180,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10,top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    )),
              ],
            ),
            Container(margin: EdgeInsets.only(top: 10),
              child: Row(

                children: [
                  Container(
                    child: StarRating(
                     color: Colors.yellow,
                     rating: star,
                    ),margin: EdgeInsets.only(left: 10),
                  ) ,
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right:6),
                      child: Text(
                       '('+ reviews+')',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 10,right: 5,left: 5),
              child: Row(

                children: [
                  Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                      '₹ '+  price,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.rectangle),
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.only(right: 5,),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 26,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
