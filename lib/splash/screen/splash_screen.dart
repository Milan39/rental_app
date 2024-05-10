import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/splash/cubit/splash_cubit.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocProvider(
        create: (context) => sl<SplashCubit>()..loadApp(),
        child: BlocListener<SplashCubit, SplashStatus>(
          listener: (context, state) {
            if (state == SplashStatus.authenticated) {
              context.pushNamed('home');
            } else if (state == SplashStatus.unauthorized) {
              context.pushNamed('login');
            }
          },
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
