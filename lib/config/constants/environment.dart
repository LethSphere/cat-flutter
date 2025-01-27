import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String apiUrl = dotenv.env['CAT_API_KEY'] ?? 'api key unavailable';
}
