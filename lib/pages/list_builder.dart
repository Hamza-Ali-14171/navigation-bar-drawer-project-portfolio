import 'package:flutter/material.dart';
import 'abc.dart';

class ListBuilder extends StatelessWidget {
  final Axis scrollDirection;
  final int itemCount;
  final Color color;

  const ListBuilder({
    super.key,
    required this.scrollDirection,
    required this.color,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: color),
        );
      },
    );
  }
}
