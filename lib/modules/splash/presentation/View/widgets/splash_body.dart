import 'package:animate_do/animate_do.dart';
import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/auth/login_view/login_view.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToHomeScreen();
  }

  Future<void> navigateToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.splashScreenBackGroundImg,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FadeInUp(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsData.splashScreenImg,
                  fit: BoxFit.contain,
                  width: 180,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "HOPE CURE ONCOLOGY CENTER",
                  textAlign: TextAlign.center,
                  style: AppStyles.styleBold14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
