import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techypanther/core/Widgets/AppFlushBar.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/core/Widgets/LoadingOverlay.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:techypanther/features/Homepage/Presentation/Widgets/ProductsGridView.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenBloc _bloc = BlocProvider.of<HomeScreenBloc>(context);
    return BlocConsumer<HomeScreenBloc, HomeScreenState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state is ProductsLoading) {
          LoadingOverlay.show(context);
          return;
        }
        if (state is ProductsFetchError) {
          showFlushBar(context, message: state.errorMessage, isError: true);
        }
        LoadingOverlay.hide();
      },
      builder: (context, state) {
        if (state is ProductsLoaded) {
          return ProductsGridView(bloc: _bloc);
        }
        if (state is ProductsFetchError) {
          return const Center(
            child: AppTextWidget(
              txtTitle:
                  "Unable to fetch products at the moment, please try again",
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
