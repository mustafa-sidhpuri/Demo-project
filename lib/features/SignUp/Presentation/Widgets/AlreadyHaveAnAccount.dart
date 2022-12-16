part of SignUpBody;

class _AlreadyHaveAnAccount extends StatelessWidget {
  const _AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => md.Modular.to.pushNamed(RoutesName.login),
      child: Row(
        children: [
          const Spacer(),
          const AppTextWidget(
            txtTitle: "Already have an account?",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          4.horizontalSpacer,
          const Icon(
            Icons.arrow_right_alt,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
