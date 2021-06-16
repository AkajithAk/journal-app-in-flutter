import 'package:flutter/material.dart'; 
import 'package:journals/graceland/gracelandfullBN.dart';

class GraceLand extends StatefulWidget {
  const GraceLand({ Key? key }) : super(key: key);

  @override
  _GraceLandState createState() => _GraceLandState();
}

class _GraceLandState extends State<GraceLand> {
  
 
  
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
            height: 150,
            color: Color(0xffd9ffbf),
          ),
        ],
      ),
     
            

            Padding(
              padding: const EdgeInsets.only(top:68.0,left:35 ),
              child: Text("GRACELAND - ADDRESS BOOK" ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.green),),
            ),
  
                 
          
         Padding(
           padding: const EdgeInsets.only(top:138.0),
           child: ListView(
             scrollDirection: Axis.vertical,
                children: <Widget>[
                   InkWell(
                 onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => GraceLandAddressBN()));
                         
                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 10),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFFFFCDD2),),
                                height: 100,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Row( 
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:1.0),
                                      child: Container(
                                        
                                        height: 98,
                                        width: 10,
                                        decoration: BoxDecoration(color: Colors.red,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                       
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [  
                                       
                                        Text("Rian Anderson",style: TextStyle(fontSize: 18, ),),
                                        SizedBox(height: 10,),
                                        Text("+91 98765 43210",style: TextStyle(fontSize: 12,)),
                                         SizedBox(height: 10,),
                                         new GestureDetector(
                            onTap: () { 
                            },
                            child: new Text("View More",style: TextStyle(color: Colors.red,fontSize: 14),),
                          )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:153.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          
                                        color: Colors.red,
                                          borderRadius: BorderRadius.circular(10)),
                                        height: 99,
                                        width: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(26.0),
                                          child: Text("H",textAlign: TextAlign.center,style: TextStyle(fontSize: 32),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                           InkWell(
                 onTap: (){

                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 10),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.blue[100],),
                                height: 100,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Row( 
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:1.0),
                                      child: Container(
                                        
                                        height: 98,
                                        width: 10,
                                        decoration: BoxDecoration(color: Colors.blue[700],
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                       
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [  
                                       
                                        Text("Rian Anderson",style: TextStyle(fontSize: 18, ),),
                                        SizedBox(height: 10,),
                                        Text("+91 98765 43210",style: TextStyle(fontSize: 12,)),
                                         SizedBox(height: 10,),
                                         new GestureDetector(
                            onTap: () { 
                            },
                            child: new Text("View More",style: TextStyle(color: Colors.red,fontSize: 14),),
                          )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:153.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          
                                        color: Colors.blue[700],
                                          borderRadius: BorderRadius.circular(10)),
                                        height: 99,
                                        width: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(26.0),
                                          child: Text("H",textAlign: TextAlign.center,style: TextStyle(fontSize: 32),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                           InkWell(
                 onTap: (){

                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 10),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.yellow[100],),
                                height: 100,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Row( 
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:1.0),
                                      child: Container(
                                        
                                        height: 98,
                                        width: 10,
                                        decoration: BoxDecoration(color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                       
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [  
                                       
                                        Text("Rian Anderson",style: TextStyle(fontSize: 18, ),),
                                        SizedBox(height: 10,),
                                        Text("+91 98765 43210",style: TextStyle(fontSize: 12,)),
                                         SizedBox(height: 10,),
                                         new GestureDetector(
                            onTap: () { 
                            },
                            child: new Text("View More",style: TextStyle(color: Colors.red,fontSize: 14),),
                          )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:153.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          
                                        color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(10)),
                                        height: 99,
                                        width: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(26.0),
                                          child: Text("H",textAlign: TextAlign.center,style: TextStyle(fontSize: 32),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                           InkWell(
                 onTap: (){

                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 10),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.grey[100],),
                                height: 100,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Row( 
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:1.0),
                                      child: Container(
                                        
                                        height: 98,
                                        width: 10,
                                        decoration: BoxDecoration(color: Colors.grey,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                       
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [  
                                       
                                        Text("Rian Anderson",style: TextStyle(fontSize: 18, ),),
                                        SizedBox(height: 10,),
                                        Text("+91 98765 43210",style: TextStyle(fontSize: 12,)),
                                         SizedBox(height: 10,),
                                         new GestureDetector(
                            onTap: () { 
                            },
                            child: new Text("View More",style: TextStyle(color: Colors.red,fontSize: 14),),
                          )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:153.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          
                                        color: Colors.grey,
                                          borderRadius: BorderRadius.circular(10)),
                                        height: 99,
                                        width: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(26.0),
                                          child: Text("H",textAlign: TextAlign.center,style: TextStyle(fontSize: 32),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
