import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/views/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
        ),
        CustomSearchIcon()
      ],
    );
  }
}

