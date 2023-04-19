import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';
import '../../resources/route_manager.dart';
import '../../widgets/myAppBar.dart';
import '../exploreScreen/exploreScreen.dart';
import 'myWishList.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context),
      body: myWishList(context),
      bottomNavigationBar: myBottomNavigationBar(),
    );

  }

  Container myBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorManager.lightGrey,
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.collections_bookmark_outlined),
            label: 'My Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Community',
          ),
        ],
        elevation: 100,
        unselectedItemColor: ColorManager.lightGrey,
        currentIndex: selectedIndex,
        selectedItemColor: ColorManager.primary,
        onTap: _onItemTapped,
      ),
    );
  }

 void _onItemTapped(int index) {
   setState(() {
     selectedIndex = index;
     if(selectedIndex==1){
       kNavigator(context,  ExploreScreen(selectedIndex: selectedIndex,));
     }
    else if(selectedIndex==2){
       kNavigator(context, ExploreScreen(selectedIndex:selectedIndex,));
     }
     print(selectedIndex);
   });
 }
}
