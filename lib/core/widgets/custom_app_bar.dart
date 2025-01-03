import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, this.toolBarHeight, this.actions, this.leading, this.title});
  final double? toolBarHeight;
  final List<Widget>? actions;
  final Widget? leading;
  final Text? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      toolbarHeight: toolBarHeight,
      actions: actions,
      leading: leading,
      leadingWidth: 100,
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
