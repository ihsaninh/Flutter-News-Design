import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsapp/latest.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Latest(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      brightness: Brightness.light,
      elevation: 0,
      actions: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/search.svg',
              height: 21.73,
              width: 22,
            ),
          ),
        )
      ],
      leading: Container(
        padding: EdgeInsets.only(left: 10.0),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/hamburger-menu.svg',
            height: 16.8,
            width: 24,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(vertical: 2),
        labelColor: Color(0xff333333),
        unselectedLabelColor: Color(0xffBEC4CD),
        indicatorPadding: EdgeInsets.only(top: 10.0),
        labelStyle: TextStyle(
            fontFamily: 'Nunito Sans',
            fontWeight: FontWeight.w600,
            fontSize: 18),
        indicatorWeight: 4.5,
        indicator: CircleTabIndicator(color: Color(0xff59C2FF), radius: 3),
        tabs: <Widget>[
          Text('Latest'),
          Text('Trends'),
          Text('Music'),
          Text('Style'),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius })
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius + 1);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}