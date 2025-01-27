class CatBreed {
  final String id;
  final String name;
  final String origin;
  final String description;
  final String lifeSpan;
  final String temperament;
  final String? wikipediaUrl;
  final String? referenceImageId;
  final String? imageUrl;

  CatBreed({
    required this.id,
    required this.name,
    required this.origin,
    required this.temperament,
    required this.description,
    required this.lifeSpan,
    this.wikipediaUrl,
    required this.referenceImageId,
    required this.imageUrl,
  });
}
