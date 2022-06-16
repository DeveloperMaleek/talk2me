import 'package:flutter/material.dart';

class TherapistSummary extends StatefulWidget {
  const TherapistSummary({Key? key}) : super(key: key);

  @override
  State<TherapistSummary> createState() => _TherapistSummaryState();
}

class _TherapistSummaryState extends State<TherapistSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Summary page")),
    );
  }
}
