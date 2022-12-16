part of LoginView;

class _ForgotPasswordWidget extends StatelessWidget {
  const _ForgotPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        const AppTextWidget(
          txtTitle: "Forgot your password?",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        4.horizontalSpacer,
        const Icon(
          Icons.arrow_right_alt,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
