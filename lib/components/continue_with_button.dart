import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class ContinueWith extends StatefulWidget {
  final String? continueWithImage;
  final String? methodName;
  final double? imageHeight;
  const ContinueWith(
      {super.key,
      required this.continueWithImage,
      required this.methodName,
      required this.imageHeight});

  @override
  State<ContinueWith> createState() => _ContinueWithState();
}

class _ContinueWithState extends State<ContinueWith> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.7.h, horizontal: 10.w),
      child: Container(
        width: 100.w,
        height: 5.h,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadiusDirectional.circular(12),
            border: Border.all(color: Colors.grey)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  '${widget.continueWithImage}',
                  height: widget.imageHeight!.h,
                ),
                Text(
                  'Continue with ${widget.methodName}',
                  style: const TextStyle(color: Colors.grey),
                ),
                Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
