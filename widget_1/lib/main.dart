import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokemons'),
        ),
        body: const PlacesGridView(),
      ),
    );
  }
}

class Place {
  final String title;
  final String subtitle;
  final String imageUrl;

  const Place({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

class PlacesGridView extends StatelessWidget {
  const PlacesGridView({super.key});

  final List<Place> places = const [
    Place(
      title: 'Oshawott',
      subtitle: 'Pokemon de Agua',
      imageUrl: 'https://i.redd.it/nqqzynxy4n871.jpg',
    ),
    Place(
      title: 'Piplup',
      subtitle: 'O pinguim de água',
      imageUrl: 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2023/09/pokemon-piplup-morning-art.jpg',
    ),
    Place(
      title: 'Ash-Greninja',
      subtitle: 'Best form of Greninja',
      imageUrl: 'https://static1.srcdn.com/wordpress/wp-content/uploads/2024/03/pokemon-ash-greninja-form.jpg',
    ),
    Place(
      title: 'Riolu',
      subtitle: 'O pokemon de luta',
      imageUrl: 'https://pbs.twimg.com/media/Ejahu39XgAE70oD.jpg:large',
    ),
    Place(
      title: 'Torchic',
      subtitle: 'blaze',
      imageUrl: 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/09/torchic-pokemon.jpg',
    ),
    Place(
      title: 'Zorua',
      subtitle: 'O pokemon ilusionista',
      imageUrl: 'https://media.tenor.com/PzBJ7vn83HAAAAAe/zorua-cute.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio: 1.7,
      ),
      itemCount: places.length,
      itemBuilder: (context, index) => Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.network(
                places[index].imageUrl,
                height: double.infinity,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        places[index].title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        places[index].subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}