[![Pub Version](https://img.shields.io/pub/v/ripple_image_button)](https://pub.dev/packages/ripple_image_button)


# Deprecated(RippleImageButton) replacement PictureButton
Image Button, has ripple effect
<br/>

PictureButton URL:[https://pub.dev/packages/picture_button](https://pub.dev/packages/picture_button)


<br/>


![KakaoTalk_20231221_141125730](https://github.com/b3lon9/RippleImageButton/assets/119420119/dde22929-ca55-4fc7-9376-18a549dc96dd)

<br/>

Install link : <a href="https://pub.dev/packages/ripple_image_button/install">https://pub.dev/packages/ripple_image_button/install</a>

#### pubspec.yaml
```flutter
dependencies:
  ripple_image_button: ^1.1.3
```

<br />

#### import
```dart
import 'package:ripple_image_button/ripple_image_button.dart';
```

<br/>

#### use
```dart
/// image : AssetImage([LOCAL IMAGE PATH])
/// image : NetworkImage([NETWORK IMAGE PATH])
/// image : FileImage(File([FILE IMAGE PATH]))
RippleImageButton(
  image: AssetImage('example/images/google_sign_image.png'),  // or NetwrokImage
  onTap: () {

  },
),
```
![image](https://github.com/b3lon9/RippleImageButton/assets/119420119/0b927fd2-6b89-4bbf-8ddf-7d44a5b44a46)
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
      width: 200,
      height: 50,
      child: RippleImageButton(
        image: const AssetImage('images/google_sign_image.png'), // or NetworkImage
        onTap: () {},
        width: 50,
        height: 100,
      ),
    ),

    const SizedBox(height: 18,),

    RippleImageButton(
      image: const AssetImage('images/google_sign_image.png'),
      onTap: () {},
      splashColor: Colors.red.withOpacity(0.5),
    ),

    const SizedBox(height: 18),

    RippleImageButton(
      image: const AssetImage('images/google_sign_image.png'),
      onTap: () {},
      width: 200,
      height: 50,
      borderRadius: 30,
    )
  ],
),
```


<br/>

#### parameter
```flutter
ImageProvider image;        // Asset or Network Image
Function onTap;             // function
double width;               // width size
double height;              // height size
EdgeInsetsGeometry margin;  // margin
EdgeInsetsGeometry padding; // padding
double borderRadius;        // border radius size
BoxFit fit;                 // image fit
Color splashColor;          // ripple color
```

<br/>
<br/>


#### LICENSE
```text
MIT License

Copyright (c) 2023 neander of donguran

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
```
