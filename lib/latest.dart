import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsapp/news_detail.dart';

class Latest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(18.0),
        child: ListView(
          children: <Widget>[
            CardStack(),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 100),
              child: Text(
                'Recommend',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 16),
              height: 130,
              decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  blurRadius: 20.0),
                ]
              ),
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/rumah3.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(top: 14, left: 12),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                    child: Image(
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/cewek2.jpg'),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'by Lynne William',
                                        style: TextStyle(
                                          fontFamily: 'Nunito Sans',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'January 23, 2019',
                                        style: TextStyle(
                                          fontFamily: 'Nunito Sans',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Amazing Decorative House',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0
                                ),
                              )
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 6.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur...',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 12.0
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(top: 20, right: 20),
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset('assets/images/like.svg'),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              height: 130,
              decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  blurRadius: 20.0),
                ]
              ),
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Image(
                          height: 100,
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/eskrim.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(top: 14, left: 12),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                    child: Image(
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/cewek3.jpeg'),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'by Seren Shanee',
                                        style: TextStyle(
                                          fontFamily: 'Nunito Sans',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'January 23, 2019',
                                        style: TextStyle(
                                          fontFamily: 'Nunito Sans',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Ice Cream to Happy day',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0
                                ),
                              )
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 6.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur...',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 12.0
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(top: 20, right: 20),
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset('assets/images/like_outline.svg'),
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

class CardStack extends StatelessWidget {
  const CardStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          height: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetail()));
              },
              child: Container(
                child: Hero(
                  tag: 'gambar',
                  child: Image(
                    image: AssetImage('assets/images/rumah1.jpg'),
                  ),
                ),
              ),
            )
          ),
        ),
        Positioned(
          bottom: -80,
          left: 15,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  blurRadius: 20.0,
                ),
              ]
            ),
            child: Card(
              elevation: 0,
              child: Container(
                padding: EdgeInsets.all(15.0),
                width: 310,
                height: 140,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image(
                            height: 35, 
                            width: 35, 
                            image: AssetImage('assets/images/cewek1.png'),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'by Lynne William',
                                    style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'January 23, 2019',
                                    style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: SvgPicture.asset('assets/images/like.svg')
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Beautiful House in Malang',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                        ),
                      )
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 6.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur...',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 12.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
