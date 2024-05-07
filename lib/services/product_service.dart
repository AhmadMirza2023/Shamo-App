import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toko_sepatu/models/product_model.dart';

class ProductService {
  final String baseUrl = 'http://first_project.test/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var header = {'Content-Type': 'application/json'};

    final response = await http.get(
      Uri.parse(url),
      headers: header,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Failed Get Products');
    }
  }
}
