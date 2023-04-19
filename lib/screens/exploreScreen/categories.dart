import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../constants/bookCategory.dart';
import '../../constants/bookLists.dart';
import '../../resources/color_manager.dart';
import '../../resources/route_manager.dart';
import '../bookDetail/bookDetail.dart';
import 'myPoster.dart';

Column myCategories(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      myPoster(context),
      const SizedBox(
        height: 45,
      ),
      Container(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          'CATEGORIES',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bookCategories.length,
            itemBuilder: (context, index) {
              return Container(
                  padding: const EdgeInsets.only(left: 20),
                  decoration: const BoxDecoration(),
                  child: Center(
                      child: Text(bookCategories[index],
                          style:
                          TextStyle(color: ColorManager.lightGrey))));
            },
          )),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 7,
            ),
            Container(

                height: MediaQuery.of(context).size.height * 0.41,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: wishList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisExtent:MediaQuery.of(context).size.height * 0.32
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            print(index);
                            kNavigator(context,  BookDetail(index: index,));

                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorManager.surfaceColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                wishList[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              wishList[index].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: ColorManager.middleBlue,
                                  fontFamily: 'tanima'),
                            ),
                            Text(
                              wishList[index].title,
                              style: TextStyle(
                                  color: ColorManager.lightGrey,
                                  fontSize: 12,
                                  fontFamily: 'tanima'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height:
                              MediaQuery.of(context).size.height * 0.05,
                              width:
                              MediaQuery.of(context).size.width * 0.15,
                              child: RatingBar.builder(
                                itemSize: 10,
                                initialRating: wishList[index].rating,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.symmetric(
                                    horizontal: 0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ))
          ],
        ),
      )
    ],
  );
}