import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treasury/widget/cusom_container_widget.dart';
import 'package:treasury/widget/home_appbar.dart';
import 'package:treasury/widget/item_list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = List.generate(20, (index) => 'Menu ${index + 1}');
  int selectedItemIndex = -1;

  PreferredSizeWidget _buildAppbar() => const HomeAppbar();

  Widget _buildBody() {
    return Column(
      children: [
        SizedBox(height: 15.h),
        const ContainerRow(),
        SizedBox(height: 15.h),
        const CustomItemList()
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }
}
