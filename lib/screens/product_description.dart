import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/store_model.dart';
class PRoductDescription extends StatelessWidget {
   PRoductDescription({required this.m2}) ;
Model? m2;
  @override
  Widget build(BuildContext context) {

    var size1 = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text("رجوع" , style: TextStyle(fontSize: 20,fontFamily: "myfont2", color: Colors.black),),
leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back , color: Colors.black,),),

      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(width: double.infinity,),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

            ),
child: Stack(
  alignment: Alignment.center,
  children: [
    Container(
    
      decoration: BoxDecoration(
        color: kBackgroundColor,
        shape: BoxShape.circle
      ),
      child: Image.asset("${m2!.urlimage}"),
    ),
Positioned(
  right: 20,
  bottom: 5,

  child:   Column(
    children: [
      Text("${m2!.subtitle}",style: TextStyle(fontFamily: "myfont2" ,fontSize: 20),),
      SizedBox(height: 10,),
      Text("${m2!.price}",style: TextStyle(fontFamily: "myfont2" ,fontSize: 20),),

    ],

  ),
)

  ],
),

          )
,
          Expanded(child: Container(
         child: Center(child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Text("${m2!.description}" ,style: TextStyle(fontFamily: "myfont2",fontSize: 30) ,),
         )),

          ))

        ],
      )

    );
  }
}
