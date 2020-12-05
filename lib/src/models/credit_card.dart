import 'package:flutter/material.dart';

class CreditCard{
  String name;
  String pathIMG;
  CreditCard({this.name,this.pathIMG});
}

class ModelCreditCard extends StatelessWidget{
  final String name;
  final String pathIMG;
  const ModelCreditCard({Key key, this.name, this.pathIMG}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 65,
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 30),
                Image(image: AssetImage("assets/images/${pathIMG}.png")),
                SizedBox(width: 10),
                Text(name,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        )
    );
  }
}