/**************************************************************************************
 * Author: Esalas
 * date: 23/08/2020
 * Description: Creation of product model
 * Name: ProductsModel
 * Powerd by: getCasting
 * ************************************************************************************/
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
  int precioProducto;

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
