import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherly/core/service/weather_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Register services or classes
  getIt.registerLazySingleton<WeatherService>(() => WeatherService(dio: Dio()));
 

}
Future<void> login() async {
  final prefs = await SharedPreferences.getInstance();
  // Set the login state
  await prefs.setBool('isLoggedIn', true);
}
Future<bool> checkLoginStatus() async {
  final prefs = await SharedPreferences.getInstance();
  // Check if the user is logged in
  return prefs.getBool('isLoggedIn') ?? false;
}