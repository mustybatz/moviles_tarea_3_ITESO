import 'package:flutter/material.dart';

class ItemActividad extends StatefulWidget {
  final int day;
  final String title;
  final String image;

  ItemActividad(
      {Key? key, required this.day, required this.title, required this.image})
      : super(key: key);

  @override
  _ItemActividadState createState() => _ItemActividadState();
}

class _ItemActividadState extends State<ItemActividad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.image), fit: BoxFit.cover),
            ),
          ),
          Text("Day ${widget.day}", style: TextStyle(fontSize: 11)),
          Text("${widget.title}"),
        ],
      ),
    );
  }
}
