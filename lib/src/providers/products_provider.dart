import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:proyectorestclient/src/models/product_model.dart';

class ProductsProvider {
/**************************************************************************************
 * Author: Esalas
 * date: 16/08/2020
 * Description: Method that get movies casting data
 * Name: getPopularMovies
 * Powerd by: getCasting
 * ************************************************************************************/
  Future<List<ProductsModel>> getProducts() async {
    // final url = '$_url/productos.json';
    // final url = http.get(new Uri.http("$_url", "/productos"));
    final url = http.get('https://jsonplaceholder.typicode.com/albums/1');
    final resp = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<ProductsModel> products = new List();

    if (decodedData == null) {
      return [];
    } else {
      decodedData.forEach((id, prod) {
        final prodTemp = ProductsModel.fromJson(prod);
        products.add(prodTemp);
      });
    }

    print(products);

    return products;
  }
}
