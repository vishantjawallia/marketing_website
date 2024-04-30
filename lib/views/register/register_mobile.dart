part of 'register_view.dart';

// ignore: must_be_immutable
class _RegisterMobile extends StatelessWidget {
  final RegisterViewModel viewModel;

  const _RegisterMobile(this.viewModel);

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 0.0, height: 40),
                Text(
                  "Register",
                  style: context.textTheme.headlineMedium,
                ),
                CustomTextField(
                  controller: viewModel.name,
                  hintText: 'Name',
                  iconData: Icons.person,
                  keyboardType: TextInputType.name,
                  validator: (e) => viewModel.inputValidator(e, 'name'),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: viewModel.email,
                  hintText: 'Email',
                  iconData: Icons.email,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (e) => viewModel.inputValidator(e, 'email'),
                ),
                const SizedBox(height: 10),
                CustomTextField(
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
                  text: 'Register',
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "You Already Have Account?",
                      style: context.textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: RichText(
                        text: TextSpan(
                          text: "Login Up",
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
