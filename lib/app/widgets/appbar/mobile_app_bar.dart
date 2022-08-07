import 'package:flutter/material.dart';
import 'package:site/app/core/app_colors.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 50),
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppColors.primary),
          backgroundColor: AppColors.black,
          actions: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 16),
              child: const Text(
                'FS',
                style: TextStyle(
                  letterSpacing: 1.5,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
