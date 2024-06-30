import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/mobile_screen_layout.dart';
import 'package:flutter_whatsapp_clone/screens/web_screen_layout.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 900) {
         return const WebScreenLayout();
        }
        return const MoibleScreenLayout();
      },
    );
  }
}
