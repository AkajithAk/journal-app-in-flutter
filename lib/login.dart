import 'package:flutter/material.dart';
import 'package:journals/category.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
 @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
Positioned(
                    
                      child: Image.asset("images/signup.png",  fit: BoxFit.contain,
           
        width: double.infinity,),),

       
            Positioned(
          
            top: 804,
              child: Image.asset("images/rec1.png",  fit: BoxFit.cover,width: 430,
           ),), Positioned(
           
            top: 812,
              child: Image.asset("images/rec2.png",  fit: BoxFit.cover,width: 430,
           ),),
        
                  
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: new BoxConstraints(),
            
                child: Padding(
                   padding: const EdgeInsets.only(top:388.0,bottom: 30),
                  child: Column(
                    children: <Widget>[
                      
                       
                         Container(
                           height: 50,
             width: 350,
             child: TextField(
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                     
                ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),
                     
                ),
              
              hintText: 'Phone number, email address or username',
        ),
    ),
           ), 
                         
         
           Padding(
             padding: const EdgeInsets.only(top:15.0,bottom: 30 ),
             child: Container( 
               width: 350,
               height:50,
               child: TextField(
                 obscureText: true,
        decoration: new InputDecoration( 
          fillColor: Colors.grey, 
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                     
                ),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                     
                ),
                
                
                hintText: 'Password',
        ),
    ),
             ),
           ),
        
          
        
         
           
             
                  
                      
                    Container(width: MediaQuery.of(context).size.width,alignment: Alignment.center,
                          
                          child: Container(height: 45,
                          width: 350,
                            child: ElevatedButton(
                  onPressed: () {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Category()));
                  },
                  child: Text('Log In',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white,),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
              ),
                          ),
                        ),
                        SizedBox(height: 20,),
                       
                                                  Padding(
                                                     padding: const EdgeInsets.only(left:80.0),
                                                     child: Row(
                            children: [
                              Text("Forgotten your log in details? "),
                        
                                            new GestureDetector(
                          onTap: () { 
                          },
                          child: new Text("Get help",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 18),),
                        )
                            ],
                          ),
                                                   ),

                                                   Row(
    children: [
        Expanded(
            child: Divider(color: Colors.black,)
        ),       

        Text("OR"),        

        Expanded(
            child: Divider(color: Colors.black,)
        ),
    ]
), SizedBox(height: 20,),
                       
                                                  Padding(
                                                     padding: const EdgeInsets.only(left:100.0),
                                                     child: Row(
                            children: [
                              Text("Don't have an account? "),
                        
                                            new GestureDetector(
                          onTap: () { 
                          },
                          child: new Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 18),),
                        )
                            ],
                          ),
                                                   ),
                                                   SizedBox(height: 20,),
                                                   Divider(color: Colors.black,),
                                                   
                                                   Row(
                                                     mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                       Container(
                                                         child: GestureDetector(
                          onTap: () { 
                          },
                          child: new Text("Switch Account",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 18),),
                        ),
                                                       ),
                         SizedBox(width: 60,),
                         Container(height: 70, child: VerticalDivider(color: Colors.black,)),
                         SizedBox(width: 70,),
                         Container(
                           child: GestureDetector(
                            onTap: () { 
                            
                            },
                            child: new Text("Sign In",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 18),),
                        ),
                         ),
                                                    ],
                                                   ),  
                                                   Divider(color: Colors.black,)
                                                   
                        
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






