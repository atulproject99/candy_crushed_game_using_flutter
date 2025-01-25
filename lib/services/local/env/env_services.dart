import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvServices {
  /// Initialization
  static Future<void> init() async {
    await dotenv.load(fileName: 'assets/.env');
  }

  static get supabaseUrl => dotenv.env['SUPERBASE_URL'];

  static get supabaseAnonKey => dotenv.env['SUPERBASE_ANON_KEY'];
}
