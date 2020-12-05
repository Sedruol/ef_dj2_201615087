import 'package:flutter/material.dart';

class Page_Main extends StatefulWidget{
  @override
  _Page_Main createState() => _Page_Main();
}

class _Page_Main extends State<Page_Main>{
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
                            image: DecorationImage(image: AssetImage('assets/images/image1.png'), fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                      ),
                      Column(
                        children: [
                          Text('Digital',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 42,fontStyle: FontStyle.italic)),
                          Text('wallet',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 42,fontStyle: FontStyle.italic)),
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
                        Container(child: Text("Balance",style: TextStyle(fontSize: 25),textAlign: TextAlign.start,),),
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: MediaQuery.of(context).size.width*0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('Rp.76.547.000,-',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,fontStyle: FontStyle.italic),),
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