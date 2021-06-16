import 'package:flutter/material.dart';
import 'package:journals/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
             left: 160,
              top: 360,
                child: Image.asset("images/oval.png",  
           ),),
         
        Positioned(
          left: 220,
            top: 360,
              child: Image.asset("images/dot.png",  
           ),),
           Positioned(
          left: 193,
            top: 390,
              child: Image.asset("images/pro.png",  
           ),),
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
                   padding: const EdgeInsets.only(top:448.0,bottom: 30),
                  child: Column(
                    children: <Widget>[
                      
                       
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
        decoration: new InputDecoration(
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
                
                hintText: 'Phone number',
        ),
    ),
             ),
          ),
           Padding(
             padding: const EdgeInsets.only(top:15.0 ),
             child: Container(
               width: 350,
               child: TextField(
                 obscureText: true,
        decoration: new InputDecoration(suffixIcon:  Icon(Icons.remove_red_eye),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                ),
                
                hintText: 'Password',
        ),
    ),
             ),
           ),
        
          Padding(
            padding: const EdgeInsets.only(top:15.0,bottom: 40),
            child: Container(
               width: 350,
               child: TextField(
                 obscureText: true,

        decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                ),
                
                hintText: 'Eonfirm password',
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
                        builder: (BuildContext context) => LoginPage()));
                  },
                  child: Text('Sign Up',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white,),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}






