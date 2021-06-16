import 'package:flutter/material.dart';
import 'package:journals/dashboard.dart';
import 'package:journals/login.dart';
import 'package:journals/signup.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PageController _pageController=PageController();
  List<Widget> _screens=[Dashboard(),LoginPage(),SignUp()];
  
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
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15.0),
        child: BottomNavigationBar(
          backgroundColor: Color(0xffd9ffbf),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem( 
              icon: Icon(
                Icons.home,
                color: _selectIndex==0 ? Colors.green:Colors.grey,
                ),
            title: Text("",style: 
            TextStyle(color:_selectIndex==0 ? Colors.blue : Colors.grey),
            )),

            BottomNavigationBarItem( 
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.add,color: _selectIndex==1 ? Colors.green :Colors.grey,
                ),
            title: Text("",
            style: TextStyle(backgroundColor:_selectIndex==1 ? Colors.blue : Colors.grey)
            )),

            BottomNavigationBarItem(
              backgroundColor: Colors.black12,
              icon: Icon(
                Icons.settings,
                color: _selectIndex==2 ? Colors.green :Colors.grey,
                ),
            title: Text("",
            style: TextStyle(color:_selectIndex==2 ? Colors.blue : Colors.grey)
            )),
          ],
        ),
      ),
    );
  }
}