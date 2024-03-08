import 'package:flutter/material.dart';
import './cont.dart';

void main() {
  runApp(const MyApp());
}
// class
// class _mainPage extends State<MainPage>{
//
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('assets/images/logo.png'),
            onPressed: () {
              // Add onPressed functionality here
            },
          ),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Container(
              width: 200, // Adjust the width according to your preference
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                ),
              ),
            ),

            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout))
          ],
        ),

        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  SizedBox(height: 8),
                  Text('Nama : Muhammad Rainaldy Dharmawan', style: TextStyle(fontSize: 16),),
                  Text('NIM 123210087', style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
            const CustomImageContainer(
              imagePath: 'assets/images/tokyo.jpg',
              title: 'Tokyo',
              subtitle: 'Location 1',
            ),
            const CustomImageContainer(
              imagePath: 'assets/images/kyoto.jpg',
              title: 'Kyoto',
              subtitle: 'Location 2',
            ),
            const CustomImageContainer(
              imagePath: 'assets/images/osaka.jpg',
              title: 'Osaka',
              subtitle: 'Location 3',
            ),
          ],
        ),
      ),
    );
  }
}


// Widget _coverImage() => Stack(
//   children: [
//     Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//       ),
//       child: Image.asset(
//         'assets/images/fuji.jpg',
//         width: double.infinity,
//         height: 240,
//         fit: BoxFit.fill,
//       ),
//     ),
//     _profilePicture(),
//   ],
// );
//
// Widget _profilePicture() => Positioned(
//   top: 100,
//   left: 145,
//   child: GestureDetector(
//     onTap: () {
//       // Handle button tap
//     },
//     child: CircleAvatar(
//       radius: 45,
//       backgroundImage: AssetImage('assets/images/logo.png'),
//     ),
//   ),
// );


