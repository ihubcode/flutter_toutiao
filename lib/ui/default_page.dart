import 'package:flutter/material.dart';
import './toutiao_icons.dart';
import './pages/home/index.dart' as homePage;
import './pages/watermelon_video/index.dart' as watermelonVideoPage;
import './pages/small_video/index.dart' as smallVideoPage;
import './pages/member/index.dart' as memberPage;

class DefaultPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<DefaultPage> {
  // 底部菜单
  final List<BottomNavigationBarItem> bottomNavsList = [
    BottomNavigationBarItem(icon: Icon(Toutiao.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Toutiao.shipin), title: Text('西瓜视频')),
    BottomNavigationBarItem(
        icon: Icon(Toutiao.shoujishipin), title: Text('小视频')),
    BottomNavigationBarItem(icon: Icon(Toutiao.mmyy), title: Text('未登录')),
  ];

  // 底部菜单路由页
  final List bottomNavsPages = [
    homePage.IndexPage(),
    smallVideoPage.IndexPage(),
    watermelonVideoPage.IndexPage(),
    memberPage.IndexPage()
  ];

  int currentPageIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = bottomNavsPages[currentPageIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '今日头条',
          textAlign: TextAlign.center,
        ),
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 18.0,
        currentIndex: currentPageIndex,
        items: bottomNavsList,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
            currentPage = bottomNavsPages[currentPageIndex];
          });
        },
      ),
    );
  }
}
