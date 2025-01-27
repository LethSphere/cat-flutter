import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_cat_api/domain/entities/catbreed.dart';
import 'package:the_cat_api/presentation/providers/catbreeds/catbreeds_repository_provider.dart';

final getCatBreedsProvider =
    StateNotifierProvider<CatBreedsNotifier, List<CatBreed>>((ref) {
  final fetchCatBreeds = ref.watch(catbreedRepositoryProvider).getCatbreeds;
  return CatBreedsNotifier(fetchCatBreeds: fetchCatBreeds);
});

typedef CatBreedCallback = Future<List<CatBreed>> Function();

class CatBreedsNotifier extends StateNotifier<List<CatBreed>> {
  CatBreedCallback fetchCatBreeds;

  CatBreedsNotifier({
    required this.fetchCatBreeds,
  }) : super([]);

  Future<void> load() async{
    final List<CatBreed> catbreeds = await fetchCatBreeds();
    state = [...state, ...catbreeds];
  }
}
