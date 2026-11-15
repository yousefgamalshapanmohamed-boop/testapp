import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تطبيقي الأول',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF6C4DFF),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int taps = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF6C4DFF), Color(0xFF2B1B7A)],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.rocket_launch,
                    size: 110, color: Colors.white),
                const SizedBox(height: 24),
                const Text(
                  'أهلاً بك في تطبيقي',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'هذا أول تطبيق أندرويد تم بناؤه أونلاين، ويعمل بدون إنترنت.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'عدد الضغطات: $taps',
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF2B1B7A),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 16),
                  ),
                  onPressed: () => setState(() => taps++),
                  child: const Text('اضغط هنا',
                      style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
