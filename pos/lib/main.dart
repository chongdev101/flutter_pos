import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pos/bindings/all_binding.dart';
import 'package:pos/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.dark,
  //   statusBarIconBrightness: Brightness.dark,
  //   systemNavigationBarIconBrightness: Brightness.light,
  //   systemNavigationBarColor: Colors.black,
  // ));

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const App());
  });
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS',
      getPages: AppRouter.route,
      initialRoute: AppRouter.initial,
      initialBinding: AllBinding(),
      defaultTransition: Transition.noTransition,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 18.0, height: 1),
          bodyText2: TextStyle(fontSize: 20.0, height: 1),
          button: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
      ),
    );
  }
}
