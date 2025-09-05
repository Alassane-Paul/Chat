import 'package:chat/Screen/home.dart';
import 'package:flutter/material.dart';

class OtpcodePage extends StatefulWidget {
  const OtpcodePage({super.key});

  @override
  State<OtpcodePage> createState() => _OtpcodePageState();
}

class _OtpcodePageState extends State<OtpcodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Connexion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter le code OTP envoyer à votre email"),
            Container(
              width: 350,
              padding: EdgeInsetsGeometry.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "OTP",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  //
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  "Suivant",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
