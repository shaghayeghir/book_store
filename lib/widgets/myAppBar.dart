import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

AppBar MyAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 100,
    elevation: 0,

    actions: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.menu,color: ColorManager.black,),


            Container(
                width:MediaQuery.of(context).size.width*0.65,
                height:MediaQuery.of(context).size.height*0.08,
                padding: const EdgeInsets.all(10.0),
                child:TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    //hintText: 'Enter Your Email Here...',
                    suffixIcon: const Icon(Icons.search),
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: ColorManager.surfaceColor,
                    enabledBorder:OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: ColorManager.surfaceColor, width: 2),
                    ),

                  ),)
            ),

            Icon(Icons.document_scanner_sharp,color: ColorManager.darkBlue,),
            Icon(Icons.notifications_active,color: ColorManager.black,),

          ],
        ),
      )
    ],
  );
}