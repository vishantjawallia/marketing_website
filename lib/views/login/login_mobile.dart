part of 'login_view.dart';

// ignore: must_be_immutable
class _LoginMobile extends StatelessWidget {
  final LoginViewModel viewModel;

  const _LoginMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: viewModel.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: context.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 0.0, height: 40),
                Text(
                  "Login",
                  style: context.textTheme.headlineMedium,
                ),
                CustomTextField(
                  mainPadding: const EdgeInsets.only(top: 10, bottom: 0, right: 16, left: 16),
                  controller: viewModel.email,
                  hintText: 'Email',
                  iconData: Icons.email,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (e) => viewModel.inputValidator(e, 'email'),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  mainPadding: const EdgeInsets.only(top: 10, bottom: 0, right: 16, left: 16),
                  obscureText: true,
                  controller: viewModel.password,
                  hintText: 'Password',
                  iconData: Icons.lock_rounded,
                  keyboardType: TextInputType.emailAddress,
                  validator: (e) => viewModel.inputValidator(e, 'password'),
                ),
                const SizedBox(height: 50),
                SimpleButton(
                  isLoading: viewModel.isBusy,
                  onPressed: viewModel.loginHandler,
                  text: 'Login',
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "You Don't Have Account ?",
                      style: context.textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: viewModel.signUpHanlder,
                      child: RichText(
                        text: TextSpan(
                          text: "Sign Up",
                          style: context.textTheme.bodyLarge?.copyWith(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
