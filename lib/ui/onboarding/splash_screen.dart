import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/gradient.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/utils/device_utils.dart';
import 'package:talk2me/constants/dimens.dart';
=======
import 'package:talk2me/widgets/buttons/green_filled_btn.dart';
>>>>>>> 70237add6af623d0e7a22920a509c173ce75fb2d

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    final screenWidth = DeviceUtils.getScaledWidth(context, 1);
    final screenHeight = DeviceUtils.getScaledHeight(context, 1);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GradientBg(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                Strings.appName,
                style: TextStyle(color: AppColors.textColorLightBg),
              ),
              Text(
                'This is a safe space',
                style: TextStyle(color: AppColors.subtitleTextDarkBg),
              )
            ],
          ),
        ],
=======
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
>>>>>>> 70237add6af623d0e7a22920a509c173ce75fb2d
      ),
    );
  }
}
