import 'package:flutter/material.dart';

class ClientTherapy extends StatefulWidget {
  const ClientTherapy({Key? key}) : super(key: key);

  @override
  State<ClientTherapy> createState() => _ClientTherapyState();
}

class _ClientTherapyState extends State<ClientTherapy> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("This is client therapy page"),
    );
  }
}
