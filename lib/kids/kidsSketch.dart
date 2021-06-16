import 'package:flutter/material.dart';
import 'package:journals/graceland/gracelandAddressBottomNav.dart';

class KideSketch extends StatefulWidget {
  const KideSketch({ Key? key }) : super(key: key);

  @override
  _KideSketchState createState() => _KideSketchState();
}

class _KideSketchState extends State<KideSketch> {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Color(0xffC3FF72),
          ),
        ],
      ),
      Positioned(
                  top:0,
                  left: 219,
                    child: Image.asset("images/gelip1.png",  
         
       ),),

       
          Positioned(
        
          top: 0,
          left: 250,
            child: Image.asset("images/gelip2.png" ,
         ),), 

            

            

       Positioned(
                  top:45,
                  left: 343,
                    child: Image.asset("images/bcir.png",  
         
       ),),
        Positioned(
                 top:52,
                  left: 350,
                    child: Image.asset("images/3.png",  
         
       ),),
        
         Positioned(
                  top:59,
                  left: 43,
                    child: Image.asset("images/back.png",  
         
       ),),
        Positioned(
                 top:52,
                  left: 32,
                    child: Image.asset("images/backc.png",  
         
       ),),


         
        
Positioned(
                  top:145,
                  left: 30,
      child: Text("SKETCH BOOK",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.grey),)
                  
                     ),
 
                     

 
         Padding(
           padding: const EdgeInsets.only(top:208.0),
           child: ListView(
             scrollDirection: Axis.vertical,
                children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left:15.0,right: 20,bottom: 15),
                     child: Container(
                       
                       decoration:BoxDecoration( 
                         
                         borderRadius: BorderRadius.circular(10),color: Color(0xFFFFF19D)),
                       height: 60,
                       width: 150,
                       // color: Colors.lightGreen,
                       child: Container(child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [ 
                          
                           Padding(
                             padding: const EdgeInsets.only(top:20.0,left: 10),
                             child: Row( 
                             
                               children: [
                                 SizedBox(width: 10,),
                                 Text("Landscape Drawing",style: TextStyle(fontSize: 14, ),),
                                 SizedBox(width: 130,),
                                 Row( 
                                   children: [
                                     GestureDetector(
                                       onTap: (){},
                                       child: Icon(Icons.remove_red_eye),
                                     ),
                                     SizedBox(width: 5,),
                                     GestureDetector(
                                   onTap: (){},
                                   child:Icon(Icons.edit)
                                 ),SizedBox(width: 5,),
                                 GestureDetector(
                                   onTap: (){},
                                   child: Icon(Icons.delete),
                                 )
                                   ],
                                 )
                                 
                               ],
                             ),
                           ),
                           
                         ],
                       )),
                     ),
                   ),

                 
                   

                         
                ],
            
            ),
         ),
    ],
  ),
      
    );
   
  }
}
