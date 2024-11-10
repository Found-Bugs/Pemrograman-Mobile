import 'package:flutter/material.dart';

class FilterSelector extends StatelessWidget {
  final List<Color> filters;
  final ValueChanged<Color> onFilterChanged;

  const FilterSelector({
    super.key,
    required this.filters,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.black.withOpacity(0.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final color = filters[index];
          return GestureDetector(
            onTap: () => onFilterChanged(color),
            child: Container(
              width: 70.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
