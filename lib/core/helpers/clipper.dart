

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipperAuth extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    double w = size.width;
     
    double h = 780.h;
    path_0.moveTo(0, 0);
    path_0.lineTo(0, h * 0.38);
    path_0.lineTo(w * 0.1, h * 0.38);
    path_0.lineTo(w * 0.2, h * 0.15);
    path_0.lineTo(w, 0);
    path_0.lineTo(0, 0);
    path_0.close();


    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


class ClipperOnboarding extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    double w = size.width;
   
    double h = size.height;
    path_0.moveTo(0, 0);
    path_0.lineTo(0, h * 0.3);
    path_0.lineTo(w * 0.2, h * 0.3);
    path_0.lineTo(w, 0);
    path_0.lineTo(0, 0);
    path_0.close();


   
    
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

