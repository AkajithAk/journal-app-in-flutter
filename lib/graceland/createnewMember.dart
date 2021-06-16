import 'package:flutter/material.dart';
import 'package:journals/graceland/gracelandAddressBottomNav.dart';

class CreateGraceMember extends StatefulWidget {
  const CreateGraceMember({ Key? key }) : super(key: key);

  @override
  _CreateGraceMemberState createState() => _CreateGraceMemberState();
}

class _CreateGraceMemberState extends State<CreateGraceMember> {
  
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
                  top:90,
                  left: 210,
      child:  Text("Create New Member",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)     
                     ),
                     
                      Positioned(
                  top:90,
                  left: 30,
      child:   Image.asset("images/back.png",color: Colors.black)
             ),

                    
                      Positioned(
                  top:165,
                  left: 170,
      child:   Image.asset("images/camrect.png")
             ),
              Positioned(
                  top:190,
                  left: 193,
      child:   Image.asset("images/camara.png")
             ),
              Positioned(
                  top:197,
                  left: 201,
      child:   Image.asset("images/camdot.png")
             ),
                   
                     
 

                  

               SingleChildScrollView(
                 child: Padding(
                   padding: const EdgeInsets.only(top:238.0),
                   child: Column(
                     children: [
                       Container(
                            width: 350,
                            child: TextField(
                       decoration: new InputDecoration(
                             focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                             ),
                             
                             hintText: 'Name',
                       ),
                   ),
                          ), 
                             Padding(
                               padding: const EdgeInsets.only(top:15.0 ),
                               child: Container(
                            width: 350,
                            child: TextField(
                       decoration: new InputDecoration(suffixIcon:  Icon(Icons.add),
                             focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                             ),
                             
                             hintText: 'Phone',
                       ),
                   ),
                          ),
                             ),
                         Padding(
                           padding: const EdgeInsets.only(top:15.0 ),
                           child: Container(
                   width: 350,
                   child: TextField(
                       decoration: new InputDecoration(suffixIcon:  Icon(Icons.add),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                    ),
                    
                    hintText: 'Email',
                       ),
                   ),
                            ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0 ),
                            child: Container(
                   width: 350,
                   child: TextField( 
                       decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                    ),
                    
                    hintText: 'Address',
                       ),
                   ),
                            ),
                          ),
                         
                         SizedBox(height: 10,),
                         Container(
                         height: 200,
             width: 350,
             child: TextField(
               maxLines: 30,
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),
                     
                ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5),),
                     
                ),
              
              hintText: 'Persional Details',
        ),
    ),
           ),
                       
                        
                          
                            
                      
                          SizedBox(height: 30,),
                        Container(width: MediaQuery.of(context).size.width,alignment: Alignment.center,
                              
                              child: Container(height: 45,
                              width: 350,
                                child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //     builder: (BuildContext context) => LoginPage()));
                      },
                      child: Text('Create Address',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.black,),),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffC3FF72),
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                             ),
                              ),
                            )
                     ],
                   ),
                 ),
               )

  
    ],
  ),
      
    );
   
  }
}
