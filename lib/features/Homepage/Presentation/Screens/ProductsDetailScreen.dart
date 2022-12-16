import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techypanther/core/Widgets/CommonAppBar.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:techypanther/features/Homepage/Presentation/Widgets/ProductDetailBody.dart';

class ProductDetailViewPage extends StatelessWidget {
  const ProductDetailViewPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final HomeScreenBloc _homeScreenBloc = BlocProvider.of<HomeScreenBloc>(context);
    return Scaffold(
      appBar: CommonAppBar(title: _homeScreenBloc.detailViewProduct!.title,),
      body: const ProductDetailBody(),
    );
  }
}