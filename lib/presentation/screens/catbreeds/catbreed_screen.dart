import 'package:flutter/material.dart';
import 'package:the_cat_api/domain/entities/catbreed.dart';

class CatBreedDetail extends StatelessWidget {
  static const String name = 'CatBreedDetail';
  final CatBreed catBreed;

  const CatBreedDetail({super.key, required this.catBreed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catBreed.name),
      ),
      body: Details(catBreed: catBreed),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.catBreed,
  });

  final CatBreed catBreed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 400,
                maxWidth: double.infinity,
              ),
              child: Image.network(
                'https://cdn2.thecatapi.com/images/${catBreed.referenceImageId}.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 400,
                  color: Colors.grey[300],
                  child: const Center(child: Text('No Image Available')),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Name: ${catBreed.name}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Origin: ${catBreed.origin}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Life Span: ${catBreed.lifeSpan}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Description:',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              catBreed.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
