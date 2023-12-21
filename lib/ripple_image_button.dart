library ripple_image_button;

import 'package:flutter/material.dart';

class RippleImageButton extends StatelessWidget {
  RippleImageButton({
    super.key,
    required ImageProvider image,
    required this.width,
    required this.height,
    required Function() onTap,
    this.borderRadius = 0.0,
    this.fit = BoxFit.cover,
    this.splashColor,
  }):
        _image = image,
        _onTap = onTap;

  final ImageProvider _image;
  final double width;
  final double height;
  final Function() _onTap;
  double borderRadius;
  BoxFit fit;
  Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            image: _image,
            fit: fit,
          )
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: splashColor,
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: _onTap,
          child: SizedBox(
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
