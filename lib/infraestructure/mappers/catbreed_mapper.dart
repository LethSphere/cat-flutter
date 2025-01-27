import 'package:the_cat_api/domain/entities/catbreed.dart';
import 'package:the_cat_api/infraestructure/models/catbreed_response.dart';

class CatbreedMapper {
  static CatBreed catBreedToEntity(CatbreedResponse catbreedResponse) =>
      CatBreed(
          id: catbreedResponse.id,
          name: catbreedResponse.name,
          origin: catbreedResponse.origin,
          description: catbreedResponse.description,
          temperament: catbreedResponse.temperament,
          lifeSpan: catbreedResponse.lifeSpan,
          referenceImageId: catbreedResponse.referenceImageId ?? '',
          imageUrl: catbreedResponse.image?.url ?? '',
      );
}
