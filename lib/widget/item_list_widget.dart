import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemList extends StatefulWidget {
  const CustomItemList({super.key});

  @override
  State<CustomItemList> createState() => _CustomItemListState();
}

class _CustomItemListState extends State<CustomItemList> {
  List<String> items = List.generate(20, (index) => 'Menu ${index + 1}');
  int selectedItemIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
          ),
          margin: EdgeInsets.all(8.r),
          child: ExpansionPanelList(
            expandedHeaderPadding: const EdgeInsets.all(0),
            elevation: 1,
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                if (isExpanded) {
                  selectedItemIndex = -1;
                } else {
                  selectedItemIndex = index;
                }
              });
            },
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text(
                      item,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  );
                },
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                        height: 1.0, color: Colors.black), // Add a line
                    Padding(
                      padding: EdgeInsets.all(16.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name $item',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Address $item',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                isExpanded: selectedItemIndex == index,
              ),
            ],
          ),
        );
      }).toList(),
    ));
  }
}
