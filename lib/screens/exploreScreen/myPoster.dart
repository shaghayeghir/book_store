import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/bookLists.dart';
import '../../resources/color_manager.dart';

Stack myPoster(BuildContext context) {
  return Stack(children: [
    Container(
      decoration: BoxDecoration(
        color: ColorManager.surfaceColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 18),
      height: MediaQuery.of(context).size.height * 0.21,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          bookList[1].imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    ),
    Positioned(
      bottom: 80,
      left: 40,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.primary,
            // style: BorderStyle
          ),
          color: ColorManager.surfaceColor,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(right: 20),
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.18,
        child: Center(
            child: Text(
              'Explore',
              style: Theme.of(context).textTheme.headlineSmall,
            )),
      ),
    ),
  ]);
}