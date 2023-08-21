import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:multi_store_udemy_web_admin/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid
        ? FirebaseOptions(
            apiKey: "AIzaSyB0kmT3NitHTFQqE2wKNyuVkWtaAuaAeSE",
            authDomain: "multi-store-flutter-ea50d.firebaseapp.com",
            projectId: "multi-store-flutter-ea50d",
            storageBucket: "multi-store-flutter-ea50d.appspot.com",
            messagingSenderId: "228825407854",
            appId: "1:228825407854:web:0bf0b6bf795910f705217f",
            measurementId: "G-RREMBXRWJ9")
        : null,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
