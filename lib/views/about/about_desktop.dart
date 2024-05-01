part of about_view;

// ignore: must_be_immutable
class _AboutDesktop extends StatelessWidget {
  final AboutViewModel viewModel;

  const _AboutDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      appBar: const HeaderComponent(),
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
                          const Gap(10),
                          Text(
                            "At Home, we understand the challenges and excitement that come with starting a new life in a different country. That's why we're dedicated to providing newcomers in Canada with the support, resources, and connections they need to thrive.",
                            style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(30),
                  const Expanded(
                    flex: 6,
                    child: Image(
                      height: 400,
                      // fit: BoxFit.fill,
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
                        const Gap(20),
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
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Our Values',
                      style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Gap(80),
                  Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    direction: Axis.horizontal,
                    runSpacing: context.width * 0.015,
                    spacing: context.width * 0.035,
                    children: <Widget>[
                      Material(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                        child: SizedBox(
                          width: context.width * 0.35,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                            child: Row(
                              children: [
                                const Image(
                                  height: 160,
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/house-icon.png'),
                                ),
                                Flexible(
                                  child: Container(
                                    child: ListTile(
                                      titleAlignment: ListTileTitleAlignment.top,
                                      // dense: true,
                                      title: Text(
                                        'Inclusivity',
                                        style: context.textTheme.headlineLarge?.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                                      ),
                                      subtitle: Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'We embrace diversity and strive to create an inclusive environment where everyone feels welcomed, respected, and valued.',
                                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                        child: SizedBox(
                          width: context.width * 0.35,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  child: const Image(
                                    height: 160,
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/strong-icon.png'),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    titleAlignment: ListTileTitleAlignment.top,
                                    // dense: true,
                                    title: Text(
                                      'Empowerment',
                                      style: context.textTheme.headlineLarge?.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'We empower newcomers by providing them with the tools, resources, and connections they need to navigate the challenges of starting a new life in Canada.',
                                        style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                        child: SizedBox(
                          width: context.width * 0.35,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                            child: Row(
                              children: [
                                const Image(
                                  height: 160,
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/person-icon.png'),
                                ),
                                Flexible(
                                  child: Container(
                                    child: ListTile(
                                      titleAlignment: ListTileTitleAlignment.top,
                                      // dense: true,
                                      title: Text(
                                        'Community',
                                        style: context.textTheme.headlineLarge?.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                                      ),
                                      subtitle: Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'We believe in the power of community and the strength that comes from coming together.',
                                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                        child: SizedBox(
                          width: context.width * 0.35,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  child: const Image(
                                    height: 160,
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/stable-icon.png'),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    child: ListTile(
                                      titleAlignment: ListTileTitleAlignment.top,
                                      // dense: true,
                                      title: Text(
                                        'Accessibility',
                                        style: context.textTheme.headlineLarge?.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                                      ),
                                      subtitle: Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'We are committed to making our platform accessible to all, ensuring that everyone, regardless of language, location, or ability, can easily access the support and resources they need.',
                                          style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(80),
                ],
              ),
            ),
            const FooterComponent(),
          ],
        ),
      ),
    );
  }
}
