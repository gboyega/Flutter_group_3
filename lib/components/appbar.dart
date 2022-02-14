import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key? key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: const Text(
        "BeFit",
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
