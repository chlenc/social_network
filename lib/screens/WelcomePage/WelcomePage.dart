import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:socialnetwork/components/ScreenTitle.dart';
import 'package:socialnetwork/screens/Wall/Wall.dart';

import 'GetStartedBtn.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  handleOpenHome() {
    Route route = MaterialPageRoute(builder: (context) => Wall());
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/welcome-bg.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(40, 32, 40, 0),
                  child: Column(
                    children: <Widget>[
                      ScreenTitle(text: 'The best photos\nfrom good people'),
                      SizedBox(height: 32),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                Expanded(
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        'assets/images/welcome-pic-1.png',
                        fit: BoxFit.fitWidth,
                        width: MediaQuery.of(context).size.width * 0.7,
                      );
                    },
                    itemCount: 3,
                    pagination: pagination,
                  ),
                ),
                GetStartedBtn(onClick: handleOpenHome),
              ],
            ),
          )),
    );
  }
}


var pagination = SwiperCustomPagination(
    builder: (BuildContext context, SwiperPluginConfig config) => Padding(
      padding: EdgeInsets.only(left: 40),
      child: Row(
          children: Iterable.generate(config.itemCount)
              .map((i) => Round(
            key: ValueKey(i.toString()),
            selected: i == config.activeIndex,
          ))
              .toList()),
    ));


class Round extends StatelessWidget {
  Round({Key key, this.selected = false}) : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.only(right: 12),
        child: CircleAvatar(
          radius: 6,
          backgroundColor: Color.fromRGBO(160, 103, 132, selected ? 1 : 0.16),
          child: null,
        ),
      );
}
