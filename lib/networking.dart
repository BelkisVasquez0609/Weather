import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
  Network({required this.url});

  final String url;

  Future getWeather() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    }
    else {
      print(response.statusCode);
      print('Error');
    }
  }
}