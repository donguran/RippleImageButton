library ripple_image_button;

import 'package:flutter/material.dart';

/// [RippleImageButton]
/// required parameters are [_image], [width], [height], [_onTap]
///
/// [_image] : AssetImage('assets/example/image.png') or
/// [_image] : NetworkImage('https://example.com/image.png')
///
/// [borderRadius] is measure shape's radius.
/// [fit] is image's auto size in container
/// [splashColor] is tab color, if you tab on [ImageRippleButton] it will be
/// show to ripple effect
class RippleImageButton extends StatelessWidget {
  const RippleImageButton({
    super.key,
    required ImageProvider image,
    required this.width,
    required this.height,
    required Function() onTap,
    this.borderRadius = 0.0,
    this.fit = BoxFit.cover,
    this.splashColor,
  })  : _image = image,
        _onTap = onTap;

  final ImageProvider _image;
  final double width;
  final double height;
  final Function() _onTap;
  final double borderRadius;
  final BoxFit fit;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(
          image: _image,
          fit: fit,
        ),
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
