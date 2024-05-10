import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:ghar_bhada/core/material/field_decorations.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            const CustomAppBar(title: "Edit Profile"),
            SizedBox(height: 10.h),
            const EditProfileTile(
              title: "Name",
              name: "name",
              hintText: "Landlord",
            ),
            const EditProfileTile(
              title: "Email Address",
              name: "email",
              hintText: "Landlord@gmail.com",
            ),
            const EditProfileTile(
              title: "Location",
              name: "location",
              hintText: "Pokhara Lakeside",
            ),
            const EditProfileTile(
              title: "Phone Number",
              name: "number",
              hintText: "981667310",
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileTile extends StatelessWidget {
  final String title;
  final String name;
  final String hintText;

  const EditProfileTile({
    super.key,
    required this.title,
    required this.name,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 2.h),
        FormBuilderTextField(
          name: name,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: Theme.of(context).textTheme.bodyLarge,
          decoration: textFieldDecoration(
            hintText: hintText,
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
