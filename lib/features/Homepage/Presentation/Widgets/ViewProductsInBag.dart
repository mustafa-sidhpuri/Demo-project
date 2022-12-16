import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';
import 'package:techypanther/features/Homepage/Blocs/home_screen_bloc.dart';
import 'package:techypanther/features/Homepage/Data/Model/AllProductsResponseModel.dart';

class ViewProductsInBag extends StatelessWidget {
  const ViewProductsInBag({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: BlocProvider.of<HomeScreenBloc>(context).itemsInBag,
        builder: (context, AsyncSnapshot<List<Product>> snapshot) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return Container(
              color: AppColors.grey,
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              height: 70.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppTextWidget(
                    txtTitle: "Items in bag:",
                    fontWeight: FontWeight.w600,
                    txtColor: AppColors.white,
                  ),
                  5.horizontalSpacer,
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 5.w),
                            child: Image.network(
                              snapshot.data![index].image,
                              fit: BoxFit.contain,
                            ),
                          ),
                      itemCount: snapshot.data!.length),
                  Container(
                    width: 40.w,
                    height: double.infinity,
                    color: AppColors.primary,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.white,
                      size: 30.s,
                    ),
                  )
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        });
  }
}
