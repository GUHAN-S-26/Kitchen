import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/app_theme.dart';
import 'screens/main/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const SmartKitchenApp());
}

class SmartKitchenApp extends StatelessWidget {
  const SmartKitchenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Kitchen',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainScreen(),
    );
  }
}
