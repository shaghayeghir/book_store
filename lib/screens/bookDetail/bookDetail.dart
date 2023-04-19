import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../constants/bookLists.dart';
import '../../resources/color_manager.dart';
import '../../resources/route_manager.dart';
import '../../widgets/myAppBar.dart';
import '../exploreScreen/categories.dart';

class BookDetail extends StatefulWidget {
  BookDetail({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: ColorManager.black,
          ),
          onPressed: () {
            kNavigatorBack(context);
          },
        ),
        actions: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.middleBlue,
                    // style: BorderStyle
                  ),
                  color: ColorManager.darkBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(right: 20),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Center(
                    child: Text(
                  '+ add to wishlist',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorManager.surfaceColor,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 18),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                wishList[widget.index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(Icons.supervised_user_circle_outlined),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          wishList[widget.index].title,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$${wishList[widget.index].price}',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.primary),
                        )
                      ],
                    ),
                    Text(
                      'By ${wishList[widget.index].title}',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: RatingBar.builder(
                        itemSize: 10,
                        initialRating: wishList[widget.index].rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width ,
            child: const MyTabbedPage(),
          )
        ],
      ),
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
    });
  }
}

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key? key}) : super(key: key);

  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  List<Widget> myTabs = [
    const SizedBox(
      width: 70.0,
      child: Tab(text: 'about'),
    ),
    const SizedBox(
      width: 70,
      child: Tab(text: 'review'),
    ),
    const SizedBox(
      width: 70,
      child: Tab(text: 'author'),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Widget tab) {
          final String label = "Test";
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),
    );
  }
}
