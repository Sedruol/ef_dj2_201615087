import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';

class NewCard extends StatefulWidget {
  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {

  String cardHolderName = "";
  String dayExpiry = "";
  String cardNumber = "";
  String cvv = "";
  String nameBank = "";
  bool visibleBackSide = false;

  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  FocusNode focusNodeCardHolderName = FocusNode();
  FocusNode focusNodeCardExpiry = FocusNode();
  FocusNode focusNodeCardNumber = FocusNode();
  FocusNode focusNodeCVV = FocusNode();
  FocusNode focusNodeBankName = FocusNode();

  @override
  void initState() {
    focusNodeCVV.addListener(() {
      if(focusNodeCVV.hasFocus){
        visibleBackSide = true;
      } else{
        visibleBackSide = false;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 20,),
                CreditCard(
                    cardHolderName: cardHolderName,
                    cardExpiry: dayExpiry,
                    cardNumber: cardNumber,
                    cvv: cvv,
                    showShadow: true,
                    showBackSide: visibleBackSide,
                    bankName: nameBank,
                    frontBackground: Container(color: Colors.blue),
                    backBackground: CardBackgrounds.white),
                SizedBox(height: 20,),
                TextField(
                    focusNode: focusNodeCardHolderName,
                    onChanged: (text){
                      setState(() {
                        cardHolderName = text;
                        visibleBackSide = false;
                      });
                    },
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                        fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.name,
                    maxLength: 16,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: 'Card Holder Name'
                    )
                ),
                SizedBox(height: 20,),
                TextField(
                    focusNode: focusNodeCardExpiry,
                    onChanged: (text){
                      setState(() {
                        dayExpiry = text;
                        visibleBackSide = false;
                      });
                    },
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                        fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.text,
                    maxLength: 16,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: 'Card Expiry'
                    )
                ),
                SizedBox(height: 20,),
                TextField(
                    focusNode: focusNodeCardNumber,
                    onChanged: (text){
                      setState(() {
                        cardNumber = text;
                        visibleBackSide = false;
                      });
                    },
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                        fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.number,
                    maxLength: 16,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: 'Card Number'
                    )
                ),
                SizedBox(height: 20,),
                TextField(
                    focusNode: focusNodeCVV,
                    onChanged: (text){
                      setState(() {
                        cvv = text;
                        visibleBackSide = true;
                      });
                    },
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                        fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    decoration: InputDecoration(
                      counterText: "",
                      labelText: 'CVV',
                    )
                ),
                SizedBox(height: 20,),
                TextField(
                    focusNode: focusNodeBankName,
                    onChanged: (text){
                      setState(() {
                        nameBank = text;
                        visibleBackSide = false;
                      });
                    },
                    style: TextStyle(
                        fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.text,
                    maxLength: 16,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: 'Bank Name'
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}