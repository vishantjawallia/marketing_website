part of about_view;

// ignore: must_be_immutable
class _AboutDesktop extends StatelessWidget {
  final AboutViewModel viewModel;

  const _AboutDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderSection(onTap: viewModel.onPageChange, loginTap: viewModel.loginTap, signUpTap: viewModel.signUpTap),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 190, right: 230, top: 60, bottom: 60),
              color: const Color(0xffF5F7FA),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'About ',
                              style: context.textTheme.headlineLarge?.copyWith(fontSize: 64, fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Us',
                                  style: context.textTheme.headlineLarge?.copyWith(fontSize: 64, fontWeight: FontWeight.w700, color: const Color(0xff0051F9)),
                                ),
                              ],
                            ),
                          ),
                          // Text(
                          //   'Welcome to Home',
                          //   style: context.textTheme.headlineLarge?.copyWith(fontSize: 64, fontWeight: FontWeight.w700),
                          // ),
                          const Gap(10),
                          Text(
                            "At Home, we understand the challenges and excitement that come with starting a new life in a different country. That's why we're dedicated to providing newcomers in Canada with the support, resources, and connections they need to thrive.",
                            style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(300),
                  const Expanded(
                    flex: 6,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/about-us.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 190, right: 230, top: 60, bottom: 60),
              color: const Color(0xffF5F7FA),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: RichText(
                      text: TextSpan(
                        text: 'Our Story',
                        style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  // Gap(10),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Home was founded with a mission to empower newcomers and foster a sense of belonging in their new communities. We recognize that the journey of immigration is filled with unique experiences and obstacles, which is why we're committed to creating a platform where newcomers can find support, guidance, and friendship.",
                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                        ),
                        Gap(20),
                        Text(
                          "Our vision is to build a vibrant and inclusive community where newcomers feel welcomed, supported, and empowered to pursue their dreams. We believe in the power of connection and collaboration, and we're passionate about creating opportunities for newcomers to network, learn, and grow.",
                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 190, right: 230, top: 60, bottom: 60),
              color: const Color(0xffF5F7FA),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Our Values',
                    style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                  ),

                  // Gap(10),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Home was founded with a mission to empower newcomers and foster a sense of belonging in their new communities. We recognize that the journey of immigration is filled with unique experiences and obstacles, which is why we're committed to creating a platform where newcomers can find support, guidance, and friendship.",
                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                        ),
                        Gap(20),
                        Text(
                          "Our vision is to build a vibrant and inclusive community where newcomers feel welcomed, supported, and empowered to pursue their dreams. We believe in the power of connection and collaboration, and we're passionate about creating opportunities for newcomers to network, learn, and grow.",
                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
