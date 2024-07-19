import 'package:flutter/material.dart';
import 'package:flutter_task/provider/auth_provider.dart';
import 'package:flutter_task/screens/login.dart';
import 'package:flutter_task/utils/sharedPreferencesServic.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences prefs = SharedPreferencesService.preferences;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService.init();
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),


    ],
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}


