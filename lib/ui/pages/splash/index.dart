/// SplashPage分为四层，默认启动图，引导图，广告图，倒计时跳过
///
/// 使用status来控制页面显示状态，status=0显示启动图，status=1显示广告图和倒计时跳过，status=2显示引导图
///

import 'package:flutter/material.dart';
import '../../../helper/utils.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Offstage(
            offstage: false,
            child: _buildSplashBg(),
          ),
        ],
      ),
    );
  }

  // 启动图
  Widget _buildSplashBg() {
    return Image.asset(Utils.getAssetPathImg('splash_bg'),
        width: double.infinity, height: double.infinity, fit: BoxFit.fill);
  }
}
