
import 'package:flutter/material.dart';

class GymCategory extends StatefulWidget {
  final String imageUrl;
  final String title;
  final Color color;

  const GymCategory({Key? key, required this.imageUrl, required this.title, required this.color}) : super(key: key);

  @override
  State<GymCategory> createState() => _GymCategoryState();
}

class _GymCategoryState extends State<GymCategory> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          GestureDetector(
            onTap: ()=> print(widget.title),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: widget.color.withOpacity(.2),
                    spreadRadius: 7,
                    blurRadius: 2,
                    offset: const Offset(6, 0),
                  )
                ]
              ),
              child: Image.asset(widget.imageUrl, width: 30,),
            ),
          ),
          const SizedBox(height: 8,),
          Text(widget.title, style: const TextStyle(
            color: Colors.grey,
          ),)
        ],
      ),
    );
  }
}
