import 'package:ecommerce/views/HomepageView.dart';
import 'package:ecommerce/views/productview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'RobotoMono'),
    home: const HomePageView(),
    routes: {
      '/productview': (context) => const ProductView(), // Define the route for ProductView
    },
  ));
}

// class HomePageView extends StatefulWidget {
//   const HomePageView({super.key});

//   @override
//   State<HomePageView> createState() => _HomePageViewState();
// }

// class _HomePageViewState extends State<HomePageView>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Center(child: Text('Ecommerce'))),
//       body: GridView.count(
//         //no of columns
//         crossAxisCount: 3,
//         // Generate 100 widgets that display their index in the List.
//         children: List.generate(100, (index) {
//           return Container(
//             // color: Colors.amber,
//             margin: EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue,
//             ),
//             child: Center(
//               child: Text(
//                 'Item $index',
//                 style: Theme.of(context).textTheme.headlineSmall,
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
