part of contact_view;

// ignore: must_be_immutable
class _ContactDesktop extends StatelessWidget {
  final ContactViewModel viewModel;

  _ContactDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderComponent(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 600,
              padding: EdgeInsets.symmetric(horizontal: 190, vertical: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: context.width * 0.36,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Contact Us',
                              style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w900, color: Colors.white),
                            ),
                            Text(
                              'Any question or remarks? \nJust write us a message!',
                              style: context.textTheme.bodyLarge?.copyWith(fontSize: 16, color: Colors.white),
                            ),
                            const Gap(30),
                            Column(
                              children: <Widget>[
                                ListTile(
                                  leading: const Icon(Icons.phone, color: Colors.white),
                                  title: Text(
                                    '+1012 3456 789',
                                    style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: Colors.white),
                                  ),
                                ),
                                const Gap(10),
                                ListTile(
                                  leading: const Icon(Icons.email, color: Colors.white),
                                  title: Text(
                                    'demo@gmail.com',
                                    style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: Colors.white),
                                  ),
                                ),
                                const Gap(10),
                                ListTile(
                                  leading: const Icon(Icons.location_on_sharp, color: Colors.white),
                                  title: Text(
                                    '132 Dartmouth Street Boston, Massachusetts 02156 United States',
                                    style: context.textTheme.bodyLarge?.copyWith(fontSize: 14, color: Colors.white),
                                  ),
                                ),
                                const Gap(10),
                              ],
                            ),
                            // const Gap(150),
                          ],
                        ),
                      ),
                    ),
                    const Gap(40),
                    Flexible(
                      flex: 8,
                      child: Container(
                        height: context.width * 0.36,
                        padding: EdgeInsets.symmetric(vertical: 30),
                        alignment: Alignment.topCenter,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                alignment: WrapAlignment.start,
                                direction: Axis.horizontal,
                                runSpacing: 40,
                                spacing: 100,
                                children: <Widget>[
                                  SizedBox(
                                    width: context.width * 0.21,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'First Name',
                                        labelStyle: context.textTheme.bodyLarge,
                                        border: InputBorder.none,
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.grey),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: context.width * 0.21,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Last Name',
                                        labelStyle: context.textTheme.bodyLarge,
                                        border: InputBorder.none,
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.grey),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: context.width * 0.21,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        labelStyle: context.textTheme.bodyLarge,
                                        border: InputBorder.none,
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.grey),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.21,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Phone Nubmber ',
                                        labelStyle: context.textTheme.bodyLarge,
                                        border: InputBorder.none,
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.grey),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1, color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Gap(30),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Select Subject?',
                                        style: context.textTheme.bodyLarge?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Gap(20),
                                      Container(
                                        child: Wrap(
                                          alignment: WrapAlignment.start,
                                          // runAlignment: WrapAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          runSpacing: 10,
                                          spacing: 10,
                                          children: [1, 2, 3, 4]
                                              .map((e) => Container(
                                                    width: 140,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.circle,
                                                          color: Colors.grey.shade200,
                                                        ),
                                                        Gap(4),
                                                        Text(
                                                          'General Inquiry',
                                                          style: context.textTheme.bodySmall,
                                                        )
                                                      ],
                                                    ),
                                                  ))
                                              .toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(20),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                // width: context.width * 0.45695,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Message',
                                    labelStyle: context.textTheme.bodyLarge,
                                    border: InputBorder.none,
                                    hintText: 'Write your message..',
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.grey),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(30),
                              Align(
                                heightFactor: 2.2,
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.only(right: 20),
                                  child: SimpleButton(
                                    onPressed: () {},
                                    text: 'Send Message',
                                    width: 200,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
