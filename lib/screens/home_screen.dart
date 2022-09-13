import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:store_app/screens/product_description.dart';
import 'package:store_app/widgets/custom_widget.dart';

import '../constants.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor:kPrimaryColor ,
        centerTitle: false,
        title: Text("مرحبا بكم بمتجر الالكترونيات" ,style: TextStyle(
          fontSize: 20,
          fontFamily: "myfont2",




        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        ],

      ),
body: Column(
  children: [
    SizedBox(height: kDefaultPadding),
 Expanded(
   child: Stack(

     children: [

       Container(

decoration: BoxDecoration(
  color: kBackgroundColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),

  )
),margin: EdgeInsets.only(top: 70),
       ),
Padding(
  padding: const EdgeInsets.all(20.0),
  child:  ListView.builder(itemBuilder: (context , index)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>PRoductDescription(m2: mylist[index])));


          },


          child: MyCustomWidget(mymodel: mylist[index],)),
    );



  },
    itemCount: mylist.length,

  )
)
     ],
   ),
 )

  ],


),

    );
  }
}
