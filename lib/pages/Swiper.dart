import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SwiperDemoPage extends StatefulWidget {
  const SwiperDemoPage({Key? key}) : super(key: key);

  @override
  State<SwiperDemoPage> createState() => _SwiperDemoPageState();
}

class _SwiperDemoPageState extends State<SwiperDemoPage> {
  List<Map> imgList = [
    {
      "url": "https://www.itying.com/images/flutter/1.png",
    },
    {
      "url": "https://www.itying.com/images/flutter/2.png",
    },
    {
      "url": "https://www.itying.com/images/flutter/3.png",
    },
    {
      "url": "https://www.itying.com/images/flutter/4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("swiperDemo"),
        ),
        // body: Swiper(
        //   itemHeight: 100.0,
        //   itemWidth: 100.0,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Image.network(
        //       imgList[index]["url"],
        //       fit: BoxFit.fill,
        //     );
        //   },
        //   itemCount: imgList.length,
        //   pagination: SwiperPagination(),
        //   control: SwiperControl(),
        // ),

        body: Column(
          children: [
            Container(
              // height: 150,
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemHeight: 100.0,
                  itemWidth: 100.0,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      imgList[index]["url"],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imgList.length,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                  loop:true,
                  autoplay: true,
                ),
              ),
            )
          ],
        ));
  }
}
