import 'package:book_store/screens/homePage/homePage.dart';
import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';
import '../../resources/route_manager.dart';
import '../../widgets/myAppBar.dart';
import 'categories.dart';

class ExploreScreen extends StatefulWidget {
   ExploreScreen({Key? key,required this.selectedIndex}) : super(key: key);
  int selectedIndex ;
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context),
      body: myCategories(context),
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
        currentIndex: widget.selectedIndex,
        selectedItemColor: ColorManager.primary,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      if(widget.selectedIndex==0){
        kNavigator(context, MyHomePage());
      }
    });
  }
}
