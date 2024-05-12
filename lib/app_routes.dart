import 'package:flutter/cupertino.dart';
import 'package:ghar_bhada/auth/screen/login_screen.dart';
import 'package:ghar_bhada/auth/screen/sing_up.dart';
import 'package:ghar_bhada/home/screen/home_screen.dart';
import 'package:ghar_bhada/landloard/property/screen/add_property_screen.dart';
import 'package:ghar_bhada/landloard/property/screen/edit_profile_screen.dart';
import 'package:ghar_bhada/landloard/property/screen/support_screen.dart';
import 'package:ghar_bhada/room_details/screen/booking_details_screen.dart';
import 'package:ghar_bhada/room_details/screen/payment_success_screen.dart';
import 'package:ghar_bhada/room_details/screen/room_detail_screen.dart';
import 'package:ghar_bhada/splash/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    navigatorKey: navigationKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        name: 'splash',
        path: '/splash',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const SplashScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'signup',
        path: '/signup',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const SingUpScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'details',
        path: '/details',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const RoomDetailScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'add-property',
        path: '/add-property',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const AddPropertyScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'edit-profile',
        path: '/edit-profile',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const EditProfileScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: 'support',
        path: '/support',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const SupportScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),GoRoute(
        name: 'payment-success',
        path: '/payment-success',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const PaymentSuccessScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),GoRoute(
        name: 'booking-details',
        path: '/booking-details',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const BookingDetailScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
    ],
  );
}
