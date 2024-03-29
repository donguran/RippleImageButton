library ripple_image_button;

/** MIT License

Copyright (c) 2023 nenader of donguran

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
 * */

import 'package:flutter/material.dart';

///
/// RippleImageButton will supply on touch ImageButton with ripple effect.
/// almost thinks include image and wrapped InkWell Widget.
/// but that will not bring you want expect.
///
/// if you will use RippleImageButton.
/// it will bring you want expect the ripple effect motion.
///
/// I want help to you:)
class RippleImageButton extends StatelessWidget {
  ///
  /// required parameters are [image] or [onTap] Function.
  ///
  /// else things have default value.
  const RippleImageButton({
    super.key,
    required Function() onTap,
    required ImageProvider image,
    this.width,
    this.height = 50.0,
    this.margin,
    this.padding,
    this.constraints,
    this.borderRadius = 0.0,
    this.fit = BoxFit.fitWidth,
    this.splashColor,
  })  : _image = image,
        _onTap = onTap;

  /// ImageProvider
  /// [_image] : AssetImage('[IMAGE ASSET PATH]')
  /// [_image] : NetworkImage('[IMAGE NETWORK PATH]')
  /// [_image] : FileImage(File('[IMAGE FILE PATH]'))   // import 'dart:io';
  final ImageProvider _image;

  /// [_onTap] : Function() type.
  /// [_onTap] have touch event.
  /// and you want play in this.
  final Function() _onTap;

  /// [width], [height] properties are double type.
  /// If you don't define there.
  /// they inference parents size.
  ///
  /// also if parents size is not define.
  /// [width], [height] properties have default value.
  ///
  /// [width] has default value 200.0.
  /// [height] has default value 50.0.
  ///
  /// if you don't want apply default value.
  /// you should define MediaQuery.of(context).size.width/height.
  /// of define parents widget's size.
  final double? width;
  final double? height;

  /// [margin], [padding] are control by EdgeInsets class.
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  /// [constraints] can control min, max size.
  /// I used LayoutBuilder, so [constraints] should not use.
  @Deprecated("Not used this.")
  final BoxConstraints? constraints;

  /// [borderRadius] can control corner radius.
  /// if it case 10 -> small.
  /// if it case 50 -> half circle.
  /// if it case 100 -> circle.
  ///
  /// you should try it into many variable values.
  /// until you want result.
  ///
  /// don't worry.
  /// flutter have hot-reload:)
  ///
  /// default value = 0.0;
  final double borderRadius;

  /// [fit] is [image] cover size.
  /// [BoxFit] fill, contain, cover (etc)
  ///
  /// default value = BoxFit.fitWidth
  /// if it don't resize height so change BoxFit.cover.
  final BoxFit fit;

  /// [splashColor] is ripple effect color after [onTap].
  /// if you touch on [RippleImageButton]
  /// so it will be change ripple effect color little time.
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: margin,
        padding: padding,
        constraints: constraints,
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
              width: width ?? constraints.maxWidth,
              height: height,
            ),
          ),
        ),
      ),
    );
  }
}
