import 'package:flutter/material.dart';

class RowImages extends StatelessWidget {
  const RowImages({
    Key? key,
    required this.image1,
    required this.image2,
  }) : super(key: key);
  final String image1;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 75.0,
          height: 75.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            child: Image.asset(
              image1,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 4.0,
        ),
        Container(
          width: 75.0,
          height: 75.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            child: Image.asset(
              image2,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
