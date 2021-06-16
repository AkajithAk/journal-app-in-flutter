import 'dart:async';

import 'package:flutter/material.dart';
import 'package:journals/bottomnavigation.dart';
import 'package:journals/dashboard.dart';

class Category extends StatefulWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
     bool value1=false;
     bool value2=false;
     bool value3=false;
     bool value4=false;
     bool value5=false;
     bool value6=false;
     bool value7=false;
     bool value8=false;
     bool value9=false;
     bool value10=false;
     bool value11=false;
     bool value12=false;
     bool value13=false;
     bool value14=false;
     bool value15=false; 

     @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>  BottomNavigation())));
   
  }


 @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [ 

         Container(
             child: Transform.translate(
             offset: Offset(0,800),
             child: Container(
               child: Image.asset("images/rec1.png",  fit: BoxFit.cover,width: 480,
           ),
             )),
         ),
          Container(
             child: Transform.translate(
             offset: Offset(0,812),
             child: Container(
               child: Image.asset("images/rec2.png",  fit: BoxFit.cover,width: 480,
           ),
             )),
         ),
           
                  
            Container(
              child: ConstrainedBox(
                constraints: new BoxConstraints(),
              
                child: Padding(
                   padding: const EdgeInsets.only(top:38.0,),
                  child: Column(
                    children: <Widget>[
                    
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Welcome!!!                              ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 32,color: Colors.green),),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,left: 10),
                          child: Text("Pick What you like to get Personalised ideas",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                        ),
                        
                        SizedBox(height: 10,),
                        Expanded(child: GridView.count(crossAxisCount:3,
                        
                        padding: EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: [
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/a.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value1,onChanged: (value){
                                    setState(() {
                                     this.value1=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/b.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value2,onChanged: (value){
                                    setState(() {
                                     this.value2=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/c.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value3,onChanged: (value){
                                    setState(() {
                                     this.value3=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/d.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value4,onChanged: (value){
                                    setState(() {
                                     this.value4=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/e.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value5,onChanged: (value){
                                    setState(() {
                                     this.value5=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/f.png"),fit: BoxFit.cover)),
                            child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value6,onChanged: (value){
                                    setState(() {
                                     this.value6=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/g.png"),fit: BoxFit.cover)),
                            child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value7,onChanged: (value){
                                    setState(() {
                                     this.value7=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/h.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value8,onChanged: (value){
                                    setState(() {
                                     this.value8=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/i.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value9,onChanged: (value){
                                    setState(() {
                                     this.value9=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/j.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value10,onChanged: (value){
                                    setState(() {
                                     this.value10=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/k.png"),fit: BoxFit.cover)),
                            child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value11,onChanged: (value){
                                    setState(() {
                                     this.value11=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/l.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value12,onChanged: (value){
                                    setState(() {
                                     this.value12=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/m.png"),fit: BoxFit.cover)),
                            child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value13,onChanged: (value){
                                    setState(() {
                                     this.value13=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/n.png"),fit: BoxFit.cover)),
                           child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value14,onChanged: (value){
                                    setState(() {
                                     this.value14=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/o.png"),fit: BoxFit.cover)),
                              child: Transform.translate(
                                offset: Offset(38,-40),
                                child: Container(
                                  child: Checkbox(
                                    checkColor: Colors.green, 
                                    activeColor: Colors.white,
                                    value: value15,onChanged: (value){
                                    setState(() {
                                     this.value15=value!;
                                     print(value);
                                  });},)
                                )),
                            ),
                          ),
                        ],
                        ))                         
                        
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






