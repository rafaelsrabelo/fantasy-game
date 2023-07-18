import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.category, required this.isSelected, required this.onPresed});

  final String category;
  final bool isSelected;
  final VoidCallback onPresed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? Colors.red : Colors.transparent
          ),
          child: Text(
            category, 
            style: TextStyle(
            color: isSelected ? Colors.white : Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: isSelected ? 16 : 14
          ),),
        ),
      ),
    );
  }
}