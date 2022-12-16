part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}

class FetchProductsEvent extends HomeScreenEvent {}

class ShowProductDetailEvent extends HomeScreenEvent {
  final int productIndex;
  ShowProductDetailEvent({required this.productIndex});
}


