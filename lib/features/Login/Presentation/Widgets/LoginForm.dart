part of LoginView;

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _usernameController;

  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _usernameController = TextEditingController(text: "mor_2314");
    _passwordController = TextEditingController(text: "83r5^_");
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          66.verticalSpacer,
          const AppTextWidget(
            txtTitle: "Login",
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
          63.verticalSpacer,
          AppTextFormField(
            hintText: "Username",
            controller: _usernameController,
            // validator: (value) => AppValidators.validateEmail(value),
          ),
          8.verticalSpacer,
          AppTextFormField(
            hintText: "Password",
            validator: (value) => AppValidators.validatePassword(value),
            controller: _passwordController,
          ),
          16.verticalSpacer,
          const _ForgotPasswordWidget(),
          37.verticalSpacer,
          AppButtonWidget(
              onPressed: () async {
                if (_formKey.currentState?.validate() ?? false) {
                  await BlocProvider.of<LoginCubit>(context).userLogin(
                      email: _usernameController.text,
                      password: _passwordController.text);
                }
              },
              btnName: "Login"),
          const Spacer(),
          const Center(
            child: AppTextWidget(
              txtTitle: "Or login with social account",
              textAlign: TextAlign.center,
            ),
          ),
          12.verticalSpacer,
          const SocialSignInButtons(),
          23.verticalSpacer
        ],
      ),
    );
  }
}
