import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talk2me/src/screens/profile/components/anonymous_comp.dart';
import 'package:talk2me/src/screens/profile/components/overview_comp.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'package:talk2me/src/components/inputfield.dart';

int tab = 0;

class ClientProfileTab extends StatefulWidget {
  const ClientProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  State<ClientProfileTab> createState() => _ClientProfileTab();
}

class _ClientProfileTab extends State<ClientProfileTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SizedBox(
        width: double.maxFinite,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TabBar(
              padding: EdgeInsets.only(top: 15),
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  tab = index;
                });
              },
              indicator:
                  const UnderlineTabIndicator(borderSide: BorderSide.none),
              labelPadding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColors.textColorLightBg,
              unselectedLabelColor: AppColors.subtitleTextLightBg,
              isScrollable: true,
              tabs: [
                Tab(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubtitleOne(
                      text: "Overview",
                      textColor: AppColors.textColorLightBg,
                    ),
                    Visibility(
                      visible: tab == 0,
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 70,
                        height: 4,
                        color: AppColors.darkBackground,
                      ),
                    )
                  ],
                )),
                Tab(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubtitleOne(
                      text: "Anonymous",
                      textColor: AppColors.textColorLightBg,
                    ),
                    Visibility(
                      visible: tab == 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 84,
                        height: 4,
                        color: AppColors.darkBackground,
                      ),
                    )
                  ],
                )),
                Tab(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubtitleOne(
                      text: "Settings",
                      textColor: AppColors.textColorLightBg,
                    ),
                    Visibility(
                      visible: tab == 2,
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 60,
                        height: 4,
                        color: AppColors.darkBackground,
                      ),
                    )
                  ],
                ))
              ]),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height -
            //     (MediaQuery.of(context).size.height / 4.5),
            child: Column(children: [
              Visibility(visible: tab == 0, child: OverviewComp()),
              Visibility(visible: tab == 1, child: AnonymousComp()),
              Visibility(visible: tab == 2, child: _settings()),
            ]),
          )
        ]));
  }

  Widget _settings() {
    return Container();
  }
}
