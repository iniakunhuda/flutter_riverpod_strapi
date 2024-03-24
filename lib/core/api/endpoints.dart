import 'package:flutter_dotenv/flutter_dotenv.dart';

class Endpoints {
  static String baseURL =
      dotenv.env['API_BASE_URL'] ?? "http://localhost:1337/api/";
  static String userURL = "contacts";
}
