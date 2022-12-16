part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenState {}

class HomeScreenInitial extends HomeScreenState {}

class ProductsLoading extends HomeScreenState {}

class ProductsLoaded extends HomeScreenState {
  ProductsLoaded();
}

class ProductsFetchError extends HomeScreenState {
  final String errorMessage;
  ProductsFetchError(
      {this.errorMessage = "Error occured while fetching products"});
}
