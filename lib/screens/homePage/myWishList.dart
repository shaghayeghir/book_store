import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/bookLists.dart';
import '../../resources/color_manager.dart';
import 'myLibrary.dart';

Container myWishList(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi Emily',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height: 15,
        ),
        MyLibrary(context),
        const SizedBox(
          height: 7,
        ),
        Text(
          'My WishList',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.32,
            width: double.infinity,
            child: GridView.builder(
              itemCount: wishList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 4,
                  childAspectRatio: 5,
                  mainAxisExtent:
                  MediaQuery.of(context).size.height * 0.13),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorManager.surfaceColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          wishList[index].imageUrl,
                          fit: BoxFit.cover,
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
                          height: 17,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: RatingBar.builder(
                            itemSize: 10,
                            initialRating: wishList[index].rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
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
  );
}