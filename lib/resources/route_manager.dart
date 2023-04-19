

import 'package:flutter/material.dart';

kNavigator(context, page) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => page),
  );
}
kNavigatorBack(context) {
  Navigator.of(context).pop();
}



// class Routes {
//   // NavigationBarScreen
//   static const String navigationBar = '/';
//
//   // Authentication
//   //static const String signUp = '/signUp';
//
//   ///seeAll
//   static const String allCategory = '/allCategory';
//
//   ///sign_in
//   static const String signIn = '/signIn';
//   ///sign_up
//   static const String signUp = '/signUp';
//
// }
//
// // z
//
//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//       builder: (_) => Scaffold(
//         appBar: AppBar(
//           title: const Text(AppStringNoRouteFound.noRouteFound),
//         ),
//         body: const Center(
//           child: Text(AppStringNoRouteFound.noRouteFound),
//         ),
//       ),
//     );
//   }
// }
//
// class CustomPageRoute extends PageRouteBuilder {
//   final Widget child;
//   double x;
//   double y;
//
//   CustomPageRoute({
//     required this.x,
//     required this.y,
//     required this.child,
//     required
//   }) : super(
//             transitionDuration: const Duration(milliseconds: 500),
//             reverseTransitionDuration: const Duration(milliseconds: 500),
//             pageBuilder: (context, animation, secondaryAnimation) => child,
//             transitionsBuilder: (context, animation, anotherAnimation, child) {
//               animation =
//                   CurvedAnimation(parent: animation, curve: Curves.linear);
//               return SlideTransition(
//                 position: Tween<Offset>(
//                   begin: Offset(x, y),
//                   end: Offset.zero,
//                 ).animate(animation),
//                 child: child,
//               );
//             });
// }
//
//
