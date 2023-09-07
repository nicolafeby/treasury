import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomContainer(title: 'C1'),
          SizedBox(width: 15.h),
          const CustomContainer(title: 'C2'),
          SizedBox(width: 15.h),
          const CustomContainer(title: 'C3'),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final containerSize = getContainerSize(context);

    return Container(
      width: containerSize,
      height: containerSize,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}

double getContainerSize(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final containerSize = (screenWidth / 3) - 20;

  return containerSize;
}
