import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marketing_website/widgets/simple_button.dart';

class HeaderSection extends StatelessWidget implements PreferredSizeWidget {
  final void Function(String value) onTap;
  final VoidCallback? loginTap;
  final VoidCallback? signUpTap;
  const HeaderSection({
    super.key,
    required this.onTap,
    required this.loginTap,
    required this.signUpTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      backgroundColor: const Color(0xffF5F7FA),
      flexibleSpace: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 190),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(
              height: 50,
              width: 50,
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            const Gap(130),
            Row(
              children: ['Home', 'About', 'Feature', 'Contact']
                  .map((e) => Padding(
                        padding: EdgeInsets.only(left: context.width * 0.045),
                        child: InkWell(
                          onTap: () => onTap(e),
                          child: Text(e, style: context.textTheme.bodyLarge),
                        ),
                      ))
                  .toList(),
            ),
            const Gap(40),
            Row(
              children: <Widget>[
                SimpleButton(
                  width: 110,
                  height: 48,
                  onPressed: loginTap,
                  text: 'Login',
                  backgroundColor: Colors.transparent,
                  textColor: Colors.black,
                ),
                SimpleButton(width: 115, height: 48, onPressed: signUpTap, text: 'Sign up'),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 78);
}
