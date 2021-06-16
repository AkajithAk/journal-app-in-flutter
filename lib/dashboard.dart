import 'package:flutter/material.dart';
import 'package:journals/graceland/gracelandAddressBottomNav.dart';
import 'package:journals/kids/kidsBN.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //To Track Scroll of ListView

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];


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
            color: Color(0xffd9ffbf),
          ),
        ],
      ),
      Positioned(
                  top:80,
                    child: Image.asset("images/elip1.png",  
         
       ),),

       
          Positioned(
        
          top: 0,
          left: 330,
            child: Image.asset("images/elip2.png" ,
         ),), 

            

            Positioned(
                  top:50,
                  left: 65,
      child: Text("Hi, John Anderson",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),)
                  
                     ),

       Positioned(
                  top:45,
                  left: 340,
                    child: Image.asset("images/cir.png",  
         
       ),),
        Positioned(
                 top:52,
                  left: 350,
                    child: Image.asset("images/bell.png",  
         
       ),),
        Positioned(
                  top:73,
                  left: 358,
                    child: Image.asset("images/bdot.png",  
         
       ),),

       Positioned(
                  top:90,
                  left: 65,
                   
                     child: Text("Finish your all reminders",style: TextStyle(fontSize: 18,),)
                   ),

       Positioned(
                  top:140,
                  left: 50,
                   child: Container(
             child: Container(
                           height: 50,
             width: 350,color: Colors.white,
             child: TextField(
               
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                     
                ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),
                     
                ),
                prefixIcon: Icon(Icons.search),
              
              hintText: 'Search',
        ),
    ),
           ),
         ),
                  ),

                 Padding(
                   padding: const EdgeInsets.only(top:230.0),
                   child: Column(
        children: [
          //To Show Current Date
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              // child: Text(
              //   selectedDate.day.toString() +
              //         '-' +
              //         listOfMonths[selectedDate.month - 1] +
              //         ', ' +
              //         selectedDate.year.toString(),
              //   style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w800,
              //         color: Colors.indigo[700]),
              // )
              ),
          SizedBox(height: 10),
          //To show Calendar Widget
          Container(
              height: 80,
              child: Container(
                    child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10);
                },
                itemCount: 365,
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentDateSelectedIndex = index;
                          selectedDate =
                              DateTime.now().add(Duration(days: index));
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              // BoxShadow(
                              //     // color: Colors.grey,
                              //     offset: Offset(3, 3),
                              //     blurRadius: 5)
                            ],
                            color: currentDateSelectedIndex == index
                                ? Colors.green
                                : Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text(
                            //   listOfMonths[DateTime.now()
                            //               .add(Duration(days: index))
                            //               .month -
                            //           1]
                            //       .toString(),
                            //   style: TextStyle(
                            //       fontSize: 16,
                            //       color: currentDateSelectedIndex == index
                            //           ? Colors.white
                            //           : Colors.grey),
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                           Text(
                              listOfDays[DateTime.now()
                                          .add(Duration(days: index))
                                          .weekday -
                                      1]
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: currentDateSelectedIndex == index
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            
                             Text(
                              DateTime.now()
                                  .add(Duration(days: index))
                                  .day
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: currentDateSelectedIndex == index
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    );
                },
              ))),
        ],
      ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top:368.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [ 
                       Text("My Journals"),
                       SizedBox(width: 100,),
                                   new GestureDetector(
                            onTap: () { 
                            },
                            child: new Text("View all",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 18),),
                          )
                     ],
                   ),
                 ),


         Padding(
           padding: const EdgeInsets.only(top:410.0,bottom: 190),
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: [

              
               InkWell(
                 onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => GraceLandBN()));
                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent),
                                height: 160,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Column(
                                  children: [
                                    Transform.translate(
                                       offset: Offset(-50,0),
                                      child: Image.asset("images/elips.png")),
                                   
                                    Text("Graceland \n Journals",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 10,),
                                    Text("10 Journals",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ),

                          InkWell(
                 onTap: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => KidsBN()));
                   
                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.yellow[300]),
                                height: 160,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Column(
                                  children: [
                                    Transform.translate(
                                       offset: Offset(-50,0),
                                      child: Image.asset("images/elips.png")),
                                   
                                    Text("Kids \n Journals",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 10,),
                                    Text("5Journals",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ),
                                         InkWell(
                 onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent),
                                height: 160,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Column(
                                  children: [
                                    Transform.translate(
                                       offset: Offset(-50,0),
                                      child: Image.asset("images/elips.png")),
                                   
                                    Text("Graceland \n Journals",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 10,),
                                    Text("10 Journals",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top:590.0,left: 10),
           child: Text("Upcoming Reminders"),
         ),
        //  SizedBox(height: 5,),
         Padding(
           padding: const EdgeInsets.only(top:608.0),
           child: ListView(
             scrollDirection: Axis.vertical,
                children: <Widget>[
                   InkWell(
                 onTap: (){

                 },
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.white70),
                                height: 100,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        color: Colors.green,
                                        ),
                                        height: 60,
                                        width: 60,
                                       child: Padding(
                                         padding: const EdgeInsets.only(top:10.0),
                                         child: Text("H",textAlign: TextAlign.center,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
                                       )
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [  
                                         
                                          Text("Schedule the dose for Month of May",style: TextStyle(fontSize: 14, ),),
                                          SizedBox(height: 10,),
                                          Text("May 01 at 08.00 - 11.00 pm",style: TextStyle(fontSize: 12,))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          InkWell(
                 onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.white70),
                                height: 100,
                                width: 150,
                                // color: Colors.lightGreen,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        color: Colors.yellow,
                                        ),
                                        height: 60,
                                        width: 60,
                                       child: Padding(
                                         padding: const EdgeInsets.only(top:10.0),
                                         child: Text("H",textAlign: TextAlign.center,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
                                       )
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [  
                                         
                                          Text("Draw Sketch for projects",style: TextStyle(fontSize: 14, ),),
                                          SizedBox(height: 10,),
                                          Text("May 01 at 08.00 - 11.00 pm",style: TextStyle(fontSize: 12,))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                ],
            
            ),
         ),
    ],
  ),
      // body: Stack(
      //   children: [
// Positioned(
//                   top:100,
//                     child: Image.asset("images/elip1.png",  
         
//        ),),

       
//           Positioned(
        
//           top: 0,
//           left: 330,
//             child: Image.asset("images/elip2.png" ,
//          ),), 
          
      
                
//           // SingleChildScrollView(
//           //   child: ConstrainedBox(
//           //     constraints: new BoxConstraints(),
          
//           //     child: Padding(
//           //        padding: const EdgeInsets.only(top:0.0),
//           //       child: Column(
//           //         children: <Widget>[
                    
                      
//           //         ],
//           //       ),
//           //     ),
//           //   ),
//           // ),
      //   ],
      // ),
    );
   
  }
}

//  backgroundColor: Color(0xffd9ffbf),
//  body: Container(
//           child: Column(
//             children: [
//                  Container(  
//                    width: 430,
//                    color:  Color(0xffd9ffbf),
//                    child: Column(
//                      children: [
                  
//                      Container(
//              child: Transform.translate(
//              offset: Offset(-180,80),
//              child: Container(
//                child: Image.asset("images/elip1.png",
//            ),
//              )),
//          ),
//                      Container(
//              child: Transform.translate(
//              offset: Offset(190,-170),
//              child: Container(
//                child: Image.asset("images/elip2.png",
//            ),
//              )),
//          ),
//           Row(
//             children: [
//               Container(
//                  child: Transform.translate(
//                  offset: Offset(50,-210),
//                  child: Container(
//                    child: Text("Hi, John Anderson",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),)
//                  )),
//          ),
//          Container(
//              child: Transform.translate(
//              offset: Offset(150,-200),
//              child: Container(
//                child: Image.asset("images/cir.png",
//            ),
//              )),
//          ),
//          Container(
//              child: Transform.translate(
//              offset: Offset(120,-206),
//              child: Container(
//                child: Image.asset("images/bell.png",
//            ),
//              )),
//          ),
//          Container(
//              child: Transform.translate(
//              offset: Offset(107,-192),
//              child: Container(
//                child: Image.asset("images/bdot.png",
//            ),
//              )),
//          ),

//             ],
//           ),
//           Container(
//              child: Transform.translate(
//              offset: Offset(-60,-200),
//              child: Container(
//                child: Text("Finish your all reminders",style: TextStyle(fontSize: 18,),)
//              )),
//          ),
//          Container(
//              child: Transform.translate(
//              offset: Offset(10,-150),
//              child:Container(
//                            height: 50,
//              width: 350,color: Colors.white,
//              child: TextField(
               
//         decoration: new InputDecoration(
//           focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                     
//                 ),
//               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),
                     
//                 ),
//                 prefixIcon: Icon(Icons.search),
              
//               hintText: 'Search',
//         ),
//     ),
//            ),
//              ),
//          ),
         


         
         
//                    ],),
//                  ),
//                  Container(
//                    height: 300,
//                    color: Colors.white,
//                    child: Column(children: [
//                      Text("sdsdsdsdsd")
//                    ],),
//                  ),
                 
//             ],
//           ),
//         ),