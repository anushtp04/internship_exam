import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabBody;
  final Widget desktopBody;
  const ResponsiveLayout({super.key, required this.mobileBody, required this.tabBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600){
          return mobileBody;
        }
        else if(constraints.maxWidth < 1200){
          return tabBody;
        }
        else{
          return desktopBody;
        }
      },
    );
  }
}