import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MarketingCarousel extends StatefulWidget {
  MarketingCarousel() : super();

  @override
  MarketingCarouselState createState() => MarketingCarouselState();
}

class MarketingCarouselState extends State<MarketingCarousel> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    {
      "color": Colors.red,
      "img": "assets/Images/offer2.png",
      "offerText1": "Get Discount on",
      "offerText2": "Air India Flights",
      "offerPersent": 30
    },
    {
      "color": Colors.black,
      "img": "assets/Images/offer1.png",
      "offerText1": "Pay your tax with",
      "offerText2": "udChalo and get discount",
      "offerPersent": 15
    },
    {
      "color": Colors.amber,
      "img": "assets/Images/offer2.png",
      "offerText1": "Pay using paytm and",
      "offerText2": "get cashback",
      "offerPersent": 50
    },
    {
      "color": Colors.lightGreen,
      "img": "assets/Images/offer1.png",
      "offerText1": "Get Discount on your",
      "offerText2": "first cab booking",
      "offerPersent": 10
    }
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          carouselSlider = CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              initialPage: 0,
              enlargeCenterPage: false,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, _) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          imgUrl["color"],
                          imgUrl["color"].withOpacity(0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Special Offer for you",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                imgUrl['offerText1'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                imgUrl['offerText2'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${imgUrl['offerPersent']}%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "BOOK NOW",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(imgUrl['img'])
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          /* SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.blue.shade900
                      : Colors.blue.shade100,
                ),
              );
            }),
          ), */
        ],
      ),
    );
  }
}
