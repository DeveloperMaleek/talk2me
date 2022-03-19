import 'package:flutter/material.dart';

class ClientSafeSpace extends StatefulWidget {
  const ClientSafeSpace({Key? key}) : super(key: key);

  @override
  State<ClientSafeSpace> createState() => _ClientSafeSpaceState();
}

class _ClientSafeSpaceState extends State<ClientSafeSpace> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is client safe space"));
  }
}
