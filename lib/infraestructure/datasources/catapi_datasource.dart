import 'package:dio/dio.dart';
import 'package:the_cat_api/config/constants/environment.dart';
import 'package:the_cat_api/domain/datasources/catbreed_datasource.dart';
import 'package:the_cat_api/domain/entities/catbreed.dart';
import 'package:the_cat_api/infraestructure/mappers/breeddetail_mapper.dart';
import 'package:the_cat_api/infraestructure/mappers/catbreed_mapper.dart';
import 'package:the_cat_api/infraestructure/models/breeddetails_response.dart';
import 'package:the_cat_api/infraestructure/models/catbreed_response.dart';

class CatApiDatasource extends CatbreedDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.thecatapi.com/v1', queryParameters: {
    'api_key': Environment.apiUrl,
    'language': 'es',
  }));
  @override
  Future<List<CatBreed>> getCatbreeds() async {
    final response = await dio.get('/breeds');

    if (response.data is List) {
      final List<CatBreed> result = (response.data as List).map((catBreedData) {
        final catBreedResponse = CatbreedResponse.fromJson(catBreedData
            as Map<String, dynamic>); // Convierte a CatbreedResponse
        return CatbreedMapper.catBreedToEntity(
            catBreedResponse); // Mapea a CatBreed
      }).toList();

      return result;
    } else {
      throw Exception('Unexpected response format');
    }
  }

  @override
  Future<CatBreed> getCatbreedById(String id) async {
    final response = await dio.get('/breeds/$id');
    if (response.statusCode != 200) throw Exception('id: $id not found');

    final breedResponse =  BreedDetailResponse.fromJson(response.data); 
    final CatBreed breed =BareedDetailMapper.catBreedToEntity(breedResponse);

    return breed;
  }
}
