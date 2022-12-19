part of MyBagViewPage;

class ItemsInBagWidget extends StatelessWidget {
  const ItemsInBagWidget({
    required this.imageUrl,
    required this.itemName,
    required this.price,
    required this.category,
    Key? key,
  }) : super(key: key);
  final String imageUrl;
  final String itemName;
  final String price;
  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: AppColors.grey5)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.all(5.s),
          decoration: const BoxDecoration(
              border: Border(right: BorderSide(color: AppColors.grey5))),
          child: Image.network(
            imageUrl,
            height: 144.h,
            width: 104.w,
          ),
        ),
        10.horizontalSpacer,
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              children: [
                Flexible(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextWidget(
                        txtTitle: itemName,
                        fontSize: 13,
                      ),
                      AppTextWidget(
                        txtTitle: category,
                        fontSize: 13,
                        txtColor: AppColors.grey,
                      ),
                      5.verticalSpacer,
                      AppTextWidget(
                        txtTitle: price,
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                      ),
                    ],
                  ),
                ),
                10.horizontalSpacer,
                const Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.topRight,
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
