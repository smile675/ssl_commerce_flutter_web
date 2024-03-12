import 'package:flutter/material.dart';
import 'package:ssl_commerce_flutter_web/model.dart';
import 'package:ssl_commerce_flutter_web/payment.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SSLPayment _payment = SSLPayment();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              _payment.createPayent(Mode.sandbox);
            },
            child: Text("Pay")),
      ),
    );
  }
}
