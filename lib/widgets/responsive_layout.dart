import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? mobileBody;
  final Widget? tabBody;
  final Widget? desktopBody;
  const ResponsiveLayout({super.key,  this.mobileBody,  this.tabBody,  this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600){
          return mobileBody ?? Scaffold(
            body: Center(child: Text("Mobile Body"),),
          );
        }
        else if(constraints.maxWidth < 1200){
          return tabBody ?? Scaffold(
            body: Center(child: Text("Tab Body"),),
          );
        }
        else{
          return desktopBody ?? Container(child: Center(child: Text("Mobile Body"),),);
        }
      },
    );
  }
}