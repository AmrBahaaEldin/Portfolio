import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EasyImageSvg extends StatelessWidget {
  const EasyImageSvg({
    super.key,
    this.height,
    this.width,
    required this.image,
  });

  final double? height;

  final double? width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      height: height ?? 59.h,
      width: width ?? 59.w,
    );
  }
}
