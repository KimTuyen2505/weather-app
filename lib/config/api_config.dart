class ApiConfig {
  static const String baseUrl = 'https://api.openweathermap.org/data';
  static const String apiKey = String.fromEnvironment('OPENWEATHER_API_KEY');
  static const String currentWeather = '/2.5/weather';
  static const String forecast = '/2.5/forecast';
  static const String oneCall = '/3.0/onecall';
  static String buildUrl(String endpoint, Map<String, dynamic> params) {
    final uri = Uri.parse('$baseUrl$endpoint');
    params['appid'] = apiKey;
    params['units'] = 'metric';
    return uri.replace(queryParameters: params).toString();
  }
}
