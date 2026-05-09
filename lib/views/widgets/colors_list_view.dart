import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isEdit, required this.color});
final bool isEdit;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isEdit ?    CircleAvatar(
      backgroundColor: Colors.white,
      radius: 40,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    )     :  CircleAvatar(
      radius: 40,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
    int currentIndex = 0;
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple,
      Colors.pink,
      Colors.orange,
      Colors.teal,
      Colors.brown,
      Colors.grey
    ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40*2,
      child: ListView.builder(
        itemCount: colors.length,
          scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child:  GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: colors[index],
                isEdit: currentIndex == index ,
              ),
            ),
          );
        },
        ),
    );
  }
}