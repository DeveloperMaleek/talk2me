import 'package:flutter/material.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => booloi(), child: const MyApp()));
}
