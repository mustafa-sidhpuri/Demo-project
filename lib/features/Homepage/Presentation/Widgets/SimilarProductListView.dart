part of ProductDetailsBody;

class _SimilarProductsListView extends StatelessWidget {
  const _SimilarProductsListView({
    Key? key,
    required HomeScreenBloc homeScreenBloc,
  })  : _homeScreenBloc = homeScreenBloc,
        super(key: key);

  final HomeScreenBloc _homeScreenBloc;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _homeScreenBloc.similarProducts.length,
        itemBuilder: (context, index) => SizedBox(
              // height: 228.h,
              width: 130.w,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ProductTile(
                    hideCategory: true,
                    imageHeight: 140.h,
                    imageWidth: 130.w,
                    product: _homeScreenBloc.similarProducts[index]),
              ),
            ));
  }
}
