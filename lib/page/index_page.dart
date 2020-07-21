import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/page/category_page.dart';
import 'package:flutterdemo/page/mine_page.dart';
import 'package:flutterdemo/page/shop_page.dart';
import 'home_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _indexPageState createState() => _indexPageState();
}

class _indexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('个人中心')),
  ];

  final List<Widget> tabBodies = [
    HomePage(),
    CategoryPage(),
    ShopPage(),
    MinePage()
  ];
  int currentIndex = 0;
  var currentPage;

  /**
   *
   *说明：初始化类似 create
   *创建时间： 2020/7/21 0021 10:31
   *@author winelx
   */
  @override
  void initState() {
  currentPage=tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(224,245,245,1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        //单击事件
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage=tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
