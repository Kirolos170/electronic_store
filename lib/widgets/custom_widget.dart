import 'package:flutter/material.dart';
import 'package:store_app/models/store_model.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/product_description.dart';
class MyCustomWidget extends StatelessWidget {
   MyCustomWidget({required this.mymodel});
Model? mymodel;
  @override
  Widget build(BuildContext context) {

var size = MediaQuery.of(context).size;

    return SafeArea(










      child: Container(
        height: 190,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),


        ),
        child: Stack(

          alignment: Alignment.bottomCenter,
          children: [


            Container(

              height: 166,

              decoration: BoxDecoration(

                  color: Colors.white,


                  borderRadius: BorderRadius.circular(20),


                  boxShadow: [

                    BoxShadow(
                      color: Colors.black,
                      offset:Offset(0,20) ,
                      blurRadius:25 ,


                    ),
                  ]

              ),



            ),
            Positioned(
              top: 0,
                left: 0,
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 100,
              width: 200,
              child: Image.asset("${mymodel!.urlimage}"),


            )),
Positioned(
      bottom: 0,
      right: 0,

      child: SizedBox(
  height: 136,
  width: size.width-200,
  child: Column(
      children: [
        Text("${mymodel!.title}" ,style: TextStyle(fontFamily: "myfont2" , fontSize: 20),),
        Text("${mymodel!.subtitle}",style: TextStyle(fontFamily: "myfont2"),),
        Container(
          height: 25,
          width: 200,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           color: kSecondaryColor


         ),
          child: Center(child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("${mymodel!.price } " , style: TextStyle(fontFamily: "myfont2"),),
          )),


        )


      ],


  ),



))
          ],



        ),

      ),
    );
  }
}
