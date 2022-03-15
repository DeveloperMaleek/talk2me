import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/dimens.dart';

class GreenFilledBtn extends StatelessWidget {
  final Color? backgroundColor;
  final Text? buttonText;
  final Function? onPressed;

  GreenFilledBtn(
      {Key? key, this.backgroundColor, this.buttonText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
                overlayColor:
                    MaterialStateProperty.all<Color>(AppColors.primaryColor),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.primaryColor50),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                      fontSize: Dimens.textSizeButton,
                      fontWeight: FontWeight.w500),
                
                    
                      
                ),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: buttonText,
                  ),
                ],
              ),
              onPressed: () => onPressed!(),
            ),
          ),
        ],
      ),
    );
  }
}
