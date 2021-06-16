import 'package:flutter/material.dart';
import 'package:journals/dashboard.dart';
import 'package:journals/graceland/createnewMember.dart';
import 'package:journals/graceland/graceLand.dart';
import 'package:journals/graceland/gracelandfullDetails.dart';
import 'package:journals/kids/kidsSketch.dart';
import 'package:journals/kids/painting.dart';
import 'package:journals/login.dart';
import 'package:journals/signup.dart';

class KidsBN extends StatefulWidget {
  const KidsBN({ Key? key }) : super(key: key);

  @override
  _KidsBNState createState() => _KidsBNState();
}

class _KidsBNState extends State<KidsBN> {
   
  PageController _pageController=PageController();
  List<Widget> _screens=[KideSketch(),LoginPage(),SignUp()];
  
  int _selectIndex=0;

  void _onPageChanged(int index){
    setState(() {
      _selectIndex=index;
    });
  }
  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ExamplePage()));
        
      },
      backgroundColor: Color(0xffC3FF72),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffC3FF72),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem( 
            icon: Icon(
              Icons.home_outlined,
              color: _selectIndex==0 ? Colors.green:Colors.grey,
              ),
          title: Text("",style: 
          TextStyle(color:_selectIndex==0 ? Colors.blue : Colors.grey),
          )),

          // BottomNavigationBarItem( 
          //   backgroundColor: Colors.red,
          //   icon: Icon(
          //     Icons.add,color: _selectIndex==1 ? Colors.green :Colors.grey,
          //     ),
          // title: Text("",
          // style: TextStyle(backgroundColor:_selectIndex==1 ? Colors.blue : Colors.grey)
          // )),

          BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Icon(
              Icons.list,
              color: _selectIndex==2 ? Colors.green :Colors.grey,
              ),
          title: Text("",
          style: TextStyle(color:_selectIndex==2 ? Colors.blue : Colors.grey)
          )),
        ],
      ),
    );
  }
}