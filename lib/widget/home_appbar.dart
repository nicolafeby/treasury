import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(50.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 4,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Main Page',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 4.h),
          Text(
            'Welcome',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Add',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.black),
          ),
        )
      ],
    );
  }
}
