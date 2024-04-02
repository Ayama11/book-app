import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> silidingAnimation;

  @override
  void initState() {
    super.initState();

    initSilidingAnimation();

    getToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        AnimatedBuilder(
            animation: silidingAnimation,
            builder: (BuildContext context, _) {
              return SlideTransition(
                position: silidingAnimation,
                child: const Text(
                  'Read Free Book',
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }

  void initSilidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    silidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void getToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.leftToRight,
      //     duration: kTransitionDuration,
       //   );
    });
  }
}
