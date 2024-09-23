import 'package:flutter/material.dart';
import 'package:news_app_with_bloc_clean_architechture/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSL();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
