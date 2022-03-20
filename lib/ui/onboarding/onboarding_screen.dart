import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:talk2me/constants/text_styles.dart' as text_content;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late Size _size;
  // double _appBarSize;
  int _nosofPages = 3;
  int _currentPage = 0;
  PageController _controller = PageController(initialPage: 0);

  List<Widget> _buildIndicators() {
    List<Widget> wList = [];
    for (int i = 0; i < _nosofPages; i++) {
      wList.add((i == _currentPage) ? _indicator(true) : _indicator(false));
    }
    return wList;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 8.0,
      width: 32.0,
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: isActive
              ? AppColors.greenBackground
              : AppColors.subtitleTextLightBg,
          borderRadius: const BorderRadius.all(Radius.circular(12.0))),
    );
  }

  void _setPageState(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    // _appBarSize = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            height: _size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(
                  "assets/images/image-bg-1.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PageView(
                controller: _controller,
                onPageChanged: (value) => _setPageState(value),
                physics: const ClampingScrollPhysics(),
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      text_content.HeadingSix(
                        text: 'Copy Text specific to users',
                        textColor: AppColors.textColorDarkBg,
                      ),
                      SizedBox(height: 16.0),
                      text_content.SubtitleOne(
                        text: 'Subcopy Text specific to client',
                        textColor: AppColors.textColorDarkBg,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      text_content.HeadingSix(
                        text: 'Copy Text specific to users',
                        textColor: AppColors.textColorDarkBg,
                      ),
                      SizedBox(height: 16.0),
                      text_content.SubtitleOne(
                        text: 'Subcopy Text specific to client',
                        textColor: AppColors.textColorDarkBg,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      text_content.HeadingSix(
                        text: 'Copy Text specific to users',
                        textColor: AppColors.textColorDarkBg,
                      ),
                      SizedBox(height: 16.0),
                      text_content.SubtitleOne(
                        text: 'Subcopy Text specific to client',
                        textColor: AppColors.textColorDarkBg,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: _size.height * 0.05,
            margin: EdgeInsets.fromLTRB(0, _size.height * 0.95, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicators(),
            ),
          ),
          Container(
            child: Expanded(
              child: Container(
                height: _size.height * 0.3,
                margin: EdgeInsets.fromLTRB(20, _size.height * 0.65, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    button.FilledButton(
                      buttonText: "Create an Account",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    button.OutlineButton(
                        buttonText: "Join with organization code",
                        buttonTextColor: AppColors.primaryColor,
                        outlineColor: AppColors.primaryColor,
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
