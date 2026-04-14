import 'package:flutter/material.dart';
import 'package:modelhandler/screen/login_screen.dart';
import 'package:modelhandler/screen/product_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://lfxhrewxnzoxxcgqlnhp.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxmeGhyZXd4bnpveHhjZ3FsbmhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE4ODM0MjksImV4cCI6MjA4NzQ1OTQyOX0.YeArkUC16wKMQaNrQoDsjXPV0vuI4uXeBiJuA_rq4AA');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}

