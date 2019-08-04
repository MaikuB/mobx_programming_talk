import '../models/product.dart';

class CatalogueService {
  Future<List<Product>> getProducts() async {
    return await Future.delayed(Duration(seconds: 1), () {
      return [
        Product(id: 0, name: 'Polo shirt', price: 29.65),
        Product(id: 1, name: 'Mug', price: 15.95),
        Product(id: 2, name: 'Mouse pad', price: 14.50)
      ];
    });
  }
}
