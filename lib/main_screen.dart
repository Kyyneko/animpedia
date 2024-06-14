import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimPedia'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Mahen',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image1.png'),
                    radius: 20,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Anime Favorite',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  FavoritePlaceCard(imagePath: 'assets/images/image1.png', title: 'Demon Slayer'),
                  FavoritePlaceCard(imagePath: 'assets/images/image2.png', title: 'Attack On Titan'),
                  FavoritePlaceCard(imagePath: 'assets/images/image3.png', title: 'One Piece'),
                  FavoritePlaceCard(imagePath: 'assets/images/image4.png', title: 'Haikyuu!!'),
                  FavoritePlaceCard(imagePath: 'assets/images/image5.png', title: 'Jujutsu Kaisen'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritePlaceCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const FavoritePlaceCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              imagePath,
              width: 160,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 160,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
