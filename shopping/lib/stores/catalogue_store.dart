import 'package:mobx/mobx.dart';
import '../services/catalogue_service.dart';
import '../models/product.dart';

part 'catalogue_store.g.dart';

class CatalogueStore = CatalogueStoreBase with _$CatalogueStore;

abstract class CatalogueStoreBase with Store {
  CatalogueService _catalogueService;
  CatalogueStoreBase(this._catalogueService);

  @observable
  ObservableFuture productsFuture;

  @observable
  List<Product> products;

  @action
  void getProducts() {
    productsFuture = ObservableFuture(_populateProducts());
  }

  @action
  Future _populateProducts() async {
    products = await _catalogueService.getProducts();
  }
}
