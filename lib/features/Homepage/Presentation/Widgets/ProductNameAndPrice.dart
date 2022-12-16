part of ProductDetailsBody;

class _ProductNameAndPrice extends StatelessWidget {
  const _ProductNameAndPrice({
    Key? key,
    required HomeScreenBloc homeScreenBloc,
  })  : _homeScreenBloc = homeScreenBloc,
        super(key: key);

  final HomeScreenBloc _homeScreenBloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 2,
            child: AppTextWidget(
              maxLine: 2,
              txtTitle: _homeScreenBloc.detailViewProduct!.title,
              fontWeight: FontWeight.w500,
            )),
        const Spacer(),
        AppTextWidget(
            txtTitle: "${_homeScreenBloc.detailViewProduct!.price}\$",
            fontWeight: FontWeight.w500)
      ],
    );
  }
}
