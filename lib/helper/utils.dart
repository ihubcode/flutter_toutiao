class Utils {
  // 获取本地路径图片
  static String getAssetPathImg(String name, {String suffix: 'png'}) {
    return 'static/images/$name.$suffix';
  }
}
