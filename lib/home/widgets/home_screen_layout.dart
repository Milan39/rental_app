import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/field_decorations.dart';
import 'package:ghar_bhada/home/cubit/home_cubit/home_cubit.dart';
import 'package:ghar_bhada/home/cubit/room_detail_cubit/home_room_cubit.dart';
import 'package:ghar_bhada/home/model/home_room_model.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({super.key});

  @override
  State<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab> {
  bool isFiltered = false;

  final List<String> location = [
    'Kathmandu',
    'Pokhara',
    'Lumbini',
    'Bhaktapur',
    'Chitwan',
    'Everest Base Camp',
    'Annapurna Circuit',
    'Nagarkot',
    'Janakpur',
    'Gosaikunda',
    'Mustang',
    'Rara Lake',
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<HomeCubit>()..fetchUserInfo(),
        ),
        BlocProvider(
          create: (context) => sl<HomeRoomCubit>()..fetchRoomDetails(),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            edgeOffset: 50,
            color: kPrimaryRed,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            backgroundColor: kSecondaryBlack,
            onRefresh: () async {
              context.read<HomeRoomCubit>().fetchRoomDetails();
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discover \nyour new apartment.",
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Container(
                          height: 25.h,
                          width: 45.w,
                          padding: EdgeInsets.symmetric(
                              vertical: 5.r, horizontal: 5.r),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: kPrimaryPurple.withOpacity(0.2)),
                            image: DecorationImage(
                              image: NetworkImage(state.avatar),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        const Expanded(
                          child: SearchBar(),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFiltered = !isFiltered;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.r, horizontal: 10.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                  color: kPrimaryPurple.withOpacity(0.2)),
                            ),
                            // alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/filter.svg',
                              height: 10.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    isFiltered
                        ? Container(
                            padding: EdgeInsets.all(10.r),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: kPrimaryPurple.withOpacity(0.5),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Location",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        )),
                                SizedBox(height: 5.h),
                                FormBuilderTextField(
                                  name: 'location',
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  keyboardType: TextInputType.emailAddress,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  cursorColor: kPrimaryPurple,
                                  decoration: textFieldDecoration(
                                    hintText: 'search with location',
                                  ),
                                  validator: FormBuilderValidators.compose(
                                    [
                                      FormBuilderValidators.required(),
                                      FormBuilderValidators.email(),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text("Price",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        )),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 20.h,
                                      child: Center(
                                        child: FormBuilderTextField(
                                          name: 'min',
                                          autovalidateMode:
                                              AutovalidateMode.onUserInteraction,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                          cursorColor: kPrimaryPurple,
                                          decoration: const InputDecoration(
                                              hintText: "   min"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    SizedBox(
                                      width: 60.w,
                                      child: FormBuilderTextField(
                                        name: 'max',
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        keyboardType: TextInputType.emailAddress,
                                        style:
                                            Theme.of(context).textTheme.bodyLarge,
                                        cursorColor: kPrimaryPurple,
                                        decoration: InputDecoration(
                                          hintText: "   max",
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                    SizedBox(height: 10.h),
                    BlocBuilder<HomeRoomCubit, HomeRoomState>(
                      builder: (context, state) {
                        if (state is HomeRoomLoaded) {
                            return Column(
                              children: List.generate(
                                state.rooms.length,
                                    (index) {
                                  return DetailsCard(
                                    rooms: state.rooms[index],
                                  );
                                },
                              ),
                            );
                          } else if (state is SearchNotFound) {
                            return Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 100.h),
                                child: const Text(
                                  'No Apartment Available'
                                )
                              ),
                            );
                          }
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 100.h),
                            child: CupertinoActivityIndicator(
                              color: kPrimaryPurple,
                              radius: 15.r,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final HomeRoomModel rooms;

  const DetailsCard({
    super.key,
    required this.rooms,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          "details",
          extra: rooms.id,
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: const Offset(1, 2),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    rooms.displayImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 15.r),
              child: RoomTitle(room: rooms,),
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              horizontalTitleGap: 0,
              minLeadingWidth: 20.w,
              contentPadding: EdgeInsets.only(right: 0.r, left: 10.r),
              title: Text(
                rooms.city,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey),
              ),
              leading: SvgPicture.asset(
                'assets/icons/location.svg',
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 15.r),
              child: RichText(
                text: TextSpan(
                  text: "Rs. ${rooms.price}",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 14.sp,
                    color: kPrimaryPurple,
                  ),
                  children: [
                    TextSpan(
                      text: "/month",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.6,
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

class RoomTitle extends StatelessWidget {
  final HomeRoomModel room;
  const RoomTitle({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    if (room.isActive == null) {
      return Text(
        room.streetLocation,
        style: Theme.of(context).textTheme.titleMedium,
      );
    } else {
      if (room.isActive == false) {
        return Text(
          "${room.streetLocation} - Rented",
          style: Theme.of(context).textTheme.titleMedium,
        );
      }
      return Text(
        room.streetLocation,
        style: Theme.of(context).textTheme.titleMedium,
      );
    }
  }
}


class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: "search",
      onSubmitted: (value) {
        context.read<HomeRoomCubit>().fetchRoomDetails(query: value);
      },
      autofocus: false,
      style: Theme.of(context).textTheme.bodyLarge,
      cursorColor: kPrimaryRed,
      decoration: InputDecoration(
        hintText: "   Search hotel,location etc",
        suffixIcon: Icon(
          Icons.search,
          color: kPrimaryPurple,
        ),
        hintStyle: GoogleFonts.roboto(
          color: kPrimaryPurple,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 12.r, horizontal: 15.r),
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.r),
            borderSide: BorderSide(color: kPrimaryPurple.withOpacity(0.3))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(color: kPrimaryPurple.withOpacity(0.3)),
        ),
      ),
    );
  }
}
