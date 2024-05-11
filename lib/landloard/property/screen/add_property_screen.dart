import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:ghar_bhada/core/material/field_decorations.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/landloard/property/cubit/add_room/add_room_cubit.dart';

class AddPropertyScreen extends StatelessWidget {
  const AddPropertyScreen({super.key});

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
      body: BlocProvider(
        create: (context) => sl<AddRoomCubit>(),
        child: BlocConsumer<AddRoomCubit, AddRoomState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return SafeArea(
              child: FormBuilder(
                key: context.read<AddRoomCubit>().formKey,
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
                  children: [
                    const CustomAppBar(title: "Add Property"),
                    SizedBox(height: 10.h),
                    const AddPropertyFormField(
                      title: 'Price',
                      name: 'price',
                      hintText: "Input property price",
                    ),
                    const AddPropertyFormField(
                      title: 'Description',
                      name: 'description',
                      hintText: "Input property description",
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Property Image",
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          TextSpan(
                            text: " *",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: kPrimaryRed,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 10.r),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.r, horizontal: 15.r),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Showcase your property, choose images to show how it looks like",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            width: 220.w,
                            decoration: BoxDecoration(
                              color: kPrimaryPurple.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            alignment: Alignment.center,
                            child: ListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.r, vertical: 5.r),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              leading: const Icon(
                                Icons.image,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Upload property image",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const AddPropertyFormField(
                      title: 'Location',
                      name: 'location',
                      hintText: "Input property location",
                    ),
                    const AddPropertyFormField(
                      title: 'Phone number',
                      name: 'number',
                      hintText: "Input your phone number",
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AddPropertyFormField extends StatelessWidget {
  final String title;
  final String name;
  final String hintText;

  const AddPropertyFormField({
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
        RichText(
          text: TextSpan(
            text: title,
            style: Theme.of(context).textTheme.bodyLarge,
            children: [
              TextSpan(
                text: " *",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kPrimaryRed,
                    ),
              ),
            ],
          ),
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
        SizedBox(height: 10.h),
      ],
    );
  }
}
