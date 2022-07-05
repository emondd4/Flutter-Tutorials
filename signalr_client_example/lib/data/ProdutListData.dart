import 'package:flutter/cupertino.dart';
import 'package:signalr_client_example/model/ProductListModel.dart';

class ProductListData{

  ValueNotifier<List<ProductListBaseModel?>> fetchedProductList;

  ProductListData(this.fetchedProductList);

  ValueNotifier<List<ProductListBaseModel?>> get fetchedCompanyDataValue{
    return fetchedProductList;
  }

  set fetchedCompanyDataValue(ValueNotifier<List<ProductListBaseModel?>> valueFetchedProductData) {
    fetchedProductList = valueFetchedProductData;
  }

}