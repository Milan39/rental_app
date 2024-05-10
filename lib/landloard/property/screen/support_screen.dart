import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 25.h,
          width: double.infinity,
          margin: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 15.r),
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: kPrimaryPurple,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
              child: Text(
            'Save Property',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          )),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
          children: [
            const CustomAppBar(title: "Support"),
            SizedBox(height: 10.h),
            Text(
              "Contact Us",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "If you have any queries, feel free to contact us",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            SizedBox(height: 10.h),
            ContactUsTile(
              title: 'Call Us',
              imagePath: "assets/icons/phone.svg",
              onTap: () {
                Uri call = Uri(scheme: "tel", path: "+977 9813300978");
                launchUrl(call);
              },
            ),
            ContactUsTile(
              title: 'Email Us',
              imagePath: "assets/icons/email.svg",
              onTap: () {
                Uri email = Uri(
                    scheme: 'mailto',
                    path: "saazgrg16@gmail.com",
                    query: encodeQueryParameters(
                      {
                        "subject": "Inquires",
                      },
                    ));
                launchUrl(email);
              },
            ),
            ContactUsTile(
              title: 'Chat on Whatsapp',
              imagePath: "assets/icons/chat.svg",
              onTap: () async {
                launchUrl(
                  Uri.parse(
                    "https://wa.me/9813300978",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ContactUsTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function()? onTap;

  const ContactUsTile({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0.r, horizontal: 15.r),
        margin: EdgeInsets.only(top: 10.r),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: kPrimaryPurple.withOpacity(0.6),
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(imagePath),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
