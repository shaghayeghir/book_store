import 'package:flutter/material.dart';
import '../../constants/bookLists.dart';
import '../../resources/color_manager.dart';

Column MyLibrary(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'My Library',
        style: Theme.of(context).textTheme.displayMedium,
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
          height: MediaQuery.of(context).size.height * 0.31,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bookList.length,
            itemBuilder: (context, index) {
              if (index == bookList.length - 1) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          // style: BorderStyle
                        ),
                        color: ColorManager.surfaceColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(right: 20),
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.34,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add),
                            Text(
                              'Discover More',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'tanima'),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.surfaceColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(right: 20),
                    height: MediaQuery.of(context).size.height * 0.23,
                    width: MediaQuery.of(context).size.width * 0.34,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        bookList[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    bookList[index].title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'tanima'),
                  ),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Slider(
                          value:bookList[index].read,
                          max:100,
                          onChanged: (double value) {},
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text(
                        bookList[index].read.toString().substring(0,2)+'%',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            fontFamily: 'tanima'),
                      ),
                    ],
                  ),
                ],
              );
            },
          ))
    ],
  );
}