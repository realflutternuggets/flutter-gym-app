
import 'package:flutter/material.dart';
import 'package:work_out/widget/gym_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        GymCategory(imageUrl: 'assets/gym1.png', title: 'CrossFit', color: Color(0xff8e44ad),),
        GymCategory(imageUrl: 'assets/gym2.png', title: 'Fitness', color: Color(0xffe74c3c),),
        GymCategory(imageUrl: 'assets/gym3.png', title: 'Gymnastics', color: Color(0xfff39c12),),
        GymCategory(imageUrl: 'assets/gym4.png', title: 'Aerobics', color: Color(0xff2ecc71),),
      ],
    );
  }
}
