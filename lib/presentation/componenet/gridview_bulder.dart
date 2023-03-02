import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/styles.dart';

class GredviewPage extends StatefulWidget {
  final int itemCount;
  const GredviewPage({super.key, required this.itemCount});

  @override
  State<GredviewPage> createState() => _GredviewPageState();
}

class _GredviewPageState extends State<GredviewPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 200,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            width: 168.w,
            height: 262,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 50,
                    offset: Offset(0, 6),
                    color: Color(0xff5A6CEA).withOpacity(0.08))
              ],
              color: Styles.primaryColor,
            ),
            child: Column(
              children: [
                8.verticalSpace,
                Text(
                  'test',
                ),
              ],
            ),
          );
        });
  }
}
