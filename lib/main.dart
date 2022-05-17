import 'package:flutter/material.dart';
import 'package:talk2me/my_app.dart';
import 'package:provider/provider.dart';
import 'package:talk2me/src/static/strings.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => booloi(), child: const MyApp()));
}
