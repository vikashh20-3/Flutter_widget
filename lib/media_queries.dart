import 'package:flutter/material.dart';

class MediaQueries extends StatefulWidget {
  const MediaQueries({super.key});

  @override
  State<MediaQueries> createState() => _MediaQueriesState();
}

class _MediaQueriesState extends State<MediaQueries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            height:MediaQuery.of(context).size.height,//this will take the height of complete screeen
            // height:MediaQuery.of(context).size.height*0.2, //0.2 means 20% of the total 
            // height:MediaQuery.of(context).size.height-200,//we can give the values with numerical form 
            // height:MediaQuery.of(context).size.height/2,// means half of the screen 
            width:MediaQuery.of(context).size.width/2,
            color:Colors.deepPurpleAccent,
            child:Container(
              height:double.infinity, // if we want the values from the parent then we use this 
              width:double.infinity, // this will take the values from the upper parent container
              color:Colors.amberAccent
            )
          )
        ]
      ),
    );
  }
}
