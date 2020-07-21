import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/page/index_page.dart';

//void main(){
//  runApp(MyApp());
//}
void main(){
  runApp(MyApp());
  if (Platform.isAndroid) {
// 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

//自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'appbar',
      theme: ThemeData(
        //状态栏颜色
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        body: IndexPage(),
      ),

    );
  }

}

