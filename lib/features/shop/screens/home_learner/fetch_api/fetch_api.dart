import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../../models/educators.dart';


class ApiService {
  static const String apiUrl = 'https://skillswap-3pae.onrender.com/list-educators/';

  Future<List<Educator>> fetchEducators() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((educator) => Educator.fromJson(educator)).toList();
    } else {
      throw Exception('Failed to load educators');
    }
  }
}
