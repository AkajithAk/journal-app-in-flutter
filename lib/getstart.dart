import 'package:flutter/material.dart';
import 'package:journals/signup.dart';

class GetStart extends StatefulWidget {
  const GetStart({ Key? key }) : super(key: key);

  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
Positioned(
                    
                      child: Image.asset("images/bg1.png",  fit: BoxFit.contain,
                   
                width: double.infinity,),),
                   Positioned(
                    top: 650,
                      child: Image.asset("images/bg2.png",  
                   ),),
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: new BoxConstraints(),
            
                child: Column(
                  children: [
                    
             
               
                    Container(
                      
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top:160.0),
                         
                         
                         child:Image.asset("images/bg3.png")
                         
                       
                      ),
                    ),
                     Container( 
                  
                      child: Padding(
                        padding: const EdgeInsets.only(top: 190),
                        child: Center( 
                          
                          child: Text("Welcome to \n Graceland App",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top:28.0,bottom: 30),
                    child: Container(
                          height: 45,
                          width: 250,
                          child: ElevatedButton(
                onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignUp()));
                },
                child: Text('Get Start!',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white,),),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
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
          ],
        ),
      ),
    );
  }
}