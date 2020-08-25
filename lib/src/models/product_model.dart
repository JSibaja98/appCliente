// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
    ProductsModel({
        this.pkProducto,
        this.fkCategoria,
        this.nombreProducto,
        this.descripcionProducto,
        this.imagenProducto,
        this.precioProducto,
    });

    int pkProducto;
    int fkCategoria;
    String nombreProducto;
    String descripcionProducto;
    String imagenProducto;
    double precioProducto;

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        pkProducto: json["pkProducto"],
        fkCategoria: json["fkCategoria"],
        nombreProducto: json["nombreProducto"],
        descripcionProducto: json["descripcionProducto"],
        imagenProducto: json["imagenProducto"],
        precioProducto: json["precioProducto"],
    );

    Map<String, dynamic> toJson() => {
        "pkProducto": pkProducto,
        "fkCategoria": fkCategoria,
        "nombreProducto": nombreProducto,
        "descripcionProducto": descripcionProducto,
        "imagenProducto": imagenProducto,
        "precioProducto": precioProducto,
    };
}
