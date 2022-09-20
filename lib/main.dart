import 'package:din/screens/app.dart';
import 'package:din/screens/more/appearance.dart';
import 'package:din/util/store.dart';
import 'package:din/util/theme.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const DinFlutterApp());

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Colors.black));
}

class DinFlutterApp extends StatelessWidget {
  const DinFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppearanceStoreController appearanceStoreController =
        Get.put(AppearanceStoreController());

    return GetMaterialApp(
      title: "Din",
      debugShowCheckedModeBanner: false,
      home: const App(),
      theme: Styles(swatch: appearanceStoreController.swatch.value).themeData,
      darkTheme: Styles(
              isDarkMode: true,
              swatch: appearanceStoreController.darkSwatch.value)
          .themeData,
      themeMode: ThemeMode.system,
    );
  }
}
