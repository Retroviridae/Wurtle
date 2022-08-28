import 'package:flutter/material.dart';
import 'components/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wurtle',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.purple,
//           title: const Text('I like Wurtle'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () => {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => AboutScreen(),
//               ),
//             )
//           },
//         ),
//         // Center(
//         //   child: Text(
//         //     'You have clicked $count times',
//         //     style: const TextStyle(
//         //       color: Colors.blue,
//         //     ),
//         //   ),
//         // ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //   items: const [
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.home),
//         //       label: 'home',
//         //     ),
//         //     BottomNavigationBarItem(
//         //       icon: Icon(CupertinoIcons.person),
//         //       label: 'Profile',
//         //     ),
//         //   ],
//         // ),
//         // drawer: const Drawer(
//         //   child: Center(
//         //     child: Text(
//         //       'tbh starting to like flutter ngl',
//         //       style: TextStyle(
//         //         color: Colors.green,
//         //       ),
//         //     ),
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
