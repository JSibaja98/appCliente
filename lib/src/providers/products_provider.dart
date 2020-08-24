import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:proyectorestclient/src/models/product_model.dart';

class ProductsProvider {
  String _url = 'https://localhost:32770/api';

/**************************************************************************************
 * Author: Esalas
 * date: 16/08/2020
 * Description: Method that get movies casting data
 * Name: getPopularMovies
 * Powerd by: getCasting
 * ************************************************************************************/
  Future<List<ProductsModel>> getProducts() async {
    // final url = '$_url/productos.json';
    final url = http.get(new Uri.http("$_url", "/productos"));
    final resp = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(resp.body);

    if (decodedData == null) {
      return [];
    } else {
      decodedData.forEach((id, prod) {
        print(id);
      });
    }

    // print(decodedData);
    // final cast = new ProductsModel.fromJson(decodedData);
    // print(cast);
    return [];
  }
}
