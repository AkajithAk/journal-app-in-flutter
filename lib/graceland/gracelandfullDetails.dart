import 'package:flutter/material.dart';
import 'package:journals/graceland/gracelandAddressBottomNav.dart';

class GraceLandFullDetails extends StatefulWidget {
  const GraceLandFullDetails({ Key? key }) : super(key: key);

  @override
  _GraceLandFullDetailsState createState() => _GraceLandFullDetailsState();
}

class _GraceLandFullDetailsState extends State<GraceLandFullDetails> {
  

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
            height: 250,
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
                 top:150,
                  left: 32,
                    child: Image.asset("images/pto.png",  
         
       ),),
        
Positioned(
                  top:215,
                  left: 30,
      child: Text("Rian Anderson",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.grey),)
                  
                     ),

Positioned(
                  top:435,
                  left: 40,
      child:  Image.asset("images/line.png")     
                     ),



                     Positioned(
                  top:433,
                  left: 32,
      child:  Image.asset("images/cc.png")     
                     ),
                     
                    Positioned(
                  top:437,
                  left: 36,
      child:  Image.asset("images/ic.png")     
                     ),
                     
                      Positioned(
                  top:583,
                  left: 32,
      child:  Image.asset("images/cc.png")     
                     ),
                     
                    Positioned(
                  top:587,
                  left: 36,
      child:  Image.asset("images/ic.png")     
                     ),

                      Positioned(
                  top:705,
                  left: 32,
      child:  Image.asset("images/cc.png")     
                     ),
                     
                    Positioned(
                  top:709,
                  left: 36,
      child:  Image.asset("images/ic.png")     
                     ),

                     

    //    Positioned(
    //               top:140,
    //               left: 50,
    //                child: Container(
    //          child: Container(
    //                        height: 50,
    //          width: 350,color: Colors.white,
    //          child: TextField(
               
    //     decoration: new InputDecoration(
    //       focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                     
    //             ),
    //           enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),
                     
    //             ),
    //             prefixIcon: Icon(Icons.search),
              
    //           hintText: 'Search',
    //     ),
    // ),
    //        ),
    //      ),
    //               ),

                 Padding(
                   padding: const EdgeInsets.only(top:250.0),
                   child: Column(
        children: [
          
    
        ],
      ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top:278.0,left: 20),
                   
                   
                      child: Text("Personal Details",style: TextStyle(fontSize: 16),), 
                  
                 ),

                 Padding(padding: EdgeInsets.only(top:300.0,left: 20),
                 child: Text("Amet minim mollit non deserunt ullamco est sit dolor do amet sint velit officia.Amet minim mollit non deserunt ullamco est sit.",
                 style: TextStyle(color: Colors.grey,fontSize: 16),
                 ),
                 ),

 
         Padding(
           padding: const EdgeInsets.only(top:358.0),
           child: ListView(
             scrollDirection: Axis.vertical,
                children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left:80.0,right: 20,bottom: 15),
                     child: Container(
                       decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFFFFF19D)),
                       height: 130,
                       width: 150,
                       // color: Colors.lightGreen,
                       child: Container(child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [ 
                           Padding(
                             padding: const EdgeInsets.only(top:15,left:10.0,bottom: 10),
                             
                             child: Text("Phone No",style: TextStyle(fontSize: 12),),
                           ),
                           Row(
                             children: [
                               SizedBox(width: 10,),
                               Text("+91 98765 43210",style: TextStyle(fontSize: 14, ),),
                               SizedBox(width: 130,),
                               GestureDetector(
                                 onTap: (){},
                                 child: Text("Work"),
                               )
                             ],
                           ),
                           SizedBox(height: 10,),
                           Divider(color: Colors.black,thickness: 1,),
                            SizedBox(height: 10,),
                            Row(
                             children: [
                               SizedBox(width: 10,),
                               Text("+91 98765 43210",style: TextStyle(fontSize: 14, ),),
                               SizedBox(width: 130,),
                               GestureDetector(
                                 onTap: (){},
                                 child: Text("Home"),
                               )
                             ],
                           ),
                         ],
                       )),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(left:80.0,right: 20,bottom: 15),
                     child: Container(
                       decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFFFFF19D)),
                       height: 130,
                       width: 150,
                       // color: Colors.lightGreen,
                       child: Container(child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [ 
                           Padding(
                             padding: const EdgeInsets.only(top:15,left:10.0,bottom: 10),
                             
                             child: Text("Mail",style: TextStyle(fontSize: 12),),
                           ),
                           SizedBox(width: 10,),
                           Padding(
                             padding: const EdgeInsets.only(left:12.0),
                             child: Text("rian.anderson@gmail.com",style: TextStyle(fontSize: 14, ),),
                           ),
                            
                           SizedBox(height: 10,),
                           Divider(color: Colors.black,thickness: 1,),
                            SizedBox(height: 10,), 
                            Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: Text("rian.anderson@yahoo.com",style: TextStyle(fontSize: 14, ),),
                            ),
                          
                            
                         ],
                       )),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(left:80.0,right: 20,bottom: 15),
                     child: Container(
                       decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFFFFF19D)),
                       height: 80,
                       width: 150,
                       // color: Colors.lightGreen,
                       child: Container(child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [ 
                           Padding(
                             padding: const EdgeInsets.only(top:15,left:10.0,bottom: 10),
                             
                             child: Text("Adderess",style: TextStyle(fontSize: 12),),
                           ),
                           Row(
                             children: [
                               SizedBox(width: 10,),
                               Text("Surken Hall Square, Chennai,\nTamilnadu",style: TextStyle(fontSize: 14, ),),
                              
                             ],
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
