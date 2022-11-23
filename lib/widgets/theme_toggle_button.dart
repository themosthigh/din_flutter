import '/util/store.dart';
import '/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    final AppearanceStoreController appearanceStoreController =
        Get.put(AppearanceStoreController());

    return IconButton(
      onPressed: () {
        appearanceStoreController.setForceDarkMode(!Get.isDarkMode);
        Get.changeThemeMode(ThemeMode.light);
        Get.changeTheme(Styles(
          isDarkMode: !Get.isDarkMode,
          swatch: !Get.isDarkMode
              ? appearanceStoreController.darkSwatch.value
              : appearanceStoreController.swatch.value,
        ).themeData);
      },
      icon: Obx(
        () => Icon(
          appearanceStoreController.forceDarkMode.value
              ? Icons.brightness_4_rounded
              : Icons.brightness_5_rounded,
        ),
      ),
    );
  }
}
