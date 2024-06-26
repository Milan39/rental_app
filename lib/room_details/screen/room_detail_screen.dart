import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/helpers.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/room_details/cubit/booking/booking_cubit.dart';
import 'package:ghar_bhada/room_details/cubit/khalti/khalti_cubit.dart';
import 'package:ghar_bhada/room_details/cubit/room_details/room_details_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class RoomDetailScreen extends StatelessWidget {
  const RoomDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String roomId = GoRouterState.of(context).extra as String;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<BookingCubit>(),
        ),
        BlocProvider(
            create: (context) =>
            sl<RoomDetailsCubit>()..fetchRoomDetails(roomId: roomId)    ),
      ],
      child: BlocConsumer<BookingCubit, BookingState>(
        listener: (context, state) {
          if (state is BookingSuccess) {
            context.pushNamed(
              "payment",
              extra: state.bookingResponse
            );
          } else if (state is BookingFailure) {
            Helpers.showToastMessage(context,
                message: state.message, isError: true);
          }
        },
        builder: (context, bookingState) {
          return BlocBuilder<RoomDetailsCubit, RoomDetailsState>(
            builder: (context, roomDetailState) {
              if (roomDetailState is RoomDetailsLoaded) {
                return Scaffold(
                  bottomNavigationBar: roomDetailState.userType == 'normal_user'? RentNowButton(roomDetailState: roomDetailState) : const MarkSoldButton(),
                  body: SingleChildScrollView(
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.r, horizontal: 15.r),
                            child: const CustomAppBar(title: "Details"),
                          ),
                          SizedBox(height: 5.h),
                          CarouselSlider.builder(
                            itemCount: roomDetailState.roomDetails.roomImage.length,
                            itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) {
                              final roomImages = roomDetailState.roomDetails.roomImage;
                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.network(
                                      roomImages[itemIndex].image,
                                      height: 130.h,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 100.h,
                                    right: 15.w,
                                    child: Container(
                                      height: 20.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                        BorderRadius.circular(20.r),
                                      ),
                                      alignment: Alignment.center,
                                      child: ListTile(
                                        visualDensity: const VisualDensity(
                                            horizontal: 0, vertical: -4),
                                        dense: true,
                                        horizontalTitleGap: 0,
                                        minLeadingWidth: 25.w,
                                        contentPadding: EdgeInsets.only(
                                            right: 0.r, left: 10.r),
                                        leading: const Icon(Icons.image),
                                        title: Text(
                                          "${itemIndex + 1}/${roomDetailState.roomDetails.roomImage.length}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                            options: CarouselOptions(
                              height: 130.h,
                              enlargeCenterPage: true,
                              autoPlay: true,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.r),
                                child: Text(
                                  roomDetailState.roomDetails.city,
                                  style:
                                  Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(left: 15.r, right: 15.r),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Rs. ${roomDetailState.roomDetails.price} \n',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.6,
                                      fontSize: 14.sp,
                                      color: kPrimaryPurple,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "/month",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.6,
                                          fontSize: 14.sp,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            dense: true,
                            horizontalTitleGap: 0,
                            minLeadingWidth: 20.w,
                            contentPadding:
                            EdgeInsets.only(right: 0.r, left: 10.r),
                            title: Text(
                              roomDetailState.roomDetails.streetLocation,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.grey),
                            ),
                            leading: SvgPicture.asset(
                              'assets/icons/location.svg',
                            ),
                          ),
                          ListTile(
                            contentPadding:
                            EdgeInsets.only(right: 0.r, left: 10.r),
                            title: Text(
                              roomDetailState.roomDetails.landLordUser.fullName.toUpperCase(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            subtitle: Text(
                              roomDetailState.roomDetails.landLordUser.phoneNumber,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            leading: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.r, horizontal: 10.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                    color: kPrimaryPurple.withOpacity(0.2)),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/phone.svg',
                                height: 10.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.r),
                            child: Text(
                              "Description",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.r, right: 15.r),
                            child: ReadMoreText(
                              roomDetailState.roomDetails.description,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.sp),
                              postDataText: "This is more text",
                              trimMode: TrimMode.Line,
                              trimLines: 2,
                              colorClickableText: kPrimaryPurple,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: 'Read less',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
              return Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 150.h),
                  child: CupertinoActivityIndicator(
                    color: kPrimaryPurple,
                    radius: 15.r,
                  ),
                ),
              );
            },
          );
        },
      ),
    );

  }
}

class RentNowButton extends StatelessWidget {
  final RoomDetailsLoaded roomDetailState;
  final  dynamic bookingState;
  const RentNowButton({super.key, required this.roomDetailState, this.bookingState});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<BookingCubit>().bookRoom(roomId: roomDetailState.roomDetails.id);
      },
      child: Container(
        height: 25.h,
        width: double.infinity,
        margin: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 25.r),
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: kPrimaryPurple,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: bookingState is BookingLoading
            ? const Center(
          child: CupertinoActivityIndicator(),
        )
            : Center(
          child: Text(
            'Rent Now',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MarkSoldButton extends StatelessWidget {
  const MarkSoldButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
          height: 25.h,
          width: double.infinity,
          margin: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 25.r),
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: kPrimaryPurple,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              'Mark Sold',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          )
      ),
    );
  }
}
