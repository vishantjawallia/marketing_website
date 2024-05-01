part of home_view;

// ignore: must_be_immutable
class _HomeTablet extends StatefulWidget {
  final HomeViewModel viewModel;

  _HomeTablet(this.viewModel);

  @override
  State<_HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<_HomeTablet> {
  var header = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, header ? 60 : 360),
        child: appBar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              color: const Color(0xffF5F7FA),
              child: Column(
                children: <Widget>[
                  const Gap(50),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Welcome to ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 32, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Home',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 32, fontWeight: FontWeight.w700, color: const Color(0xff0051F9)),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Your Hub for Newcomers in Canada. Connect, learn, and thrive in your new community!',
                          style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: const Color(0xff717171)),
                        ),
                        const Gap(26),
                        SimpleButton(width: 160, height: 48, onPressed: () {}, text: 'Download App', fontSize: 14),
                      ],
                    ),
                  ),
                  const Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/img-1.png'),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Column(
                children: [
                  const Gap(40),
                  Container(
                    width: context.width * 0.64,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Explore the Advantages of Joining Home App',
                          style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(10),
                        Text(
                          "Connecting Newcomers to Canada's Vibrant Community and Resources",
                          style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: const Color(0xff717171)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                const Image(
                                  height: 70,
                                  image: AssetImage('assets/images/icon-2.png'),
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
                              ],
                            ),
                          ),
                        ),
                        const Gap(30),
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
                                  image: AssetImage('assets/images/icon-1.png'),
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
                        const Gap(30),
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
                                  'Engagement ',
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
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: context.width * 0.8,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/rafiki.png'),
                      ),
                    ),
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Join the ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Community',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700, color: const Color(0xffF23838)),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Connect with Your New Community. At Home, we understand that the journey of settling into a new country can be both exciting and challenging. Whether you have questions about navigating immigration processes, finding accommodation, or simply want to share your journey, our forum provides a supportive space for open dialogue.',
                          style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: const Color(0xff717171)),
                        ),
                        const Gap(26),
                        SimpleButton(width: 170, height: 48, onPressed: () {}, text: 'Learn More'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 0),
              color: const Color(0xffF5F7FA),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Empowering ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'You',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700, color: const Color(0xffF7BD2D)),
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),
                        Text(
                          'Essential Resources for Newcomers. Access guides, tools, and information to navigate life in Canada confidently.',
                          style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: const Color(0xff18191F)),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  const Align(
                    alignment: Alignment.center,
                    child: Image(
                      height: 200,
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/Counts.png'),
                    ),
                  ),
                  const Gap(30),
                ],
              ),
            ),

            // //section new

            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 40),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: context.width * 0.7,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/two-phone.png'),
                      ),
                    ),
                  ),
                  const Gap(30),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Share your ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Experience',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700, color: const Color(0xffB31D89)),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Text(
                          "At Home, we champion collective action and community strength. Your involvement can make a profound impact on newcomers' lives across Canada. Share your journey, offer guidance, and provide support to those starting anew in Canada. Together, let's make a difference.",
                          style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: const Color(0xff717171)),
                        ),
                        const Gap(26),
                        SimpleButton(width: 170, height: 48, onPressed: () {}, text: 'Learn More'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // const Image(
            //   fit: BoxFit.fill,
            //   image: const AssetImage('assets/images/more-phone.png'),
            // ),

            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 0),
              color: const Color(0xffF5F7FA),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Experience ',
                            style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Home',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700, color: const Color(0xff0D4CCE)),
                              ),
                              // Gap(10),
                              TextSpan(
                                text: '\non the Go',
                                style: context.textTheme.headlineLarge?.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Stay Connected, Anytime, Anywhere. Download the Home App today to \nunlock a world of opportunities for newcomers in Canada.',
                          style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: const Color(0xff717171)),
                        ),
                        const Gap(26),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const SizedBox(
                                height: 65,
                                child: Image(
                                  image: AssetImage('assets/images/image 21.png'),
                                ),
                              ),
                            ),
                            const Gap(10),
                            InkWell(
                              onTap: () {},
                              child: const SizedBox(
                                height: 44,
                                child: Image(
                                  image: AssetImage('assets/images/image 22.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 28.0),
                      child: Image(
                        height: 600,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/phone-logon.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            _footerBox(context),
          ],
        ),
      ),
    );
  }

  Container _footerBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 80),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    const Gap(30),
                    Text(
                      'Copyright © 2024 Home',
                      style: context.textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                    const Gap(14),
                    Text(
                      'All rights reserved',
                      style: context.textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                    const Gap(16),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      height: 40,
                      child: Image(
                        image: AssetImage('assets/images/Social Icons-3.png'),
                      ),
                    ),
                  ),
                  const Gap(2),
                  InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      height: 54,
                      child: Image(
                        image: AssetImage('assets/images/Social Icons-2.png'),
                      ),
                    ),
                  ),
                  const Gap(2),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 54,
                      child: const Image(
                        image: AssetImage('assets/images/Social Icons-1.png'),
                      ),
                    ),
                  ),
                  const Gap(2),
                  InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      height: 54,
                      child: Image(
                        image: AssetImage('assets/images/Social Icons.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: context.textTheme.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
                ),
                const Gap(20),
                Text('About', style: context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
                const Gap(10),
                Text('Benefit', style: context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
                const Gap(10),
                Text('Project', style: context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
              ],
            ),
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Info',
                  style: context.textTheme.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
                ),
                const Gap(20),
                Text('Blog', style: context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
                const Gap(10),
                Text('Contact', style: context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
                const Gap(10),
                Text('Fact', style: context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
              ],
            ),
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stay up to date',
                  style: context.textTheme.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
                ),
                const Gap(20),
                const CustomTextField(
                  hintText: 'Your email Address',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      backgroundColor: header ? const Color(0xffF5F7FA) : Colors.grey.shade200,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          !header ? const SizedBox(height: 10) : const SizedBox(height: 4),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  height: 50,
                  width: 50,
                  child: const Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      header = !header;
                      setState(() {});
                    },
                    icon: const Icon(Icons.menu, size: 28)),
              ],
            ),
          ),
          if (!header)
            Column(
              children: [
                const Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ['Home', 'About', 'Feature', 'Contact']
                      .map((e) => ListTile(
                            onTap: () {},
                            // padding: EdgeInsets.only(left: context.width * 0.045),
                            title: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(e, style: context.textTheme.bodyLarge),
                            ),
                          ))
                      .toList(),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: SimpleButton(height: 48, onPressed: () {}, text: 'Sign up'),
                      ),
                      const Gap(10),
                      Expanded(
                        flex: 6,
                        child: SimpleButton(
                          height: 48,
                          onPressed: () {},
                          text: 'Login',
                          backgroundColor: Colors.grey.shade300,
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
