import 'package:flutter/material.dart';
import 'Auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 1, 248, 75),
        ),
      ),
      home: const MyHomePage(title: 'Whatsapp'),
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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 10,
            children: [
              Image.asset("images/item.png", width: 300),
              Text(
                "Bienvenue sur WhatsApp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Veuillez lire notre Politique de confidentialité. Appuyer sur \"Accepter et continuer\" pour accepter les conditions d'utilistion.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Accepter et continuer",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
