import 'package:flutter/material.dart';
import 'package:ef_dj2_201615087/src/models/credit_card.dart';
import 'package:ef_dj2_201615087/src/pages/new_card.dart';
import 'package:ef_dj2_201615087/src/utils/utils.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class CardsPageList extends StatefulWidget{
  @override
  _CardsPageListState createState() => _CardsPageListState();
}

class _CardsPageListState extends State<CardsPageList> {
  List<CreditCard> cards;

  @override
  void initState() {
    cards = new List<CreditCard>();
    cards.add(new CreditCard(name: 'MasterCard', pathIMG: 'image10'));
    cards.add(new CreditCard(name: 'Visa', pathIMG: 'image11'));
    cards.add(new CreditCard(name: 'JCB', pathIMG: 'image12'));
    cards.add(new CreditCard(name: 'American Express', pathIMG: 'image13'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/image9.png'), fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                      ),
                      Column(
                        children: [
                          Text('Credit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 42,fontStyle: FontStyle.italic)),
                          Text('Card',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 42,fontStyle: FontStyle.italic)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(child: Text("Pls, select a credit card",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),padding: EdgeInsets.only(left: 20)),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                child: Icon(Icons.camera_alt_outlined),
                                onTap: () async{
                                  String cameraScanResult = await scanner.scan();
                                  launchURL(context, cameraScanResult);
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        ListView.separated(
                          itemCount: cards.length,
                          separatorBuilder: (context,i) => const Divider(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context,i){
                            return ModelCreditCard(name: cards[i].name, pathIMG: cards[i].pathIMG);
                          },
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height: 65,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text('ADD CARD',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),),
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context) => NewCard()
                            ));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}