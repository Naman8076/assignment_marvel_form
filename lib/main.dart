// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'providers/form_provider.dart';
// // import 'screens/home_screen.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider(
// //       create: (_) => FormProvider(),
// //       child: MaterialApp(
// //         title: 'Flutter Web Form',
// //         home: HomeScreen(),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'providers/form_provider.dart';
// import 'screens/home_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => FormProvider(),
//       child: MaterialApp(
//         title: 'Flutter Web Form',
//         home: HomeScreen(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/form_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FormProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Web Form',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
