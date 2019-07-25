//首页推荐

import 'package:flutter/material.dart';
import '../widgets/banners/banner_view.dart';
import '../styles.dart';

class HomeLayout extends StatelessWidget {
  final List<String> datas = <String>[];

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery
        .of(context)
        .size
        .width;
    List<Widget> _banners = <Widget>[
      Image.network(
          'https://cn.bing.com/th?id=OIP.l8-eQW5mVWLghYzLJELhqAHaEK&pid=Api&rs=1',
          fit: BoxFit.cover),
      Image.network('https://img1.3lian.com/2015/w12/61/d/41.jpg',
          fit: BoxFit.cover),
    ];

    Widget _getIconButton(String value, IconData icon) {
      return Center(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(icon),
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 28.0),
            ),
            Text(value, style: title12)
          ],
        ),
      );
    }

    List<Widget> _getListWidgets() {
      for (int i = 0; i < 10; i++) {
        datas.add(i.toString());
      }
      List<Widget> list = <Widget>[];
      datas.forEach((str) {
        list.add(Container(
          child: Column(
            children: <Widget>[
              Image.network(
                'https://img.idol001.com/origin/2016/08/03/9185d5b096da894726228d7917aac0aa1470233944_watermark.jpg',
                width: sWidth / 2.5,
                height: sWidth / 2.5,
              ),
              Text('无敌大米'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('¥110'),
                  IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {

                  })
                ],
              )
            ],
          ),
        ));
      });
      return list;
    }
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          //1banner
          Container(
            alignment: Alignment.center,
            height: 180,
            child: BannerView(_banners),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _getIconButton('发现', Icons.find_in_page),
                  _getIconButton('关于我们', Icons.people),
                  _getIconButton('农业政策', Icons.restore_page),
                  _getIconButton('农业交流', Icons.videocam),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(
                  height: 1,
                  color: Colors.grey[350],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(
                    '新品推荐',
                    style: title12,
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.grey[350],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
