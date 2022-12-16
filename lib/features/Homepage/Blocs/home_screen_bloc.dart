import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/subjects.dart';
import 'package:techypanther/core/Router/RouteName.dart';
import 'package:techypanther/features/Homepage/Data/HomeScreenRepository.dart';
import 'package:techypanther/features/Homepage/Data/Model/AllProductsResponseModel.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final HomeScreenRespository _respository =
      Modular.get<HomeScreenRespository>();

  Product? detailViewProduct;
  List<Product> productsList = [];
  List<Product> similarProducts = [];

  BehaviorSubject<List<Product>> _addedToBag = BehaviorSubject.seeded([]);

  HomeScreenBloc() : super(HomeScreenInitial()) {
    on<FetchProductsEvent>((event, emit) async {
      emit(ProductsLoading());
      final result = await _respository.fetchAllProducts();
      result.fold((err) => emit(ProductsFetchError(errorMessage: err.message)),
          (response) {
        productsList = response;
        emit(ProductsLoaded());
      });
    });

    on<ShowProductDetailEvent>((event, emit) {
      detailViewProduct = productsList.elementAt(event.productIndex);
      similarProducts = productsList
          .where((element) => element.category == detailViewProduct!.category)
          .toList();
      Modular.to.pushNamed(RoutingPaths.productDetail);
    });
  }

  void addItemToBag(Product item) {
    List<Product> temp = _addedToBag.value;
    temp.add(item);
    _addedToBag.add(temp);
    log(_addedToBag.value.map((e) => e.title).toString(), name: "Items in bag");
  }

  Stream<List<Product>> get itemsInBag => _addedToBag.stream;
}
