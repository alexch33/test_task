import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:until_pro_exercise/data/network/dio_client.dart';

class DepartmensApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  DepartmensApi(this._dioClient);

  Future<dynamic> fetchDataFromAssets() async {
    var jsonText = await rootBundle.loadString('assets/data/data.json');
    return jsonDecode(jsonText);
  }
}
