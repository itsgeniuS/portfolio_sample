import 'package:flutter/material.dart';
import 'package:portfolio_sample/const/colors.dart';

import '../const/images.dart';
import '../const/strings.dart';
import '../widgets/tool_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Toolbar(),
              buildWelcomeSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWelcomeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.secondaryColor,
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                AppStrings.helloAll,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              AppStrings.iAm,
              style: TextStyle(
                fontSize: 64,
                fontFamily: 'Eczar',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 230,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.buttonDark,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          AppStrings.viewMyWork,
                          style: TextStyle(
                              color: AppColors.textColorWhite,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          AppImages.iconBoldRight,
                          height: 24,
                          width: 24,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 230,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.buttonDark,
                      width: 2.0, // Outline width
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text(
                      AppStrings.contactMe,
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.buttonDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Image.asset(
          AppImages.avatarBoy,
          height: MediaQuery.of(context).size.height - 100,
        )
      ],
    );
  }
}
