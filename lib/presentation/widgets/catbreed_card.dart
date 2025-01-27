import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_cat_api/domain/entities/catbreed.dart';

class CatBreedCard extends StatelessWidget {
  final List<CatBreed> catBreeds;

  const CatBreedCard({super.key, required this.catBreeds});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 600,
        child: Swiper(
          viewportFraction: 0.8,
          scale: 0.9,
          autoplay: true,
          duration: 400,
          itemCount: catBreeds.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final catBreed = catBreeds[index];
            return _Card(catBreed: catBreed);
          },
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final CatBreed catBreed;

  const _Card({required this.catBreed});

  @override
  Widget build(BuildContext context) {
    final textBold = Theme.of(context).textTheme.headlineLarge;
    final text = Theme.of(context).textTheme.titleMedium;
    final decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
              color: Colors.black45, blurRadius: 10, offset: Offset(0, 10))
        ]);
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
        decoration: decoration,
        child: Card(
          child: GestureDetector(
            onTap: () {
              // Navegación a la página de detalles
              context.push(
                '/details/${catBreed.id}',
                extra: catBreed, // Pasar el objeto CatBreed
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 400,
                    maxWidth: 400,
                  ),
                  child: Image.network(
                    'https://cdn2.thecatapi.com/images/${catBreed.referenceImageId}.jpg',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 400,
                      width: 400,
                      color: Colors.grey[300],
                      child: const Center(child: Text('No Image Available')),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  catBreed.name,
                  style: textBold,
                ),
                const SizedBox(height: 8),
                Text(
                  catBreed.origin,
                  style: text,
                ),
                const SizedBox(height: 8),
                Text(
                  catBreed.lifeSpan,
                  style: text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
