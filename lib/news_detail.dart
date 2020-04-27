import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Hero(
                    tag: 'gambar',
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                      child: Image(
                        height: 400,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/rumah1.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/images/arrow_left.svg',
                        width: 20,
                        height: 15.67,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    right: 40,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            blurRadius: 20.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/like.svg', 
                          height: 20, 
                          width: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Beautiful House in Malang",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff333333),
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 35,
                            width: 35,
                            image: AssetImage('assets/images/cewek1.png'
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'by Lynne William',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'January 23, 2019',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Orci porta non pulvinar neque laoreet suspendisse. Id nibh tortor id aliquet. Dui sapien eget mi proin.",
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Viverra vitae congue eu consequat ac felis donec. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Vulputate mi sit amet mauris commodo quis imperdiet. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Sit amet cursus sit amet dictum sit amet justo.",
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Mattis pellentesque id nibh tortor. Sed blandit libero volutpat sed cras ornare arcu dui. Fermentum et sollicitudin ac orci phasellus. Ipsum nunc aliquet bibendum enim facilisis gravida. Viverra suspendisse potenti nullam ac tortor. Dapibus ultrices in iaculis nunc sed. Nisi porta lorem mollis aliquam ut porttitor leo a.",
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ), 
          ],
        ),
      )
    );
  }
}