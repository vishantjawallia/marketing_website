import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text_field.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 80),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
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
                const Gap(26),
                Row(
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
          ),
          Expanded(
            flex: 2,
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
          Expanded(
            flex: 2,
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
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stay up to date',
                  style: context.textTheme.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
                ),
                const Gap(30),
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
}
