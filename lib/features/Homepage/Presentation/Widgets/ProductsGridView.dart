import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:techypanther/features/Homepage/Presentation/Widgets/ProductTile.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    Key? key,
    required HomeScreenBloc bloc,
  }) : _bloc = bloc, super(key: key);

  final HomeScreenBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 45.h),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.w,
            childAspectRatio: 0.5,
            crossAxisSpacing: 24.h),
        itemCount: _bloc.productsList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () =>
                _bloc.add(ShowProductDetailEvent(productIndex: index)),
            child: ProductTile(
              product: _bloc.productsList[index],
            ),
          );
        });
  }
}
