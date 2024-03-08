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
            },
          ),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                ),
              ),
            ),

            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout)
            )
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

