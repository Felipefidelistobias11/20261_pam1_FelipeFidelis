import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   Widget _buildContactItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.redAccent,
              child: CircleAvatar(
                radius: 56,
                backgroundImage: NetworkImage('https://http2.mlstatic.com/D_Q_NP_725206-MLB104209263352_012026-O.webp'),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Felipe Fidelis Tobias',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              '16 anos - Mongaguá, SP',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),

            const Divider(),
            _buildContactItem(Icons.email, 'felipetec.sp.gov.br'),
            _buildContactItem(Icons.phone, '(41) 66669-8867'),
            _buildContactItem(Icons.web, '@felipefidelis'),
            const Divider(),
            const SizedBox(height: 20),
          ],
        ),
      )
    );
  }
}