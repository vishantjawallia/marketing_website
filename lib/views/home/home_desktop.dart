part of home_view;

// ignore: must_be_immutable
class _HomeDesktop extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 190, right: 230, top: 20, bottom: 20),
              color: const Color(0xffF5F7FA),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Welcome to ',
                              style: context.textTheme.headlineLarge?.copyWith(fontSize: 64, fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Home',
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
                            'Your Hub for Newcomers in Canada. Connect, learn, and thrive in your new community!',
                            style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          ),
                          const Gap(26),
                          SimpleButton(width: 175, height: 48, onPressed: viewModel.signUpHanler, text: 'Download App '),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 8,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/img-1.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 80, left: 190, right: 190),
              child: Column(
                children: [
                  Container(
                    width: context.width * 0.34,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Explore the Advantages of Joining Home App',
                          style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(10),
                        Text(
                          "Connecting Newcomers to Canada's Vibrant Community and Resources",
                          style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const Gap(80),
                  Container(
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      direction: Axis.horizontal,
                      runSpacing: 30,
                      spacing: 30,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Material(
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 350,
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            width: 350,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/Icon-2.png',
                                  height: 70,
                                  fit: BoxFit.fill,
                                ),
                                const Gap(16),
                                Text(
                                  'Community Support',
                                  style: context.textTheme.titleLarge?.copyWith(color: const Color(0xff4D4D4D), fontSize: 28, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                                const Gap(16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                  child: Text(
                                    'Connect with fellow newcomers and locals for advice, support, and a sense of belonging.',
                                    style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Gap(14),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 350,
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            width: 350,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/Icon-1.png',
                                  height: 70,
                                  fit: BoxFit.fill,
                                ),
                                const Gap(16),
                                Text(
                                  'Essential Resources',
                                  style: context.textTheme.titleLarge?.copyWith(color: const Color(0xff4D4D4D), fontSize: 28, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                                const Gap(16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                  child: Text(
                                    'Access guides and tools for navigating life in Canada, covering immigration, housing, employment, healthcare, and cultural integration.',
                                    style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 350,
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            width: 350,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Image(
                                  height: 70,
                                  image: AssetImage('assets/images/Frame 115.png'),
                                ),
                                const Gap(16),
                                Text(
                                  'Engagement',
                                  style: context.textTheme.titleLarge?.copyWith(color: const Color(0xff4D4D4D), fontSize: 28, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                                const Gap(16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                  child: Text(
                                    'Discover local events and activities to learn about Canadian culture, network, and build connections in your new community.',
                                    style: context.textTheme.bodyMedium?.copyWith(color: const Color(0xff717171)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 190).copyWith(top: 200),
              // color: const Color(0xffF5F7FA),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    flex: 4,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/rafiki.png'),
                    ),
                  ),
                  const Gap(140),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Join the ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Community',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700, color: const Color(0xffF23838)),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Connect with Your New Community. At Home, we understand that the journey of settling into a new country can be both exciting and challenging. Whether you have questions about navigating immigration processes, finding accommodation, or simply want to share your journey, our forum provides a supportive space for open dialogue.',
                          style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Gap(26),
                        SimpleButton(width: 170, height: 48, onPressed: viewModel.signUpHanler, text: 'Learn More'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 80),
              color: const Color(0xffF5F7FA),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Empowering ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'You',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700, color: const Color(0xffF7BD2D)),
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),
                        Text(
                          'Essential Resources for Newcomers. Access guides, tools, and information to navigate life in Canada confidently.',
                          style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff18191F)),
                        ),
                      ],
                    ),
                  ),
                  const Gap(100),
                  const Expanded(
                    flex: 6,
                    child: Image(
                      height: 250,
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/Counts.png'),
                    ),
                  )
                ],
              ),
            ),

            //section new

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 190),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    flex: 4,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/two-phone.png'),
                    ),
                  ),
                  const Gap(140),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Share your ',
                              style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\nExperience',
                                  style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700, color: const Color(0xffB31D89)),
                                ),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Text(
                            "At Home, we champion collective action and community strength. Your involvement can make a profound impact on newcomers' lives across Canada. Share your journey, offer guidance, and provide support to those starting anew in Canada. Together, let's make a difference.",
                            style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          ),
                          const Gap(26),
                          SimpleButton(width: 170, height: 48, onPressed: viewModel.signUpHanler, text: 'Learn More'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Image(
              fit: BoxFit.fill,
              image: const AssetImage('assets/images/more-phone.png'),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 0).copyWith(top: 40),
              color: const Color(0xffF5F7FA),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Experience ',
                              style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Home',
                                  style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700, color: const Color(0xff0D4CCE)),
                                ),
                                TextSpan(
                                  text: '\non the Go',
                                  style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Text(
                            'Stay Connected, Anytime, Anywhere. Download the Home App today to \nunlock a world of opportunities for newcomers in Canada.',
                            style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xff717171)),
                          ),
                          const Gap(26),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 80,
                                  child: Image(
                                    image: AssetImage('assets/images/image 21.png'),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 54,
                                  child: const Image(
                                    image: AssetImage('assets/images/image 22.png'),
                                  ),
                                ),
                              )
                              // Material(
                              //   child: Container(
                              //     height: 50,
                              //     decoration: const BoxDecoration(
                              //       image: DecorationImage(
                              //         image: AssetImage('assets/images/image 21.png'),
                              //       ),
                              //     ),
                              //     child: SizedBox(width: 0.0, height: 0.0),
                              //   ),
                              // )
                              // SimpleButton(width: 170, height: 48, onPressed: viewModel.signUpHanler, text: 'Download App '),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 4,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/phone-logon.png'),
                    ),
                  ),
                ],
              ),
            ),

            const FooterComponent(),
          ],
        ),
      ),
      // bottomNavigationBar: FooterSection(),
    );
  }
}
