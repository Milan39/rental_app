import 'package:flutter/cupertino.dart';
import 'package:ghar_bhada/auth/login/screen/login_screen.dart';
import 'package:ghar_bhada/auth/login/screen/sing_up.dart';
import 'package:ghar_bhada/home/screen/detail_screen.dart';
import 'package:ghar_bhada/home/screen/home_screen.dart';
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
      ),GoRoute(
        name: 'details',
        path: '/details',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const DetailScreen(),
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
