import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:proyectorestclient/src/models/product_model.dart';

class ProductsProvider {
  String _url = 'https://localhost:32770/api/';

/**************************************************************************************
 * Author: Esalas
 * date: 16/08/2020
 * Description: Method that get movies casting data
 * Name: getPopularMovies
 * Powerd by: getCasting
 * ************************************************************************************/
  Future<List<ProductsModel>> getProducts() async {
    // final url = Uri.https(_url, 'productos');
    // final resp = await http.get(url);
    // final decodedData = json.decode(resp.body);

    // print(decodedData);
    // final cast = new Product.fromJsonList(decodedData);
    // print(cast);
    // return decodedData;
    final Dio dio = new Dio();

    try {
      var response = await dio.get('$_url/productos');
      print(response.statusCode);
      print(response.data);
    } catch (e) {
      print(e.toString());
    }
  }
}
