import 'package:flutter/material.dart';
import 'package:flutter_jdshop/services/ScreenAdapter.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/slide01.jpg"},
    {"url": "https://www.itying.com/images/flutter/slide02.jpg"},
    {"url": "https://www.itying.com/images/flutter/slide03.jpg"},
  ];

  //轮播图
  Widget _swiperWidget() {
    return Container(
      child: AspectRatio(
        //轮播图宽高比
        aspectRatio: 2 / 1,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              imgList[index]['url'],
              fit: BoxFit.fill,
            );
          },
          itemCount: imgList.length,
          pagination: new SwiperPagination(),
          autoplay: true, //自动轮播
        ),
      ),
    );
  }

  //猜你喜欢，热门推荐
  Widget _titleWidget(value) {
    return Container(
      height: ScreenAdapter.height(55),
      margin: EdgeInsets.only(left: ScreenAdapter.width(20)),
      padding: EdgeInsets.only(left: ScreenAdapter.width(20)),
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
          color: Colors.red,
          width: ScreenAdapter.width(10),
        )),
      ),
      child: Text(
        value,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }

  //热门商品
  Widget _hotProductListWidget() {
    return Container(
      height: ScreenAdapter.height(310),
      padding: EdgeInsets.all(ScreenAdapter.width(20)),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  height: ScreenAdapter.height(200),
                  width: ScreenAdapter.width(160),
                  margin: EdgeInsets.only(right: ScreenAdapter.width(20)),
                  child: Image.network(
                      "https://www.itying.com/images/flutter/hot${index + 1}.jpg",
                      fit: BoxFit.cover),
                ),
                Container(
                  padding: EdgeInsets.only(top: ScreenAdapter.height(10)),
                  height: ScreenAdapter.height(60),
                  child: Text("第${index}条"),
                )
              ],
            );
          }),
    );
  }

  //推荐商品
  _recProductItemWidget() {
    var itemWidth =
        (ScreenAdapter.getScreenWidth() - ScreenAdapter.width(30)) / 2;
    return Container(
      padding: EdgeInsets.all(ScreenAdapter.width(10)),
      width: itemWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width: ScreenAdapter.width(1),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: AspectRatio(
              //防止服务器返回的图片大小不一致导致高度不一致问题
              aspectRatio: 1 / 1,
              child: Image.network(
                "https://www.itying.com/images/flutter/list1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenAdapter.height(20)),
            child: Text(
              '2019夏季新款气质高贵洋气阔太太有女人味中长款宽松大码',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenAdapter.height(20)),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "¥188.0",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "¥198.0",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Center(
      child: ListView(
        children: <Widget>[
          _swiperWidget(),
          SizedBox(
            height: ScreenAdapter.height(20),
          ),
          _titleWidget('猜你喜欢'),
          SizedBox(
            height: ScreenAdapter.height(20),
          ),
          _hotProductListWidget(),
          _titleWidget('热门推荐'),
          Container(
            padding: EdgeInsets.all(ScreenAdapter.width(10)),
            child: Wrap(
              spacing: ScreenAdapter.width(10),//中间距离
              runSpacing:ScreenAdapter.width(10) ,//每行间隔
              children: <Widget>[
                _recProductItemWidget(),
                _recProductItemWidget(),
                _recProductItemWidget(),
                _recProductItemWidget(),
                _recProductItemWidget(),
                _recProductItemWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
